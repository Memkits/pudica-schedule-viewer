
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.editor $ {}
      :ns $ quote
        ns app.comp.editor $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp cursor-> action-> mutation-> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.schema :refer $ [] dev?
          [] respo-ui.comp.icon :refer $ [] comp-icon
      :defs $ {}
        |comp-editor $ quote
          defcomp comp-editor (states content)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :text "\""
              div
                {} $ :style
                  merge ui/flex ui/column $ {} (:padding "\"16px")
                textarea $ {}
                  :value $ :text state
                  :placeholder $ :text state
                  :style $ merge ui/textarea
                    {} (:width "\"100%") (:height 400) (:font-family ui/font-code) (:font-size 12) (:line-height "\"1.6em") (:white-space :nowrap)
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :text (:value e)
                =< nil 16
                div ({})
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        do
                          d! :content $ parse-cirru-edn (:text state)
                          d! :router $ {} (:name :viewer)
                    <> "\"Submit"
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.schema :refer $ [] dev?
          [] app.comp.nav :refer $ [] comp-nav
          [] app.comp.editor :refer $ [] comp-editor
          [] app.comp.viewer :refer $ [] comp-viewer
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                router $ :router store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                case (:name router)
                  :home $ comp-editor (>> states :editor) (:content store)
                  :viewer $ comp-viewer (:content store)
                  <> router
                comp-nav $ :name router
                when dev? $ comp-reel (>> states :reel) reel ({})
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"env" (get-env "\"mode")
        |store $ quote
          def store $ {}
            :states $ {}
            :router $ {} (:name :home)
            :content |
        |config $ quote
          def config $ {} (:storage |pudica-schedule-viewer)
    |app.comp.viewer $ {}
      :ns $ quote
        ns app.comp.viewer $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> list-> <> div button textarea span
          [] verbosely.core :refer $ [] verbosely!
          [] respo.comp.space :refer $ [] =<
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.schema :refer $ [] dev?
          [] respo-ui.comp.icon :refer $ [] comp-icon
          [] cljs.reader :refer $ [] read-string
          [] "\"dayjs" :default dayjs
          [] app.style :as style
      :defs $ {}
        |comp-time $ quote
          defcomp comp-time (time)
            span
              {} $ :style
                {} (:font-size 13) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 70
                  :min-width 40
                  :display :inline-block
              if (nil? time) (<> "\"??:??")
                <> $ .!format (dayjs time) "\"HH:mm"
        |comp-week $ quote
          defcomp comp-week (week amount)
            div
              {} $ :style
                merge style/title $ {} (:font-size 16)
              <> $ str week "\"th week (" amount "\")"
        |comp-year $ quote
          defcomp comp-year (year)
            <> year $ merge style/title
              {} $ :border-bottom
                str "\"1px solid " $ hsl 0 0 94
        |comp-active-tasks $ quote
          defcomp comp-active-tasks (tasks)
            list->
              {} $ :style
                {} $ :padding-left 16
              -> tasks
                or $ {}
                .to-list
                .sort-by $ fn (pair)
                  :sort-id $ last pair
                map $ fn (pair)
                  let[] (k task) pair $ [] k
                    div ({})
                      comp-time $ :created-time task
                      =< 8 nil
                      <> $ :text task
        |comp-day $ quote
          defcomp comp-day (day month-date amount)
            div
              {} $ :style
                merge style/title $ {} (:font-size 20) (:font-weight 300)
              <> $ case-default day (str "\"Invalid:" day) (0 "\"Sun") (1 "\"Mon") (2 "\"Tue") (3 "\"Wed") (4 "\"Thu") (5 "\"Fri") (6 "\"Sat")
              =< 8 nil
              <> month-date $ {} (:font-size 12)
                :color $ hsl 0 0 0
              =< 8 nil
              <> (str "\"(" amount "\")")
                {} $ :font-size 12
        |get-done-time $ quote
          defn get-done-time (task)
            if
              some? $ :done-time task
              dayjs $ :done-time task
              dayjs "\"2021-01-01"
        |by-larger $ quote
          defn by-larger (x y) (&compare y x)
        |comp-viewer $ quote
          defcomp comp-viewer (content)
            div
              {} $ :style
                merge ui/flex $ {} (:padding 16) (:overflow :auto) (:padding-bottom 200)
              div
                {} $ :style
                  merge style/title $ {}
                    :color $ hsl 0 0 70
                <> "\"Tasks"
              comp-active-tasks $ :tasks content
              =< nil 64
              div
                {} $ :style
                  merge style/title $ {}
                    :color $ hsl 0 0 80
                <> "\"Archived"
              let
                  tasks $ -> (:archives content)
                    or $ {}
                    .to-list
                    .map last
                  tasks-by-year $ -> tasks
                    .group-by $ fn (task)
                      .year $ get-done-time task
                    .to-list
                    .sort by-larger
                    .map $ fn (pair)
                      let[] (k tasks) pair $ [] k
                        -> tasks
                          .group-by $ fn (task)
                            .week $ get-done-time task
                          .to-list
                          .sort by-larger
                          .map $ fn (pair)
                            let[] (k tasks) pair $ [] k
                              -> tasks
                                .group-by $ fn (task)
                                  .day $ get-done-time task
                                .to-list
                                .sort by-larger
                list->
                  {} $ :style ui/column
                  -> tasks-by-year $ map
                    fn (pair)
                      let[] (year tasks-by-week) pair $ [] year
                        div
                          {} $ :style ui/column
                          comp-year year
                          =< 8 nil
                          list->
                            {} $ :style ui/column
                            -> tasks-by-week $ map
                              fn (pair)
                                let[] (week tasks-by-day) pair $ [] week
                                  div
                                    {} $ :style
                                      merge ui/column $ {} (:padding-top 16)
                                    comp-week week $ -> tasks-by-day
                                      or $ []
                                      .map last
                                      .map count
                                      .reduce 0 &+
                                    list->
                                      {} $ :style
                                        merge ui/row $ {} (:flex-wrap :wrap) (:border-top "\"1px solid #ddd") (:padding-top 8) (:padding-left 16)
                                      -> tasks-by-day
                                        or $ []
                                        map $ fn (pair)
                                          let[] (day tasks) pair $ [] day
                                            div
                                              {} $ :style
                                                merge ui/column $ {} (:flex-shrink 0) (:margin-right 32)
                                              comp-day day
                                                .format
                                                  get-done-time $ first tasks
                                                  , "\"MM-DD"
                                                count tasks
                                              list->
                                                {} $ :style
                                                  {} (:padding-left 16) (:min-width 240)
                                                -> tasks (sort by-latest-task)
                                                  map $ fn (task)
                                                    [] (:id task)
                                                      div ({})
                                                        comp-time $ :done-time task
                                                        =< 8 nil
                                                        <> $ :text task
        |by-latest-task $ quote
          defn by-latest-task (task-a task-b)
            if
              = (:done-time task-b) (:done-time task-a)
              < (:archived-time task-b) (:archived-time task-a)
              < (:done-time task-b) (:done-time task-a)
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :router $ assoc store :router op-data
              :hydrate-storage op-data
    |app.comp.nav $ {}
      :ns $ quote
        ns app.comp.nav $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.schema :refer $ [] dev?
          [] feather.core :refer $ [] comp-i
      :defs $ {}
        |comp-link $ quote
          defcomp comp-link (page icon active?)
            div
              {}
                :style $ merge style-icon
                  if active? $ {} (:color :black)
                :on-click $ fn (e d!)
                  d! :router $ {} (:name page)
              comp-i icon 16 $ hsl 200 80 70
        |comp-nav $ quote
          defcomp comp-nav (current-page)
            div
              {} $ :style
                merge ui/row $ {} (:padding 8) (:justify-content :flex-end)
                  :background-color $ hsl 0 0 96
              comp-link :home :code $ = current-page :home
              =< 8 nil
              comp-link :viewer :monitor $ = current-page :viewer
        |style-icon $ quote
          def style-icon $ {} (:margin "\"8") (:font-size 16) (:cursor :pointer)
            :color $ hsl 0 0 70
    |app.style $ {}
      :ns $ quote
        ns app.style $ :require ([] respo-ui.core :as ui)
      :defs $ {}
        |title $ quote
          def title $ {} (:font-weight 100) (:font-family ui/font-fancy)
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          [] "\"dayjs" :default dayjs
          [] "\"dayjs/plugin/weekOfYear" :default week-of-year
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          app.config :as config
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            if config/dev? $ load-console-formatter!
            .!extend dayjs week-of-year
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            ; js/window.addEventListener "\"beforeunload" $ fn (? e)
              js/localStorage.setItem (:storage schema/config)
                format-cirru-edn $ :store @*reel
            ; let
                raw $ js/localStorage.getItem (:storage schema/config)
              if (some? raw)
                do $ dispatch! :hydrate-storage (parse-cirru-edn raw)
            ; js/window.addEventListener "\"message" $ fn (event) (js/console.log "\"Received message:" event)
              dispatch! :content $ parse-cirru-edn (.-data event)
              dispatch! :router $ {} (:name :viewer)
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
