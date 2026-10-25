import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const p=JSON.parse(readFileSync('reviewed-source.json'));
assert.equal(p.base,'80f846df699e2cbef2357ac27f46c97463f35472');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>{const r=JSON.parse(run('calcit',['calcit.cirru','query',...a,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
function views(){const namespaces=[],defs=[];for(const n of q('ns').namespaces){const info=q('ns',n);namespaces.push(info);const names=run('calcit',['calcit.cirru','query','defs',n]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const d of names)defs.push(q('def',n+'/'+d));}return {config:q('config'),namespaces,defs};}
const expected=structuredClone(norm(p.before)),sites=[];
const aliases={'option:unwrap-or':'.unwrap-or','option:some?':'.some?','count':'.len'};
const allowed={'app.comp.viewer/by-latest-task':4,'app.comp.viewer/comp-day-card':1,'app.comp.viewer/comp-viewer':1,'app.config/dev?':1,'app.main/ssr?':1};
function migrate(node,path,id){if(!Array.isArray(node)||['quote','quasiquote',';','comment','defmacro'].includes(node[0]))return;const dest=aliases[node[0]];if(dest){assert.ok(Object.hasOwn(allowed,id));assert.equal(node.length,node[0]==='option:unwrap-or'?3:2);sites.push({id,path,before:node[0],after:dest});node[0]=dest;}node.forEach((x,i)=>migrate(x,[...path,i],id));}
for(const d of expected.defs)migrate(d.code,[],d.id);
assert.deepEqual(Object.fromEntries(Object.keys(allowed).map(id=>[id,sites.filter(s=>s.id===id).length])),allowed);assert.equal(sites.length,8);
assert.equal(sites.filter(s=>s.before==='count').length,2);assert.equal(sites.filter(s=>s.before==='option:unwrap-or').length,5);assert.equal(sites.filter(s=>s.before==='option:some?').length,1);
const blob=()=>run('git',['hash-object','calcit.cirru']).trim();mkdirSync('acceptance',{recursive:true});
if(process.argv[2]==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));
 const operations=sites.map(s=>['tree','replace',s.id,'--path','@'+[...s.path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify(s.after)]);
 writeFileSync('acceptance/expected-source.json',JSON.stringify(expected));writeFileSync('acceptance/operations.json',JSON.stringify(operations));
 const args=['calcit.cirru','edit','transaction','--file','acceptance/operations.json','--format','json'];const dry=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(dry.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(dry));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',dry.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());
}else assert.equal(process.argv[2],'verify');
assert.deepEqual(views(),expected);assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));
for(const[f,s]of Object.entries(p.manifests))assert.equal(readFileSync(f,'utf8'),s);
run('git',['diff','--exit-code',p.base,'--','.github/workflows/upload.yaml','Agents.md','README.md','llms','tests']);
writeFileSync('acceptance/source-evidence.json',JSON.stringify({beforeBlob:p.blob,afterBlob:blob(),sites,definitions:69,attachedTests:0,fullSourceViewsMatch:true,manifestsTestsWorkflowUnchanged:true}));
