
{} (:package |app)
  :configs $ {} (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1526142656380) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142658337) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1526142658598) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142660011) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1526142660790) (:by |root) (:text |store)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580068234) (:by |root) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580071430) (:by |root) (:text |str-spaced)
                                  |j $ %{} :Leaf (:at 1667580073229) (:by |root) (:text |css/global)
                                  |n $ %{} :Leaf (:at 1667580075358) (:by |rJG4IHzWf) (:text |css/fullscreen)
                                  |r $ %{} :Leaf (:at 1667580077227) (:by |root) (:text |css/column)
                      |m $ %{} :Expr (:at 1526142646067) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580046961) (:by |rJG4IHzWf) (:text |case-default)
                          |j $ %{} :Expr (:at 1526142648058) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142649002) (:by |root) (:text |:name)
                              |j $ %{} :Leaf (:at 1526142664443) (:by |root) (:text |router)
                          |n $ %{} :Expr (:at 1667580050436) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580050436) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Leaf (:at 1667580050436) (:by |rJG4IHzWf) (:text |router)
                          |r $ %{} :Expr (:at 1526142665060) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142667536) (:by |root) (:text |:home)
                              |j $ %{} :Expr (:at 1526142770743) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526142773139) (:by |root) (:text |comp-editor)
                                  |b $ %{} :Expr (:at 1629306269651) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629306270509) (:by |rJG4IHzWf) (:text |>>)
                                      |T $ %{} :Leaf (:at 1526143067156) (:by |root) (:text |states)
                                      |j $ %{} :Leaf (:at 1629306271356) (:by |rJG4IHzWf) (:text |:editor)
                                  |j $ %{} :Expr (:at 1526142796422) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526142797302) (:by |root) (:text |:content)
                                      |j $ %{} :Leaf (:at 1526142798097) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1526142674509) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142680542) (:by |root) (:text |:viewer)
                              |j $ %{} :Expr (:at 1526142850284) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526142853979) (:by |root) (:text |comp-viewer)
                                  |j $ %{} :Expr (:at 1526142854460) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526142856331) (:by |root) (:text |:content)
                                      |j $ %{} :Leaf (:at 1526142857183) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1526142294815) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142297760) (:by |root) (:text |comp-nav)
                          |j $ %{} :Expr (:at 1527094654122) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1527094655539) (:by |root) (:text |:name)
                              |j $ %{} :Leaf (:at 1527094657870) (:by |root) (:text |router)
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1629306263617) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629306264684) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1629306265573) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306252147) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306245435) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1629306257674) (:by |root) (:text |>>)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1667579820720) (:by |rJG4IHzWf) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1526142301823) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526142310226) (:by |root) (:text |app.comp.nav)
                    |r $ %{} :Leaf (:at 1526142310973) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142311227) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1526142313110) (:by |root) (:text |comp-nav)
                |yv $ %{} :Expr (:at 1526142301823) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526142779455) (:by |root) (:text |app.comp.editor)
                    |r $ %{} :Leaf (:at 1526142310973) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142311227) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1526142781524) (:by |root) (:text |comp-editor)
                |yx $ %{} :Expr (:at 1526142301823) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526142863316) (:by |root) (:text |app.comp.viewer)
                    |r $ %{} :Leaf (:at 1526142310973) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142311227) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1526142875980) (:by |root) (:text |comp-viewer)
                |z $ %{} :Expr (:at 1667580056007) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580060465) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1667580097129) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1667580062258) (:by |rJG4IHzWf) (:text |css)
    |app.comp.editor $ %{} :FileEntry
      :defs $ {}
        |comp-editor $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1526142739535) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1526142741435) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1526142739535) (:by |root) (:text |comp-editor)
              |r $ %{} :Expr (:at 1526142739535) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1526143071616) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1526142801390) (:by |root) (:text |content)
              |v $ %{} :Expr (:at 1526143073042) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1526143075084) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1526143075335) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629306300395) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629306301563) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1629306301841) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629306303536) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629306305062) (:by |rJG4IHzWf) (:text |states)
                      |T $ %{} :Expr (:at 1526143075452) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526143076154) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1526143089255) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1526143089874) (:by |root) (:text |or)
                              |T $ %{} :Expr (:at 1526143076686) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526143077312) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1526143078148) (:by |root) (:text |states)
                              |j $ %{} :Expr (:at 1526143091141) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526143091469) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1526143091687) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526143094610) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1526143095432) (:by |root) (:text "|\"")
                  |T $ %{} :Expr (:at 1526142742414) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526142742870) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1526142743092) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142743430) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1667580549911) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580553017) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Expr (:at 1667580553331) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580555868) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1667580558008) (:by |rJG4IHzWf) (:text |css/flex)
                                  |h $ %{} :Leaf (:at 1667580559873) (:by |rJG4IHzWf) (:text |css/flex)
                          |j $ %{} :Expr (:at 1526143147883) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526143150297) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1526923679466) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526923679802) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1526923683345) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526923685286) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1526923694017) (:by |root) (:text "|\"16px")
                      |r $ %{} :Expr (:at 1512359496483) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359503438) (:by nil) (:text |textarea)
                          |j $ %{} :Expr (:at 1512359504511) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1512359504843) (:by nil) (:text |{})
                              |j $ %{} :Expr (:at 1512359505095) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1512359505740) (:by nil) (:text |:value)
                                  |j $ %{} :Expr (:at 1526143097385) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526143098375) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1526143099267) (:by |root) (:text |state)
                              |n $ %{} :Expr (:at 1512359562842) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1512359565393) (:by nil) (:text |:placeholder)
                                  |j $ %{} :Expr (:at 1526143097385) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526143098375) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1526143099267) (:by |root) (:text |state)
                              |p $ %{} :Expr (:at 1512359616676) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671618431271) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1667580525981) (:by |rJG4IHzWf) (:text |css-textbox)
                              |r $ %{} :Expr (:at 1512359551423) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1515731637149) (:by |root) (:text |:on-input)
                                  |r $ %{} :Expr (:at 1629306310921) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629306311652) (:by |rJG4IHzWf) (:text |fn)
                                      |L $ %{} :Expr (:at 1629306311953) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629306312490) (:by |rJG4IHzWf) (:text |e)
                                          |j $ %{} :Leaf (:at 1629306313317) (:by |rJG4IHzWf) (:text |d!)
                                      |T $ %{} :Expr (:at 1515731639686) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629306308231) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Leaf (:at 1629306310360) (:by |rJG4IHzWf) (:text |cursor)
                                          |v $ %{} :Expr (:at 1526143113424) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1526143115619) (:by |root) (:text |assoc)
                                              |L $ %{} :Leaf (:at 1526143117534) (:by |root) (:text |state)
                                              |P $ %{} :Leaf (:at 1526143120838) (:by |root) (:text |:text)
                                              |T $ %{} :Expr (:at 1512359558827) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1512359559399) (:by nil) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1629307854956) (:by |rJG4IHzWf) (:text |e)
                      |t $ %{} :Expr (:at 1526143201449) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526143202017) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1526143204214) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1526143205061) (:by |root) (:text |16)
                      |v $ %{} :Expr (:at 1526143144062) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526143145184) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1526143145387) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526143145717) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1526143160197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526143161034) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1526143161450) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526143161864) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1526143193536) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1667580579296) (:by |rJG4IHzWf) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1667580576055) (:by |rJG4IHzWf) (:text |css/button)
                                  |r $ %{} :Expr (:at 1526143219595) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526143221525) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1526143221996) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1526143222413) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1526143223127) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1526143223462) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1526143224161) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |do)
                                              |j $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |:content)
                                                  |r $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                                      |j $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |:text)
                                                          |j $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |state)
                                              |r $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |:router)
                                                  |r $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |{})
                                                      |j $ %{} :Expr (:at 1629313096657) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |:name)
                                                          |j $ %{} :Leaf (:at 1629313096657) (:by |rJG4IHzWf) (:text |:viewer)
                              |r $ %{} :Expr (:at 1526143185045) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526143185584) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1526143189268) (:by |root) (:text "|\"Submit")
        |css-textbox $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580526421) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580528271) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580526421) (:by |rJG4IHzWf) (:text |css-textbox)
              |h $ %{} :Expr (:at 1667580526421) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580529409) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580529882) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580531019) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |ui/textarea)
                          |h $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:width)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text "|\"100%")
                              |h $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:height)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |400)
                              |l $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |ui/font-code)
                              |o $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |12)
                              |q $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text "|\"1.6em")
                              |s $ %{} :Expr (:at 1667580531466) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:white-space)
                                  |b $ %{} :Leaf (:at 1667580531466) (:by |rJG4IHzWf) (:text |:nowrap)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1526142735890) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1526142735890) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1526142735890) (:by |root) (:text |app.comp.editor)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306449736) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306442335) (:by |rJG4IHzWf) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yr $ %{} :Expr (:at 1526142458304) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526142466435) (:by |root) (:text |respo-ui.comp.icon)
                    |r $ %{} :Leaf (:at 1526142467254) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142467511) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1526142469515) (:by |root) (:text |comp-icon)
                |z $ %{} :Expr (:at 1667580534129) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580536255) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1667580541553) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1667580541840) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1667580543137) (:by |rJG4IHzWf) (:text |defstyle)
                |zD $ %{} :Expr (:at 1667580563138) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580565079) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1667580565507) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1667580566128) (:by |rJG4IHzWf) (:text |css)
    |app.comp.nav $ %{} :FileEntry
      :defs $ {}
        |comp-link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1527094559101) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1527094562755) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |comp-link)
              |n $ %{} :Expr (:at 1527094563544) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1527094576742) (:by |root) (:text |page)
                  |b $ %{} :Leaf (:at 1527094590921) (:by |root) (:text |icon)
                  |j $ %{} :Leaf (:at 1527094587055) (:by |root) (:text |active?)
              |r $ %{} :Expr (:at 1527094559101) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1527094559101) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1667580483093) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580484891) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1667580486766) (:by |rJG4IHzWf) (:text |css-icon)
                      |j $ %{} :Expr (:at 1527094559101) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1527094604065) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1527094606233) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1527094607925) (:by |root) (:text |active?)
                              |r $ %{} :Expr (:at 1527094608295) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1527094609042) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1527094610701) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1527094611579) (:by |root) (:text |:color)
                                      |j $ %{} :Leaf (:at 1527094614215) (:by |root) (:text |:black)
                      |r $ %{} :Expr (:at 1527094559101) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1629306283437) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629306284388) (:by |rJG4IHzWf) (:text |fn)
                              |L $ %{} :Expr (:at 1629306284720) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629306284970) (:by |rJG4IHzWf) (:text |e)
                                  |j $ %{} :Leaf (:at 1629306285579) (:by |rJG4IHzWf) (:text |d!)
                              |T $ %{} :Expr (:at 1527094559101) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629306282471) (:by |rJG4IHzWf) (:text |d!)
                                  |j $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |:router)
                                  |r $ %{} :Expr (:at 1527094559101) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1527094559101) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1527094599927) (:by |root) (:text |page)
                  |r $ %{} :Expr (:at 1527094559101) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629307713471) (:by |rJG4IHzWf) (:text |comp-i)
                      |j $ %{} :Leaf (:at 1527094594621) (:by |root) (:text |icon)
                      |r $ %{} :Leaf (:at 1629314820479) (:by |rJG4IHzWf) (:text |16)
                      |v $ %{} :Expr (:at 1629307739539) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629307740857) (:by |rJG4IHzWf) (:text |hsl)
                          |j $ %{} :Leaf (:at 1629307743651) (:by |rJG4IHzWf) (:text |200)
                          |r $ %{} :Leaf (:at 1629307744679) (:by |rJG4IHzWf) (:text |80)
                          |v $ %{} :Leaf (:at 1629307746017) (:by |rJG4IHzWf) (:text |70)
        |comp-nav $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1526142259031) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1526142262043) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1526142259031) (:by |root) (:text |comp-nav)
              |r $ %{} :Expr (:at 1526142259031) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1527094665164) (:by |root) (:text |current-page)
              |v $ %{} :Expr (:at 1526142262897) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1526142264266) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1526142264524) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526142264923) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1526142401546) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580504889) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1667580506405) (:by |rJG4IHzWf) (:text |css-nav)
                  |w $ %{} :Expr (:at 1527094623434) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |comp-link)
                      |j $ %{} :Leaf (:at 1527094635292) (:by |root) (:text |:home)
                      |r $ %{} :Leaf (:at 1527094637671) (:by |root) (:text |:code)
                      |v $ %{} :Expr (:at 1527094667333) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527094667874) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1527094668318) (:by |root) (:text |current-page)
                          |r $ %{} :Leaf (:at 1527094671161) (:by |root) (:text |:home)
                  |wT $ %{} :Expr (:at 1629314793717) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629314794708) (:by |rJG4IHzWf) (:text |=<)
                      |j $ %{} :Leaf (:at 1629314800650) (:by |rJG4IHzWf) (:text |8)
                      |r $ %{} :Leaf (:at 1629314797537) (:by |rJG4IHzWf) (:text |nil)
                  |x $ %{} :Expr (:at 1527094623434) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527094559101) (:by |root) (:text |comp-link)
                      |j $ %{} :Leaf (:at 1527094625449) (:by |root) (:text |:viewer)
                      |r $ %{} :Leaf (:at 1629308110845) (:by |rJG4IHzWf) (:text |:monitor)
                      |v $ %{} :Expr (:at 1527094672827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1527094672950) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1527094673482) (:by |root) (:text |current-page)
                          |r $ %{} :Leaf (:at 1527094674693) (:by |root) (:text |:viewer)
        |css-icon $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1526142550142) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580463563) (:by |rJG4IHzWf) (:text |defstyle)
              |j $ %{} :Leaf (:at 1667580443965) (:by |rJG4IHzWf) (:text |css-icon)
              |r $ %{} :Expr (:at 1667580473241) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1667580474013) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1667580474498) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1667580475968) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1526142550142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142552357) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1526142552627) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142558553) (:by |root) (:text |:margin)
                              |j $ %{} :Leaf (:at 1526142563010) (:by |root) (:text "|\"8")
                          |r $ %{} :Expr (:at 1526142570935) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142572465) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1526142579423) (:by |root) (:text |16)
                          |v $ %{} :Expr (:at 1526142585316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142586635) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1526142588423) (:by |root) (:text |:pointer)
                          |x $ %{} :Expr (:at 1527094616617) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1527094617407) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1527094617669) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1527094617996) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1527094618641) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1527094618992) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1527094620107) (:by |root) (:text |70)
        |css-nav $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580506822) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580508738) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580506822) (:by |rJG4IHzWf) (:text |css-nav)
              |h $ %{} :Expr (:at 1667580506822) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580510709) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580511364) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580512722) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |ui/row)
                          |h $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |{})
                              |X $ %{} :Expr (:at 1671619253080) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619257013) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Leaf (:at 1671619258709) (:by |rJG4IHzWf) (:text |:absolute)
                              |Z $ %{} :Expr (:at 1671619259669) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619260736) (:by |rJG4IHzWf) (:text |:bottom)
                                  |b $ %{} :Leaf (:at 1671619261572) (:by |rJG4IHzWf) (:text |0)
                              |a $ %{} :Expr (:at 1671619266308) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619268703) (:by |rJG4IHzWf) (:text |:right)
                                  |b $ %{} :Leaf (:at 1671619268888) (:by |rJG4IHzWf) (:text |0)
                              |b $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |8)
                              |h $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |:justify-content)
                                  |b $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |:flex-end)
                              |l $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1667580513157) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1667580513157) (:by |rJG4IHzWf) (:text |96)
                              |o $ %{} :Expr (:at 1671619286506) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619287372) (:by |rJG4IHzWf) (:text |:gap)
                                  |b $ %{} :Leaf (:at 1671619291644) (:by |rJG4IHzWf) (:text |4)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1526142251307) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1526142251307) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1526142251307) (:by |root) (:text |app.comp.nav)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306511691) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306521926) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1629307107675) (:by |root) (:text |>>)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yr $ %{} :Expr (:at 1526142458304) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629307758069) (:by |rJG4IHzWf) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1526142467254) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142467511) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1629307725306) (:by |rJG4IHzWf) (:text |comp-i)
                |z $ %{} :Expr (:at 1667580455187) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580459555) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1667580467210) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1667580467479) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1667580470870) (:by |rJG4IHzWf) (:text |defstyle)
    |app.comp.viewer $ %{} :FileEntry
      :defs $ {}
        |by-larger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629307634198) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629307637983) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629307634198) (:by |rJG4IHzWf) (:text |by-larger)
              |r $ %{} :Expr (:at 1629307635029) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629307635029) (:by |rJG4IHzWf) (:text |x)
                  |j $ %{} :Leaf (:at 1629307635029) (:by |rJG4IHzWf) (:text |y)
              |v $ %{} :Expr (:at 1629307635029) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629307635029) (:by |rJG4IHzWf) (:text |&compare)
                  |j $ %{} :Expr (:at 1679376699631) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1679376700846) (:by |rJG4IHzWf) (:text |nth)
                      |T $ %{} :Leaf (:at 1629307635029) (:by |rJG4IHzWf) (:text |y)
                      |b $ %{} :Leaf (:at 1679376701488) (:by |rJG4IHzWf) (:text |0)
                  |r $ %{} :Expr (:at 1679376704373) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1679376705360) (:by |rJG4IHzWf) (:text |nth)
                      |T $ %{} :Leaf (:at 1629307635029) (:by |rJG4IHzWf) (:text |x)
                      |b $ %{} :Leaf (:at 1679376706681) (:by |rJG4IHzWf) (:text |0)
        |by-latest-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533459803428) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1533459808750) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |by-latest-task)
              |v $ %{} :Expr (:at 1533459803428) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-a)
                  |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-b)
              |x $ %{} :Expr (:at 1670583917214) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1670583917870) (:by |rJG4IHzWf) (:text |let)
                  |T $ %{} :Expr (:at 1670583920089) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1670583918567) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1670583927955) (:by |rJG4IHzWf) (:text |ret)
                          |T $ %{} :Expr (:at 1533459803428) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1533459803428) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |=)
                                  |j $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:done-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-b)
                                  |r $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:done-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-a)
                              |r $ %{} :Expr (:at 1533459803428) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |<)
                                  |j $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:archived-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-b)
                                  |r $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:archived-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-a)
                              |v $ %{} :Expr (:at 1533459803428) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |<)
                                  |j $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:done-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-b)
                                  |r $ %{} :Expr (:at 1533459803428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |:done-time)
                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |task-a)
                  |b $ %{} :Expr (:at 1670583922420) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1670583923007) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Leaf (:at 1670583925706) (:by |rJG4IHzWf) (:text |ret)
                      |h $ %{} :Leaf (:at 1670583945976) (:by |rJG4IHzWf) (:text |1)
                      |l $ %{} :Leaf (:at 1670583947133) (:by |rJG4IHzWf) (:text |-1)
        |comp-active-tasks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533458143689) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1533458145578) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |comp-active-tasks)
              |n $ %{} :Expr (:at 1533458149321) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533458150090) (:by |root) (:text |tasks)
              |r $ %{} :Expr (:at 1533458143689) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |list->)
                  |j $ %{} :Expr (:at 1533458143689) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1533458143689) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1533458143689) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619360511) (:by |rJG4IHzWf) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1671619368590) (:by |rJG4IHzWf) (:text "|\"4px 8px")
                              |l $ %{} :Expr (:at 1671619377843) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619383747) (:by |rJG4IHzWf) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1671619410402) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671619410402) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1671619410402) (:by |rJG4IHzWf) (:text |20)
                                      |h $ %{} :Leaf (:at 1671619410402) (:by |rJG4IHzWf) (:text |80)
                                      |l $ %{} :Leaf (:at 1671619422227) (:by |rJG4IHzWf) (:text |97)
                              |n $ %{} :Expr (:at 1671619315321) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619318488) (:by |rJG4IHzWf) (:text |:border)
                                  |b $ %{} :Expr (:at 1671619318944) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671619319394) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1671619325714) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                      |h $ %{} :Expr (:at 1671619326547) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1671619326836) (:by |rJG4IHzWf) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1671619399306) (:by |rJG4IHzWf) (:text |20)
                                          |h $ %{} :Leaf (:at 1671619400771) (:by |rJG4IHzWf) (:text |80)
                                          |l $ %{} :Leaf (:at 1671619335041) (:by |rJG4IHzWf) (:text |84)
                              |q $ %{} :Expr (:at 1671619340245) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619342378) (:by |rJG4IHzWf) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1671619390386) (:by |rJG4IHzWf) (:text "|\"0px")
                  |r $ %{} :Expr (:at 1533458143689) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629306358161) (:by |rJG4IHzWf) (:text |->)
                      |f $ %{} :Leaf (:at 1533458153392) (:by |root) (:text |tasks)
                      |l $ %{} :Expr (:at 1629308295111) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629312320860) (:by |rJG4IHzWf) (:text |or)
                          |j $ %{} :Expr (:at 1629312321175) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629312321540) (:by |rJG4IHzWf) (:text |{})
                      |o $ %{} :Expr (:at 1629312322828) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629312324033) (:by |rJG4IHzWf) (:text |.to-list)
                      |r $ %{} :Expr (:at 1533458143689) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629306359940) (:by |rJG4IHzWf) (:text |.sort-by)
                          |j $ %{} :Expr (:at 1533458143689) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629306369341) (:by |rJG4IHzWf) (:text |pair)
                              |r $ %{} :Expr (:at 1533458143689) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533989282555) (:by |rJG4IHzWf) (:text |:sort-id)
                                  |j $ %{} :Expr (:at 1629306363078) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629306365139) (:by |rJG4IHzWf) (:text |last)
                                      |j $ %{} :Leaf (:at 1629306365914) (:by |rJG4IHzWf) (:text |pair)
                      |v $ %{} :Expr (:at 1533458143689) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |map)
                          |j $ %{} :Expr (:at 1533458143689) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629306476537) (:by |rJG4IHzWf) (:text |pair)
                              |r $ %{} :Expr (:at 1629306465959) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629306469360) (:by |rJG4IHzWf) (:text |let[])
                                  |L $ %{} :Expr (:at 1629306469839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629306470391) (:by |rJG4IHzWf) (:text |k)
                                      |j $ %{} :Leaf (:at 1629306471334) (:by |rJG4IHzWf) (:text |task)
                                  |P $ %{} :Leaf (:at 1629306472789) (:by |rJG4IHzWf) (:text |pair)
                                  |T $ %{} :Expr (:at 1533458143689) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |k)
                                      |r $ %{} :Expr (:at 1533458143689) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |div)
                                          |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |{})
                                          |r $ %{} :Expr (:at 1533458143689) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |comp-time)
                                              |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |:created-time)
                                                  |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |task)
                                          |v $ %{} :Expr (:at 1533458143689) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |=<)
                                              |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |8)
                                              |r $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |nil)
                                          |x $ %{} :Expr (:at 1533458143689) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |<>)
                                              |j $ %{} :Expr (:at 1533458143689) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |:text)
                                                  |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |task)
        |comp-day $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533460707030) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1533460708148) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1533460707030) (:by |root) (:text |comp-day)
              |r $ %{} :Expr (:at 1533460707030) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533460710100) (:by |root) (:text |day)
                  |j $ %{} :Leaf (:at 1533461179294) (:by |root) (:text |month-date)
                  |r $ %{} :Leaf (:at 1534824726093) (:by |rJG4IHzWf) (:text |amount)
              |v $ %{} :Expr (:at 1533460764436) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1533460766500) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1533460766779) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533460767112) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1533460767349) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580743725) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1667580745252) (:by |rJG4IHzWf) (:text |css-day)
                  |r $ %{} :Expr (:at 1533460796584) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1533460797686) (:by |root) (:text |<>)
                      |T $ %{} :Expr (:at 1533460711007) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629306500189) (:by |rJG4IHzWf) (:text |case-default)
                          |j $ %{} :Leaf (:at 1533460715075) (:by |root) (:text |day)
                          |n $ %{} :Expr (:at 1629306501251) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629306501251) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1629306501251) (:by |rJG4IHzWf) (:text "|\"Invalid:")
                              |r $ %{} :Leaf (:at 1629306501251) (:by |rJG4IHzWf) (:text |day)
                          |r $ %{} :Expr (:at 1533460716312) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460717208) (:by |root) (:text |0)
                              |j $ %{} :Leaf (:at 1534057464043) (:by |rJG4IHzWf) (:text "|\"Sun")
                          |v $ %{} :Expr (:at 1533460718915) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460719870) (:by |root) (:text |1)
                              |j $ %{} :Leaf (:at 1533460722544) (:by |root) (:text "|\"Mon")
                          |x $ %{} :Expr (:at 1533460723451) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460725538) (:by |root) (:text |2)
                              |j $ %{} :Leaf (:at 1533460727385) (:by |root) (:text "|\"Tue")
                          |y $ %{} :Expr (:at 1533460727954) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460728840) (:by |root) (:text |3)
                              |j $ %{} :Leaf (:at 1533460731547) (:by |root) (:text "|\"Wed")
                          |yT $ %{} :Expr (:at 1533460733247) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460734005) (:by |root) (:text |4)
                              |j $ %{} :Leaf (:at 1533460740593) (:by |root) (:text "|\"Thu")
                          |yj $ %{} :Expr (:at 1533460741122) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460742077) (:by |root) (:text |5)
                              |j $ %{} :Leaf (:at 1533460745575) (:by |root) (:text "|\"Fri")
                          |yr $ %{} :Expr (:at 1533460746076) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533460747028) (:by |root) (:text |6)
                              |j $ %{} :Leaf (:at 1533460749298) (:by |root) (:text "|\"Sat")
                  |t $ %{} :Expr (:at 1533461254148) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533461255170) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1533964526524) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1533461257866) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1533461235264) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533461235685) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1533461236123) (:by |root) (:text |month-date)
                      |r $ %{} :Expr (:at 1533461237886) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533461238303) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1533461238518) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533461242757) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1533461243204) (:by |root) (:text |12)
                          |r $ %{} :Expr (:at 1533461243759) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533461245830) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1533461246058) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533461246425) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1533461246987) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1533461247207) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1533965117995) (:by |root) (:text |0)
                  |w $ %{} :Expr (:at 1533461254148) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533461255170) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1533964526524) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1533461257866) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1534824727610) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534824731138) (:by |rJG4IHzWf) (:text |<>)
                      |j $ %{} :Expr (:at 1534824732396) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1534824733280) (:by |rJG4IHzWf) (:text |str)
                          |d $ %{} :Leaf (:at 1534824824405) (:by |rJG4IHzWf) (:text "|\"(")
                          |n $ %{} :Leaf (:at 1534824741625) (:by |rJG4IHzWf) (:text |amount)
                          |r $ %{} :Leaf (:at 1534824821873) (:by |rJG4IHzWf) (:text "|\")")
                      |r $ %{} :Expr (:at 1534824761804) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1534824762378) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1534824762875) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1534824767524) (:by |rJG4IHzWf) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1534824765698) (:by |rJG4IHzWf) (:text |12)
        |comp-time $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1526924246473) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1526924248133) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1526924246473) (:by |root) (:text |comp-time)
              |r $ %{} :Expr (:at 1526924246473) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1526924249398) (:by |root) (:text |time)
              |v $ %{} :Expr (:at 1527094796786) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1527094799900) (:by |root) (:text |span)
                  |L $ %{} :Expr (:at 1527094800251) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527094800609) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1527094804425) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580621129) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1667580624429) (:by |rJG4IHzWf) (:text |css-time)
                  |T $ %{} :Expr (:at 1526924262300) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526924262775) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1526924264104) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526924265862) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1526924266770) (:by |root) (:text |time)
                      |r $ %{} :Expr (:at 1526924267508) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526924267934) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1533461377385) (:by |root) (:text "|\"??:??")
                      |v $ %{} :Expr (:at 1526924272391) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526924273379) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1526924281762) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629306378255) (:by |rJG4IHzWf) (:text |.!format)
                              |T $ %{} :Expr (:at 1526924274924) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526924279551) (:by |root) (:text |dayjs)
                                  |j $ %{} :Leaf (:at 1526924281230) (:by |root) (:text |time)
                              |j $ %{} :Leaf (:at 1530676131527) (:by |root) (:text "|\"HH:mm")
        |comp-viewer $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1526142823266) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1526142825252) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1526142823266) (:by |root) (:text |comp-viewer)
              |r $ %{} :Expr (:at 1526142823266) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1526142882684) (:by |root) (:text |content)
              |v $ %{} :Expr (:at 1526142826325) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1526142826725) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1526142826941) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526142827296) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1526923714033) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526923714887) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1526923735249) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1526923736134) (:by |root) (:text |merge)
                              |L $ %{} :Leaf (:at 1526923737423) (:by |root) (:text |ui/flex)
                              |T $ %{} :Expr (:at 1526923718636) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526923719201) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1526923719438) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526923721056) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1526923724072) (:by |root) (:text |16)
                                  |r $ %{} :Expr (:at 1526923727165) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1526923728626) (:by |root) (:text |:overflow)
                                      |j $ %{} :Leaf (:at 1526923729749) (:by |root) (:text |:auto)
                                  |v $ %{} :Expr (:at 1527261915169) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1527261920711) (:by |root) (:text |:padding-bottom)
                                      |j $ %{} :Leaf (:at 1527261921756) (:by |root) (:text |200)
                  |r $ %{} :Expr (:at 1526143024704) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1526143025366) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1526143025576) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526143025966) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1667581004367) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667581004367) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1667581004367) (:by |rJG4IHzWf) (:text |style/css-title)
                          |j $ %{} :Expr (:at 1533965022967) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533965024996) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1533965029739) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533965030136) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1533965031397) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533965032181) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1533965032423) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533965032749) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1533965033012) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1533965033246) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1533965038476) (:by |root) (:text |70)
                      |T $ %{} :Expr (:at 1526142842258) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142842645) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1526923922505) (:by |root) (:text "|\"Tasks")
                  |s $ %{} :Expr (:at 1533458156206) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |comp-active-tasks)
                      |j $ %{} :Expr (:at 1533458143689) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |:tasks)
                          |j $ %{} :Leaf (:at 1533458143689) (:by |root) (:text |content)
                  |sT $ %{} :Expr (:at 1526924348999) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526924350922) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1526924351601) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1533964731031) (:by |root) (:text |64)
                  |t $ %{} :Expr (:at 1526143024704) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1526143025366) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1526143025576) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526143025966) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1667580983880) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580987344) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1667581001185) (:by |rJG4IHzWf) (:text |style/css-title)
                          |j $ %{} :Expr (:at 1533964738898) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533964739621) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1533964740225) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533964740961) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1533964741310) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533964742034) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1533964742358) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533964743187) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1533964743519) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1533964743761) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1533964747120) (:by |root) (:text |80)
                      |T $ %{} :Expr (:at 1526142842258) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142842645) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1526923865710) (:by |root) (:text "|\"Archived")
                  |u $ %{} :Expr (:at 1530675656448) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530675658638) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1530675658901) (:by |root)
                        :data $ {}
                          |5 $ %{} :Expr (:at 1533458671765) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533458672508) (:by |root) (:text |tasks)
                              |j $ %{} :Expr (:at 1533458672904) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629308413791) (:by |rJG4IHzWf) (:text |->)
                                  |j $ %{} :Expr (:at 1526923748395) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1526923808710) (:by |root) (:text |:archives)
                                      |T $ %{} :Leaf (:at 1526143005512) (:by |root) (:text |content)
                                  |n $ %{} :Expr (:at 1629308430571) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629308430889) (:by |rJG4IHzWf) (:text |or)
                                      |j $ %{} :Expr (:at 1629308431290) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629308431775) (:by |rJG4IHzWf) (:text |{})
                                  |r $ %{} :Expr (:at 1629308414656) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629308419088) (:by |rJG4IHzWf) (:text |.to-list)
                                  |v $ %{} :Expr (:at 1629308419530) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629308420626) (:by |rJG4IHzWf) (:text |.map)
                                      |j $ %{} :Leaf (:at 1629308421371) (:by |rJG4IHzWf) (:text |last)
                          |D $ %{} :Expr (:at 1533458643786) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533458650069) (:by |root) (:text |tasks-by-year)
                              |r $ %{} :Expr (:at 1533458687168) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629306390986) (:by |rJG4IHzWf) (:text |->)
                                  |L $ %{} :Leaf (:at 1533458688837) (:by |root) (:text |tasks)
                                  |T $ %{} :Expr (:at 1533458660572) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629306406242) (:by |rJG4IHzWf) (:text |.group-by)
                                      |j $ %{} :Expr (:at 1533458690581) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533458690714) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1533458716750) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1533458691769) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1533458789641) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1667581011399) (:by |rJG4IHzWf) (:text |.!year)
                                              |j $ %{} :Expr (:at 1533459068190) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1533459340789) (:by |root) (:text |get-done-time)
                                                  |j $ %{} :Leaf (:at 1533459342395) (:by |root) (:text |task)
                                  |X $ %{} :Expr (:at 1629308477267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629308479216) (:by |rJG4IHzWf) (:text |.to-list)
                                  |b $ %{} :Expr (:at 1533459382799) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629306407954) (:by |rJG4IHzWf) (:text |.sort)
                                      |j $ %{} :Leaf (:at 1533459393331) (:by |root) (:text |by-larger)
                                  |j $ %{} :Expr (:at 1533458890935) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629307169523) (:by |rJG4IHzWf) (:text |.map)
                                      |j $ %{} :Expr (:at 1533458893069) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533458893368) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1533458900040) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629307174882) (:by |rJG4IHzWf) (:text |pair)
                                          |r $ %{} :Expr (:at 1629307176000) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629307177905) (:by |rJG4IHzWf) (:text |let[])
                                              |L $ %{} :Expr (:at 1629307178554) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629307179949) (:by |rJG4IHzWf) (:text |k)
                                                  |j $ %{} :Leaf (:at 1629307182458) (:by |rJG4IHzWf) (:text |tasks)
                                              |P $ %{} :Leaf (:at 1629307184430) (:by |rJG4IHzWf) (:text |pair)
                                              |T $ %{} :Expr (:at 1629307503053) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |5 $ %{} :Leaf (:at 1629307504879) (:by |rJG4IHzWf) (:text |[])
                                                  |D $ %{} :Leaf (:at 1629307503617) (:by |rJG4IHzWf) (:text |k)
                                                  |T $ %{} :Expr (:at 1533459124138) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1629306416075) (:by |rJG4IHzWf) (:text |->)
                                                      |L $ %{} :Leaf (:at 1533459180410) (:by |root) (:text |tasks)
                                                      |T $ %{} :Expr (:at 1533459181322) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629307673276) (:by |rJG4IHzWf) (:text |.group-by)
                                                          |T $ %{} :Expr (:at 1533459186949) (:by |root)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1533459187509) (:by |root) (:text |fn)
                                                              |L $ %{} :Expr (:at 1533459188984) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1533459189556) (:by |root) (:text |task)
                                                              |T $ %{} :Expr (:at 1533458909053) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1667580602239) (:by |rJG4IHzWf) (:text |.!week)
                                                                  |j $ %{} :Expr (:at 1533459068190) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1533459340789) (:by |root) (:text |get-done-time)
                                                                      |j $ %{} :Leaf (:at 1533459342395) (:by |root) (:text |task)
                                                      |X $ %{} :Expr (:at 1629308481857) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629308483776) (:by |rJG4IHzWf) (:text |.to-list)
                                                      |b $ %{} :Expr (:at 1533459382799) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629307672069) (:by |rJG4IHzWf) (:text |.sort)
                                                          |j $ %{} :Leaf (:at 1533459393331) (:by |root) (:text |by-larger)
                                                      |j $ %{} :Expr (:at 1533459126727) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629308020024) (:by |rJG4IHzWf) (:text |.map)
                                                          |j $ %{} :Expr (:at 1533459133813) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1533459196325) (:by |root) (:text |fn)
                                                              |j $ %{} :Expr (:at 1533459196611) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629308022580) (:by |rJG4IHzWf) (:text |pair)
                                                              |r $ %{} :Expr (:at 1629308023474) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1629308025366) (:by |rJG4IHzWf) (:text |let[])
                                                                  |L $ %{} :Expr (:at 1629308025725) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629308027565) (:by |rJG4IHzWf) (:text |k)
                                                                      |j $ %{} :Leaf (:at 1629308032271) (:by |rJG4IHzWf) (:text |tasks)
                                                                  |P $ %{} :Leaf (:at 1629308029952) (:by |rJG4IHzWf) (:text |pair)
                                                                  |T $ %{} :Expr (:at 1629314654391) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1629314655607) (:by |rJG4IHzWf) (:text |[])
                                                                      |L $ %{} :Leaf (:at 1629314657224) (:by |rJG4IHzWf) (:text |k)
                                                                      |T $ %{} :Expr (:at 1533459197877) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629312845662) (:by |rJG4IHzWf) (:text |->)
                                                                          |j $ %{} :Leaf (:at 1533459204833) (:by |root) (:text |tasks)
                                                                          |r $ %{} :Expr (:at 1533459206358) (:by |root)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1629307669619) (:by |rJG4IHzWf) (:text |.group-by)
                                                                              |j $ %{} :Expr (:at 1533459211206) (:by |root)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1533459211492) (:by |root) (:text |fn)
                                                                                  |j $ %{} :Expr (:at 1533459212665) (:by |root)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1533459212159) (:by |root) (:text |task)
                                                                                  |r $ %{} :Expr (:at 1533459213759) (:by |root)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1667580597039) (:by |rJG4IHzWf) (:text |.!day)
                                                                                      |j $ %{} :Expr (:at 1533459068190) (:by |root)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1533459340789) (:by |root) (:text |get-done-time)
                                                                                          |j $ %{} :Leaf (:at 1533459342395) (:by |root) (:text |task)
                                                                          |t $ %{} :Expr (:at 1629308485382) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1629308489046) (:by |rJG4IHzWf) (:text |.to-list)
                                                                          |v $ %{} :Expr (:at 1533459382799) (:by |root)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1629307667336) (:by |rJG4IHzWf) (:text |.sort)
                                                                              |j $ %{} :Leaf (:at 1533459393331) (:by |root) (:text |by-larger)
                      |r $ %{} :Expr (:at 1530675730260) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530675878266) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1530675879717) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530675880035) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1533459845189) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580914364) (:by |rJG4IHzWf) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1667580916830) (:by |rJG4IHzWf) (:text |css/column)
                          |r $ %{} :Expr (:at 1629307941147) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629307943086) (:by |rJG4IHzWf) (:text |->)
                              |L $ %{} :Leaf (:at 1629307946192) (:by |rJG4IHzWf) (:text |tasks-by-year)
                              |T $ %{} :Expr (:at 1629307947126) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629307949435) (:by |rJG4IHzWf) (:text |map)
                                  |T $ %{} :Expr (:at 1629307950916) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629307951456) (:by |rJG4IHzWf) (:text |fn)
                                      |L $ %{} :Expr (:at 1629307953754) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629307955527) (:by |rJG4IHzWf) (:text |pair)
                                      |T $ %{} :Expr (:at 1530675932625) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629307962460) (:by |rJG4IHzWf) (:text |let[])
                                          |b $ %{} :Expr (:at 1629307963336) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629307965405) (:by |rJG4IHzWf) (:text |year)
                                              |j $ %{} :Leaf (:at 1629307967053) (:by |rJG4IHzWf) (:text |tasks-by-week)
                                          |f $ %{} :Leaf (:at 1629307969292) (:by |rJG4IHzWf) (:text |pair)
                                          |r $ %{} :Expr (:at 1530675949150) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1530675949682) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1533459757264) (:by |root) (:text |year)
                                              |r $ %{} :Expr (:at 1533459885234) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1533459886016) (:by |root) (:text |div)
                                                  |L $ %{} :Expr (:at 1533459886656) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1533459886975) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1534824619517) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1667580878412) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |j $ %{} :Leaf (:at 1667580879988) (:by |rJG4IHzWf) (:text |css/column)
                                                  |P $ %{} :Expr (:at 1533459895177) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1533460520664) (:by |root) (:text |comp-year)
                                                      |j $ %{} :Leaf (:at 1533459898674) (:by |root) (:text |year)
                                                  |R $ %{} :Expr (:at 1533460522236) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1533460522748) (:by |root) (:text |=<)
                                                      |j $ %{} :Leaf (:at 1533460523748) (:by |root) (:text |8)
                                                      |r $ %{} :Leaf (:at 1533460524225) (:by |root) (:text |nil)
                                                  |T $ %{} :Expr (:at 1533459902553) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1533459912375) (:by |root) (:text |list->)
                                                      |L $ %{} :Expr (:at 1533459914466) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1533459916836) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1533459917321) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1667580886650) (:by |rJG4IHzWf) (:text |:class-name)
                                                              |j $ %{} :Leaf (:at 1667580888767) (:by |rJG4IHzWf) (:text |css/column)
                                                      |T $ %{} :Expr (:at 1629307903221) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629307904731) (:by |rJG4IHzWf) (:text |->)
                                                          |L $ %{} :Leaf (:at 1629307905326) (:by |rJG4IHzWf) (:text |tasks-by-week)
                                                          |T $ %{} :Expr (:at 1629307908212) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1629307909530) (:by |rJG4IHzWf) (:text |map)
                                                              |T $ %{} :Expr (:at 1629307911482) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1629307912090) (:by |rJG4IHzWf) (:text |fn)
                                                                  |L $ %{} :Expr (:at 1629307912469) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629307914126) (:by |rJG4IHzWf) (:text |pair)
                                                                  |T $ %{} :Expr (:at 1629307916823) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1629307919340) (:by |rJG4IHzWf) (:text |let[])
                                                                      |L $ %{} :Expr (:at 1629307919779) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629307920709) (:by |rJG4IHzWf) (:text |week)
                                                                          |j $ %{} :Leaf (:at 1629307922632) (:by |rJG4IHzWf) (:text |tasks-by-day)
                                                                      |P $ %{} :Leaf (:at 1629307925072) (:by |rJG4IHzWf) (:text |pair)
                                                                      |T $ %{} :Expr (:at 1533459959543) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1533459959894) (:by |root) (:text |[])
                                                                          |j $ %{} :Leaf (:at 1533459961478) (:by |root) (:text |week)
                                                                          |r $ %{} :Expr (:at 1533459963795) (:by |root)
                                                                            :data $ {}
                                                                              |D $ %{} :Leaf (:at 1533459967051) (:by |root) (:text |div)
                                                                              |L $ %{} :Expr (:at 1533459967284) (:by |root)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1533459967664) (:by |root) (:text |{})
                                                                                  |b $ %{} :Expr (:at 1667580801722) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1667580804091) (:by |rJG4IHzWf) (:text |:class-name)
                                                                                      |b $ %{} :Leaf (:at 1667580806591) (:by |rJG4IHzWf) (:text |css/column)
                                                                                  |j $ %{} :Expr (:at 1533459967926) (:by |root)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1533459968759) (:by |root) (:text |:style)
                                                                                      |j $ %{} :Expr (:at 1533461324992) (:by |root)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1533461330275) (:by |root) (:text |{})
                                                                                          |j $ %{} :Expr (:at 1533461330749) (:by |root)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1533461333472) (:by |root) (:text |:padding-top)
                                                                                              |j $ %{} :Leaf (:at 1533964016636) (:by |root) (:text |16)
                                                                              |P $ %{} :Expr (:at 1533459973406) (:by |root)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1533460588633) (:by |root) (:text |comp-week)
                                                                                  |j $ %{} :Leaf (:at 1533459975858) (:by |root) (:text |week)
                                                                                  |r $ %{} :Expr (:at 1629308391922) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |->)
                                                                                      |j $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |tasks-by-day)
                                                                                      |p $ %{} :Expr (:at 1629312930472) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1629312935050) (:by |rJG4IHzWf) (:text |or)
                                                                                          |j $ %{} :Expr (:at 1629312935338) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1629312935631) (:by |rJG4IHzWf) (:text |[])
                                                                                      |v $ %{} :Expr (:at 1629308391922) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |.map)
                                                                                          |j $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |last)
                                                                                      |x $ %{} :Expr (:at 1629308391922) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |.map)
                                                                                          |j $ %{} :Leaf (:at 1629308391922) (:by |rJG4IHzWf) (:text |count)
                                                                                      |y $ %{} :Expr (:at 1629313226799) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1629313231598) (:by |rJG4IHzWf) (:text |.reduce)
                                                                                          |j $ %{} :Leaf (:at 1629313234509) (:by |rJG4IHzWf) (:text |0)
                                                                                          |r $ %{} :Leaf (:at 1629313235334) (:by |rJG4IHzWf) (:text |&+)
                                                                              |T $ %{} :Expr (:at 1533459998147) (:by |root)
                                                                                :data $ {}
                                                                                  |D $ %{} :Leaf (:at 1533460001189) (:by |root) (:text |list->)
                                                                                  |L $ %{} :Expr (:at 1533460001918) (:by |root)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1533460002280) (:by |root) (:text |{})
                                                                                      |j $ %{} :Expr (:at 1533460002555) (:by |root)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1667580786899) (:by |rJG4IHzWf) (:text |:class-name)
                                                                                          |b $ %{} :Leaf (:at 1667580789507) (:by |rJG4IHzWf) (:text |css-day-list)
                                                                                  |T $ %{} :Expr (:at 1629307980668) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |D $ %{} :Leaf (:at 1629307981585) (:by |rJG4IHzWf) (:text |->)
                                                                                      |L $ %{} :Leaf (:at 1629307984040) (:by |rJG4IHzWf) (:text |tasks-by-day)
                                                                                      |P $ %{} :Expr (:at 1629313264915) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1629313266256) (:by |rJG4IHzWf) (:text |or)
                                                                                          |j $ %{} :Expr (:at 1629313266499) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1629313266906) (:by |rJG4IHzWf) (:text |[])
                                                                                      |T $ %{} :Expr (:at 1629307984765) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |D $ %{} :Leaf (:at 1629307985450) (:by |rJG4IHzWf) (:text |map)
                                                                                          |T $ %{} :Expr (:at 1629307987200) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |D $ %{} :Leaf (:at 1629307987757) (:by |rJG4IHzWf) (:text |fn)
                                                                                              |L $ %{} :Expr (:at 1629307988054) (:by |rJG4IHzWf)
                                                                                                :data $ {}
                                                                                                  |T $ %{} :Leaf (:at 1629307989101) (:by |rJG4IHzWf) (:text |pair)
                                                                                              |T $ %{} :Expr (:at 1533460022084) (:by |root)
                                                                                                :data $ {}
                                                                                                  |D $ %{} :Leaf (:at 1629307991879) (:by |rJG4IHzWf) (:text |let[])
                                                                                                  |H $ %{} :Expr (:at 1629307994997) (:by |rJG4IHzWf)
                                                                                                    :data $ {}
                                                                                                      |j $ %{} :Leaf (:at 1629307994997) (:by |rJG4IHzWf) (:text |day)
                                                                                                      |r $ %{} :Leaf (:at 1629307994997) (:by |rJG4IHzWf) (:text |tasks)
                                                                                                  |J $ %{} :Leaf (:at 1629308002342) (:by |rJG4IHzWf) (:text |pair)
                                                                                                  |T $ %{} :Expr (:at 1533460031645) (:by |root)
                                                                                                    :data $ {}
                                                                                                      |D $ %{} :Leaf (:at 1533460032232) (:by |root) (:text |[])
                                                                                                      |L $ %{} :Leaf (:at 1533460033919) (:by |root) (:text |day)
                                                                                                      |T $ %{} :Expr (:at 1533460034399) (:by |root)
                                                                                                        :data $ {}
                                                                                                          |D $ %{} :Leaf (:at 1533460044543) (:by |root) (:text |div)
                                                                                                          |L $ %{} :Expr (:at 1533460044808) (:by |root)
                                                                                                            :data $ {}
                                                                                                              |T $ %{} :Leaf (:at 1533460045171) (:by |root) (:text |{})
                                                                                                              |b $ %{} :Expr (:at 1667580858677) (:by |rJG4IHzWf)
                                                                                                                :data $ {}
                                                                                                                  |T $ %{} :Leaf (:at 1667580861031) (:by |rJG4IHzWf) (:text |:class-name)
                                                                                                                  |b $ %{} :Expr (:at 1671618647673) (:by |rJG4IHzWf)
                                                                                                                    :data $ {}
                                                                                                                      |D $ %{} :Leaf (:at 1671618695524) (:by |rJG4IHzWf) (:text |str-spaced)
                                                                                                                      |T $ %{} :Leaf (:at 1667580865517) (:by |rJG4IHzWf) (:text |css/column)
                                                                                                                      |b $ %{} :Leaf (:at 1671618655264) (:by |rJG4IHzWf) (:text |css-day-card)
                                                                                                          |P $ %{} :Expr (:at 1533460049485) (:by |root)
                                                                                                            :data $ {}
                                                                                                              |T $ %{} :Leaf (:at 1533460705684) (:by |root) (:text |comp-day)
                                                                                                              |j $ %{} :Leaf (:at 1533460051153) (:by |root) (:text |day)
                                                                                                              |r $ %{} :Expr (:at 1533963878783) (:by |root)
                                                                                                                :data $ {}
                                                                                                                  |T $ %{} :Leaf (:at 1667580613173) (:by |rJG4IHzWf) (:text |.!format)
                                                                                                                  |j $ %{} :Expr (:at 1533461131900) (:by |root)
                                                                                                                    :data $ {}
                                                                                                                      |D $ %{} :Leaf (:at 1533461150965) (:by |root) (:text |get-done-time)
                                                                                                                      |T $ %{} :Expr (:at 1533461124086) (:by |root)
                                                                                                                        :data $ {}
                                                                                                                          |T $ %{} :Leaf (:at 1533461129633) (:by |root) (:text |first)
                                                                                                                          |j $ %{} :Leaf (:at 1533461130413) (:by |root) (:text |tasks)
                                                                                                                  |r $ %{} :Leaf (:at 1533461192727) (:by |root) (:text "|\"MM-DD")
                                                                                                              |v $ %{} :Expr (:at 1534824716134) (:by |rJG4IHzWf)
                                                                                                                :data $ {}
                                                                                                                  |T $ %{} :Leaf (:at 1534824718961) (:by |rJG4IHzWf) (:text |count)
                                                                                                                  |j $ %{} :Leaf (:at 1534824720001) (:by |rJG4IHzWf) (:text |tasks)
                                                                                                          |R $ %{} :Expr (:at 1526143027072) (:by |root)
                                                                                                            :data $ {}
                                                                                                              |D $ %{} :Leaf (:at 1526923818188) (:by |root) (:text |list->)
                                                                                                              |L $ %{} :Expr (:at 1526143030007) (:by |root)
                                                                                                                :data $ {}
                                                                                                                  |T $ %{} :Leaf (:at 1526143030444) (:by |root) (:text |{})
                                                                                                                  |j $ %{} :Expr (:at 1526923871485) (:by |root)
                                                                                                                    :data $ {}
                                                                                                                      |T $ %{} :Leaf (:at 1526923873663) (:by |root) (:text |:style)
                                                                                                                      |j $ %{} :Expr (:at 1533460952415) (:by |root)
                                                                                                                        :data $ {}
                                                                                                                          |T $ %{} :Leaf (:at 1533460952825) (:by |root) (:text |{})
                                                                                                                          |j $ %{} :Expr (:at 1533964545019) (:by |root)
                                                                                                                            :data $ {}
                                                                                                                              |T $ %{} :Leaf (:at 1533964548225) (:by |root) (:text |:padding-left)
                                                                                                                              |j $ %{} :Leaf (:at 1671619027332) (:by |rJG4IHzWf) (:text |8)
                                                                                                                          |r $ %{} :Expr (:at 1533964429693) (:by |root)
                                                                                                                            :data $ {}
                                                                                                                              |T $ %{} :Leaf (:at 1533964432322) (:by |root) (:text |:min-width)
                                                                                                                              |j $ %{} :Leaf (:at 1533964583885) (:by |root) (:text |240)
                                                                                                              |T $ %{} :Expr (:at 1526143002953) (:by |root)
                                                                                                                :data $ {}
                                                                                                                  |D $ %{} :Leaf (:at 1629314727065) (:by |rJG4IHzWf) (:text |->)
                                                                                                                  |P $ %{} :Leaf (:at 1530676076758) (:by |root) (:text |tasks)
                                                                                                                  |b $ %{} :Expr (:at 1527261796691) (:by |root)
                                                                                                                    :data $ {}
                                                                                                                      |T $ %{} :Leaf (:at 1527262186887) (:by |root) (:text |sort)
                                                                                                                      |j $ %{} :Leaf (:at 1533459803428) (:by |root) (:text |by-latest-task)
                                                                                                                  |j $ %{} :Expr (:at 1526923834604) (:by |root)
                                                                                                                    :data $ {}
                                                                                                                      |T $ %{} :Leaf (:at 1526923835085) (:by |root) (:text |map)
                                                                                                                      |j $ %{} :Expr (:at 1526923836979) (:by |root)
                                                                                                                        :data $ {}
                                                                                                                          |T $ %{} :Leaf (:at 1526923837765) (:by |root) (:text |fn)
                                                                                                                          |j $ %{} :Expr (:at 1533460268784) (:by |root)
                                                                                                                            :data $ {}
                                                                                                                              |T $ %{} :Leaf (:at 1526923846747) (:by |root) (:text |task)
                                                                                                                          |r $ %{} :Expr (:at 1526923848399) (:by |root)
                                                                                                                            :data $ {}
                                                                                                                              |T $ %{} :Leaf (:at 1526923849259) (:by |root) (:text |[])
                                                                                                                              |j $ %{} :Expr (:at 1533460259292) (:by |root)
                                                                                                                                :data $ {}
                                                                                                                                  |T $ %{} :Leaf (:at 1533460259641) (:by |root) (:text |:id)
                                                                                                                                  |j $ %{} :Leaf (:at 1533460261642) (:by |root) (:text |task)
                                                                                                                              |r $ %{} :Expr (:at 1526923850957) (:by |root)
                                                                                                                                :data $ {}
                                                                                                                                  |T $ %{} :Leaf (:at 1526923851454) (:by |root) (:text |div)
                                                                                                                                  |j $ %{} :Expr (:at 1526923851667) (:by |root)
                                                                                                                                    :data $ {}
                                                                                                                                      |T $ %{} :Leaf (:at 1526923852001) (:by |root) (:text |{})
                                                                                                                                  |t $ %{} :Expr (:at 1526923993779) (:by |root)
                                                                                                                                    :data $ {}
                                                                                                                                      |T $ %{} :Leaf (:at 1526924241812) (:by |root) (:text |comp-time)
                                                                                                                                      |j $ %{} :Expr (:at 1526923995210) (:by |root)
                                                                                                                                        :data $ {}
                                                                                                                                          |T $ %{} :Leaf (:at 1526923999039) (:by |root) (:text |:done-time)
                                                                                                                                          |j $ %{} :Leaf (:at 1526924000037) (:by |root) (:text |task)
                                                                                                                                  |w $ %{} :Expr (:at 1526924330995) (:by |root)
                                                                                                                                    :data $ {}
                                                                                                                                      |T $ %{} :Leaf (:at 1526924331492) (:by |root) (:text |=<)
                                                                                                                                      |j $ %{} :Leaf (:at 1526924332180) (:by |root) (:text |8)
                                                                                                                                      |r $ %{} :Leaf (:at 1526924332765) (:by |root) (:text |nil)
                                                                                                                                  |x $ %{} :Expr (:at 1526923852706) (:by |root)
                                                                                                                                    :data $ {}
                                                                                                                                      |T $ %{} :Leaf (:at 1671619545524) (:by |rJG4IHzWf) (:text |span)
                                                                                                                                      |j $ %{} :Expr (:at 1671619549545) (:by |rJG4IHzWf)
                                                                                                                                        :data $ {}
                                                                                                                                          |D $ %{} :Leaf (:at 1671619549969) (:by |rJG4IHzWf) (:text |{})
                                                                                                                                          |T $ %{} :Expr (:at 1671619550561) (:by |rJG4IHzWf)
                                                                                                                                            :data $ {}
                                                                                                                                              |D $ %{} :Leaf (:at 1671619552273) (:by |rJG4IHzWf) (:text |:inner-text)
                                                                                                                                              |T $ %{} :Expr (:at 1526923853848) (:by |root)
                                                                                                                                                :data $ {}
                                                                                                                                                  |T $ %{} :Leaf (:at 1526923855499) (:by |root) (:text |:text)
                                                                                                                                                  |j $ %{} :Leaf (:at 1526923856177) (:by |root) (:text |task)
                                                                                                                                          |b $ %{} :Expr (:at 1671619553241) (:by |rJG4IHzWf)
                                                                                                                                            :data $ {}
                                                                                                                                              |T $ %{} :Leaf (:at 1671619555872) (:by |rJG4IHzWf) (:text |:class-name)
                                                                                                                                              |b $ %{} :Leaf (:at 1671619560482) (:by |rJG4IHzWf) (:text "|\"task-content")
        |comp-week $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533460590142) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1533460591446) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1533460590142) (:by |root) (:text |comp-week)
              |r $ %{} :Expr (:at 1533460590142) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533460593862) (:by |root) (:text |week)
                  |j $ %{} :Leaf (:at 1534824897716) (:by |rJG4IHzWf) (:text |amount)
              |v $ %{} :Expr (:at 1533460595486) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533460598809) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1533460599004) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533460599347) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1533460624073) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580838204) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1667580840419) (:by |rJG4IHzWf) (:text |css-week)
                  |r $ %{} :Expr (:at 1533460599960) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533460600365) (:by |root) (:text |<>)
                      |j $ %{} :Expr (:at 1533460608014) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1533460609466) (:by |root) (:text |str)
                          |T $ %{} :Leaf (:at 1533460608825) (:by |root) (:text |week)
                          |j $ %{} :Leaf (:at 1534824909147) (:by |rJG4IHzWf) (:text "|\"th week (")
                          |r $ %{} :Leaf (:at 1534824904745) (:by |rJG4IHzWf) (:text |amount)
                          |v $ %{} :Leaf (:at 1534824905968) (:by |rJG4IHzWf) (:text "|\")")
        |comp-year $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533460525407) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1533460536111) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1533460525407) (:by |root) (:text |comp-year)
              |r $ %{} :Expr (:at 1533460525407) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533460529712) (:by |root) (:text |year)
              |v $ %{} :Expr (:at 1533460538519) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1533460542469) (:by |root) (:text |<>)
                  |f $ %{} :Leaf (:at 1534824692933) (:by |rJG4IHzWf) (:text |year)
                  |k $ %{} :Expr (:at 1667581034106) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1667581036460) (:by |rJG4IHzWf) (:text |str-spaced)
                      |L $ %{} :Leaf (:at 1667581042173) (:by |rJG4IHzWf) (:text |style/css-title)
                      |T $ %{} :Leaf (:at 1667580900045) (:by |rJG4IHzWf) (:text |css-year)
        |css-day $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580745773) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580747147) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580745773) (:by |rJG4IHzWf) (:text |css-day)
              |h $ %{} :Expr (:at 1667580745773) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580748658) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580749165) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580750324) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580750722) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1667580750722) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |100)
                          |h $ %{} :Expr (:at 1667580750722) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |ui/font-fancy)
                          |l $ %{} :Expr (:at 1667580750722) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |20)
                          |o $ %{} :Expr (:at 1667580750722) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1667580750722) (:by |rJG4IHzWf) (:text |300)
        |css-day-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1671618655727) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1671618658103) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1671618655727) (:by |rJG4IHzWf) (:text |css-day-card)
              |h $ %{} :Expr (:at 1671618655727) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1671618659511) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1671618660318) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671618661946) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1671618662775) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671618663159) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1671618711016) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618712175) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1671618718236) (:by |rJG4IHzWf) (:text "|\"4px 8px")
                          |e $ %{} :Expr (:at 1671619135847) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671619142669) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1671619142928) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671619144943) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671619146136) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1671619146461) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1671619148275) (:by |rJG4IHzWf) (:text |100)
                          |l $ %{} :Expr (:at 1671618749142) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618749142) (:by |rJG4IHzWf) (:text |:flex-shrink)
                              |b $ %{} :Leaf (:at 1671618749142) (:by |rJG4IHzWf) (:text |0)
                          |o $ %{} :Expr (:at 1671618749142) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618749142) (:by |rJG4IHzWf) (:text |:margin-right)
                              |b $ %{} :Leaf (:at 1671618844981) (:by |rJG4IHzWf) (:text |16)
                          |p $ %{} :Expr (:at 1671618837397) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618839882) (:by |rJG4IHzWf) (:text |:margin-bottom)
                              |b $ %{} :Leaf (:at 1671618843268) (:by |rJG4IHzWf) (:text |16)
                          |q $ %{} :Expr (:at 1671618756016) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618775541) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Expr (:at 1671618758805) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671618759367) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1671618763413) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1671618765020) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671618765400) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1671618765691) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1671618765926) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1671618803997) (:by |rJG4IHzWf) (:text |92)
                          |r $ %{} :Expr (:at 1671618806412) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618811041) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1671618811620) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671618812755) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1671619127153) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px ")
                                  |h $ %{} :Expr (:at 1671618819293) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671618820176) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1671618820494) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1671618820765) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1671618821878) (:by |rJG4IHzWf) (:text |0)
                                      |o $ %{} :Leaf (:at 1671618953676) (:by |rJG4IHzWf) (:text |0.1)
                          |s $ %{} :Expr (:at 1671618776584) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618778097) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1671619130003) (:by |rJG4IHzWf) (:text "|\"6px")
                          |t $ %{} :Expr (:at 1671618982435) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618985975) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1671618987931) (:by |rJG4IHzWf) (:text "|\"300ms")
                  |h $ %{} :Expr (:at 1671618968283) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671618973533) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1671618975022) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1671618975514) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1671618974268) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1671618974268) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1671618995999) (:by |rJG4IHzWf) (:text "|\"1px 1px 6px ")
                                  |h $ %{} :Expr (:at 1671618974268) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1671618974268) (:by |rJG4IHzWf) (:text |0)
                                      |o $ %{} :Leaf (:at 1671619004401) (:by |rJG4IHzWf) (:text |0.2)
        |css-day-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580789929) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580790988) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580789929) (:by |rJG4IHzWf) (:text |css-day-list)
              |h $ %{} :Expr (:at 1667580789929) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580792295) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580792636) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580794043) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |merge)
                          |b $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |ui/row)
                          |h $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |:flex-wrap)
                                  |b $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |:wrap)
                              |h $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |:border-top)
                                  |b $ %{} :Leaf (:at 1671619113090) (:by |rJG4IHzWf) (:text "|\"1px solid #f8f8f8ca")
                              |l $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |:padding-top)
                                  |b $ %{} :Leaf (:at 1671618932768) (:by |rJG4IHzWf) (:text |16)
                              |o $ %{} :Expr (:at 1667580794496) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |:padding-left)
                                  |b $ %{} :Leaf (:at 1667580794496) (:by |rJG4IHzWf) (:text |16)
        |css-time $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580624807) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580627031) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580624807) (:by |rJG4IHzWf) (:text |css-time)
              |h $ %{} :Expr (:at 1667580624807) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580628095) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580628510) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580629842) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1670583961117) (:by |rJG4IHzWf) (:text |10)
                          |h $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1671619041800) (:by |rJG4IHzWf) (:text |ui/font-code)
                          |j $ %{} :Expr (:at 1670583970524) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1670583973261) (:by |rJG4IHzWf) (:text |:vertical-align)
                              |b $ %{} :Leaf (:at 1670584019110) (:by |rJG4IHzWf) (:text |:top)
                          |l $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |70)
                          |o $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:min-width)
                              |b $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |40)
                          |q $ %{} :Expr (:at 1667580630272) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1667580630272) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-week $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580841231) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580842532) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580841231) (:by |rJG4IHzWf) (:text |css-week)
              |h $ %{} :Expr (:at 1667580841231) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580843717) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580844237) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580845467) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580845935) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1667580845935) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |100)
                          |h $ %{} :Expr (:at 1667580845935) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |ui/font-fancy)
                          |l $ %{} :Expr (:at 1667580845935) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1667580845935) (:by |rJG4IHzWf) (:text |16)
        |css-year $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1667580900701) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580902212) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1667580900701) (:by |rJG4IHzWf) (:text |css-year)
              |h $ %{} :Expr (:at 1667580900701) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1667580903301) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1667580904122) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1667580905402) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1667580905839) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1667580905839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |:border-bottom)
                              |b $ %{} :Expr (:at 1667580905839) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1667580905839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1667580905839) (:by |rJG4IHzWf) (:text |94)
        |get-done-time $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1629307651780) (:by |rJG4IHzWf) (:text |defn)
              |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |get-done-time)
              |j $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |task)
              |r $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |some?)
                      |j $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |:done-time)
                          |j $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |task)
                  |r $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |dayjs)
                      |j $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |:done-time)
                          |j $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |task)
                  |v $ %{} :Expr (:at 1629307649393) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629307649393) (:by |rJG4IHzWf) (:text |dayjs)
                      |j $ %{} :Leaf (:at 1629307663273) (:by |rJG4IHzWf) (:text "|\"2021-01-01")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1526142819106) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1526142819106) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1526142819106) (:by |root) (:text |app.comp.viewer)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306343225) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629306344568) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1629306349337) (:by |root) (:text |>>)
                        |qT $ %{} :Leaf (:at 1526923824030) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521954064051) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1526142458304) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526142466435) (:by |root) (:text |respo-ui.comp.icon)
                    |r $ %{} :Leaf (:at 1526142467254) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1526142467511) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1526142469515) (:by |root) (:text |comp-icon)
                |yx $ %{} :Expr (:at 1526924252325) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1526924255204) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629307837986) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1526924260375) (:by |root) (:text |dayjs)
                |yyT $ %{} :Expr (:at 1533964819384) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1533964821509) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1533964821885) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1533964823344) (:by |root) (:text |style)
                |z $ %{} :Expr (:at 1667580633364) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580635605) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1667580641598) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1667580641862) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1667580642998) (:by |rJG4IHzWf) (:text |defstyle)
                |zD $ %{} :Expr (:at 1667580814489) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580818644) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1667580819074) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1667580820349) (:by |rJG4IHzWf) (:text |css)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629314376948) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629314378870) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1629314376948) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1629314376948) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629314379944) (:by |rJG4IHzWf) (:text |=)
                  |j $ %{} :Leaf (:at 1629314386891) (:by |rJG4IHzWf) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629314387395) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629314389954) (:by |rJG4IHzWf) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629314390962) (:by |rJG4IHzWf) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1667579772303) (:by |rJG4IHzWf) (:text "|\"release")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1629314371787) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1629314371787) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1629314371787) (:by |rJG4IHzWf) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629307862963) (:by |root) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1693450497269) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1693450499163) (:by |rJG4IHzWf) (:text |when)
                  |L $ %{} :Leaf (:at 1693450507181) (:by |rJG4IHzWf) (:text |config/dev?)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1691990128597) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1518156280042) (:by |root) (:text ||Dispatch:)
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1629313937874) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629313939004) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1629313941968) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1629313965358) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629313969441) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |t $ %{} :Expr (:at 1533459043844) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629308242014) (:by |rJG4IHzWf) (:text |.!extend)
                  |j $ %{} :Leaf (:at 1533459047869) (:by |root) (:text |dayjs)
                  |r $ %{} :Leaf (:at 1533459052348) (:by |root) (:text |week-of-year)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308154394) (:by |rJG4IHzWf) (:text |r)
                          |j $ %{} :Leaf (:at 1629308154833) (:by |rJG4IHzWf) (:text |p)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |L $ %{} :Leaf (:at 1671619498869) (:by |rJG4IHzWf) (:text |;)
                  |j $ %{} :Leaf (:at 1629308165665) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1530675603781) (:by |root) (:text "|\"beforeunload")
                  |v $ %{} :Expr (:at 1518157458477) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518157458770) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1518157459040) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308168090) (:by |rJG4IHzWf) (:text |?)
                          |j $ %{} :Leaf (:at 1629308168983) (:by |rJG4IHzWf) (:text |e)
                      |r $ %{} :Expr (:at 1518157459864) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1629308171757) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                          |r $ %{} :Expr (:at 1518157470618) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518157474283) (:by |root) (:text |:storage)
                              |j $ %{} :Leaf (:at 1518157479270) (:by |root) (:text |schema/config)
                          |v $ %{} :Expr (:at 1518157481383) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629307821007) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1518157486267) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518157487007) (:by |root) (:text |:store)
                                  |j $ %{} :Leaf (:at 1518157490708) (:by |root) (:text |@*reel)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1629308178359) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518157507553) (:by |root) (:text |:storage)
                                  |j $ %{} :Leaf (:at 1518157512611) (:by |root) (:text |schema/config)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518157514770) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157517700) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157521057) (:by |root) (:text |do)
                          |j $ %{} :Expr (:at 1518157521635) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1645027317979) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                              |j $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                              |r $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629307807719) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
                          |n $ %{} :Expr (:at 1645027303265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645027303265) (:by |rJG4IHzWf) (:text |dispatch!)
                              |b $ %{} :Expr (:at 1691990097831) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1691990098698) (:by |rJG4IHzWf) (:text |::)
                                  |T $ %{} :Leaf (:at 1645027303265) (:by |rJG4IHzWf) (:text |:content)
                                  |b $ %{} :Expr (:at 1691990099465) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691990099465) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                      |b $ %{} :Leaf (:at 1691990099465) (:by |rJG4IHzWf) (:text |raw)
                          |q $ %{} :Expr (:at 1645027307486) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645027307486) (:by |rJG4IHzWf) (:text |dispatch!)
                              |b $ %{} :Expr (:at 1691990100865) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1691990101558) (:by |rJG4IHzWf) (:text |::)
                                  |T $ %{} :Leaf (:at 1645027307486) (:by |rJG4IHzWf) (:text |:router)
                                  |b $ %{} :Expr (:at 1691990102256) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691990102256) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1691990102256) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691990102256) (:by |rJG4IHzWf) (:text |:name)
                                          |b $ %{} :Leaf (:at 1691990102256) (:by |rJG4IHzWf) (:text |:viewer)
              |yR $ %{} :Expr (:at 1528870590347) (:by |root)
                :data $ {}
                  |L $ %{} :Leaf (:at 1645027540576) (:by |rJG4IHzWf) (:text |;)
                  |j $ %{} :Leaf (:at 1629308183007) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1528870597869) (:by |root) (:text "|\"message")
                  |v $ %{} :Expr (:at 1528870598955) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528870600022) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1528870600578) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528870601166) (:by |root) (:text |event)
                      |p $ %{} :Expr (:at 1528871723329) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1629308187092) (:by |rJG4IHzWf) (:text |js/console.log)
                          |r $ %{} :Leaf (:at 1528871738242) (:by |root) (:text "|\"Received message:")
                          |v $ %{} :Leaf (:at 1528871736907) (:by |root) (:text |event)
                      |v $ %{} :Expr (:at 1528870884335) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528870966772) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1691990085157) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1691990085966) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1691990086322) (:by |rJG4IHzWf) (:text |:content)
                              |T $ %{} :Expr (:at 1528871159805) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629307801571) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |T $ %{} :Expr (:at 1528870880335) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1528870882298) (:by |root) (:text |.-data)
                                      |T $ %{} :Leaf (:at 1528870608607) (:by |root) (:text |event)
                      |x $ %{} :Expr (:at 1528870972563) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528870980827) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1691990081617) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1691990082298) (:by |rJG4IHzWf) (:text |::)
                              |T $ %{} :Leaf (:at 1528870976563) (:by |root) (:text |:router)
                              |b $ %{} :Expr (:at 1691990083150) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691990083150) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1691990083150) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691990083150) (:by |rJG4IHzWf) (:text |:name)
                                      |b $ %{} :Leaf (:at 1691990083150) (:by |rJG4IHzWf) (:text |:viewer)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |reload!)
              |r $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |build-errors)
                  |r $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |updater)
                      |y $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1629308126988) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629308126988) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629308159741) (:by |root) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1629307873847) (:by |rJG4IHzWf) (:text |dispatch!)
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ssr?)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |some?)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document.querySelector)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yw $ %{} :Expr (:at 1667579871851) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667579871851) (:by |rJG4IHzWf) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1667579871851) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1667579871851) (:by |rJG4IHzWf) (:text |schema)
                |yy $ %{} :Expr (:at 1533459018706) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1533459022270) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629307827470) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1533459024433) (:by |root) (:text |dayjs)
                |yyT $ %{} :Expr (:at 1533459025173) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1533459034086) (:by |root) (:text "|\"dayjs/plugin/weekOfYear")
                    |r $ %{} :Leaf (:at 1629307830206) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1533459037574) (:by |root) (:text |week-of-year)
                |yyj $ %{} :Expr (:at 1629308136210) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text |build-errors)
                |yyr $ %{} :Expr (:at 1629308136210) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629308136210) (:by |rJG4IHzWf) (:text |hud!)
                |yyv $ %{} :Expr (:at 1629314454434) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629314455694) (:by |rJG4IHzWf) (:text |app.config)
                    |j $ %{} :Leaf (:at 1629314457540) (:by |rJG4IHzWf) (:text |:as)
                    |r $ %{} :Leaf (:at 1629314459142) (:by |rJG4IHzWf) (:text |config)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |config $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518157327696) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |config)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1518157346876) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518157348163) (:by |root) (:text |:storage)
                      |j $ %{} :Leaf (:at 1530675583405) (:by |root) (:text ||pudica-schedule-viewer)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |n $ %{} :Expr (:at 1526142359712) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526142361036) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1526142361759) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142362154) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1526142364967) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526142367993) (:by |root) (:text |:name)
                              |j $ %{} :Leaf (:at 1526142701437) (:by |root) (:text |:home)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1512359514709) (:by nil) (:text |:content)
                      |j $ %{} :Leaf (:at 1512359516026) (:by nil) (:text ||)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |css-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533964782235) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1667580971630) (:by |rJG4IHzWf) (:text |defstyle)
              |j $ %{} :Leaf (:at 1667580956526) (:by |rJG4IHzWf) (:text |css-title)
              |r $ %{} :Expr (:at 1667580977140) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1667580977767) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1667580972576) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1667580976273) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1533964782235) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533964789785) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1533964790169) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533964798270) (:by |root) (:text |:font-weight)
                              |j $ %{} :Leaf (:at 1533964799334) (:by |root) (:text |100)
                          |r $ %{} :Expr (:at 1533964799792) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533964803361) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1533964806266) (:by |root) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1533964778741) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1533964778741) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1533964778741) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1533964808196) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1533964808870) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1533964809170) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1533964814119) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1533964814492) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1533964814927) (:by |root) (:text |ui)
                |n $ %{} :Expr (:at 1667580960423) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1667580961689) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1667580966813) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1667580967659) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1667580969406) (:by |rJG4IHzWf) (:text |defstyle)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1691990044392) (:by |root) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691990053817) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1691990054877) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1691990055146) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1507399856471) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629307784467) (:by |root) (:text |update-states)
                          |j $ %{} :Leaf (:at 1507399858922) (:by |root) (:text |store)
                          |n $ %{} :Leaf (:at 1691990057272) (:by |rJG4IHzWf) (:text |cursor)
                          |q $ %{} :Leaf (:at 1691990057523) (:by |rJG4IHzWf) (:text |s)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691990058623) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359657160) (:by nil) (:text |:content)
                          |b $ %{} :Leaf (:at 1691990059063) (:by |rJG4IHzWf) (:text |c)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512359666053) (:by nil) (:text |assoc)
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1512359660859) (:by nil) (:text |:content)
                          |v $ %{} :Leaf (:at 1691990060197) (:by |rJG4IHzWf) (:text |c)
                  |s $ %{} :Expr (:at 1526142375493) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691990061029) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142376394) (:by |root) (:text |:router)
                          |b $ %{} :Leaf (:at 1691990062076) (:by |rJG4IHzWf) (:text |r)
                      |j $ %{} :Expr (:at 1526142376762) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526142379687) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1526142380384) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1526142381366) (:by |root) (:text |:router)
                          |v $ %{} :Leaf (:at 1691990062986) (:by |rJG4IHzWf) (:text |r)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691990063964) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1691990064388) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1691990065541) (:by |rJG4IHzWf) (:text |d)
                  |u $ %{} :Expr (:at 1691990046974) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1691990048555) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1691990046704) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691990046704) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1691990046704) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691990051418) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1691990046704) (:by |rJG4IHzWf) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1691990046704) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1691990046704) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1507399862664) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507399864640) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507399864883) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399865654) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399873143) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1507399874041) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399874214) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399874938) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1629307792396) (:by |root) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
