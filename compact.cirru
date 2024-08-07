
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  router $ :router store
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                  case-default (:name router) (<> router)
                    :home $ comp-editor (>> states :editor) (:content store)
                    :viewer $ comp-viewer (:content store)
                  comp-nav $ :name router
                  comp-upload $ :content store
                  comp-messages (:messages store)
                    {} $ :bottom? false
                    fn (info d!) (d! action/remove-one info)
                  when dev? $ comp-inspect "\"Store" store ({})
                  when dev? $ comp-reel (>> states :reel) reel ({})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            app.comp.nav :refer $ comp-nav comp-upload
            app.comp.editor :refer $ comp-editor
            app.comp.viewer :refer $ comp-viewer
            respo-ui.css :as css
            respo-message.comp.messages :refer $ comp-messages
            respo-message.action :as action
    |app.comp.editor $ %{} :FileEntry
      :defs $ {}
        |comp-editor $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-editor (states content)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :text "\""
                div
                  {}
                    :class-name $ str-spaced css/flex css/flex
                    :style $ {} (:padding "\"16px")
                  textarea $ {}
                    :value $ :text state
                    :placeholder $ :text state
                    :class-name css-textbox
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :text (:value e)
                  =< nil 16
                  div ({})
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!)
                          do
                            d! :content $ parse-cirru-edn (:text state)
                            d! :router $ {} (:name :viewer)
                      <> "\"Submit"
        |css-textbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-textbox $ {}
              "\"$0" $ merge ui/textarea
                {} (:width "\"100%") (:height 400) (:font-family ui/font-code) (:font-size 12) (:line-height "\"1.6em") (:white-space :nowrap)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.editor $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div button textarea span
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md
            respo-ui.comp.icon :refer $ comp-icon
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |app.comp.nav $ %{} :FileEntry
      :defs $ {}
        |comp-link $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-link (page icon active?)
              div
                {} (:class-name css-icon)
                  :style $ if active?
                    {} $ :color :black
                  :on-click $ fn (e d!)
                    d! :router $ {} (:name page)
                comp-i icon 16 $ hsl 200 80 70
        |comp-nav $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-nav (current-page)
              div
                {} $ :class-name css-nav
                =< 8 nil
                comp-link :home :code $ = current-page :home
                =< 8 nil
                comp-link :viewer :monitor $ = current-page :viewer
        |comp-upload $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-upload (content)
              div
                {}
                  :class-name $ str-spaced css-icon css-place-upload
                  :on-click $ fn (e d!) (hint-fn async)
                    js-await $ .!post axios "\"https://data-backs.chenyong.life/data/pudica-schedule-viewer" (to-js-data content)
                    d! action/create $ {} (:text "\"uploaded")
                      :token $ nanoid
                comp-i :upload-cloud 16 $ hsl 200 80 70
        |css-icon $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-icon $ {}
              "\"$0" $ {} (:margin "\"8") (:font-size 16) (:cursor :pointer)
                :color $ hsl 0 0 70
        |css-nav $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-nav $ {}
              "\"$0" $ merge ui/row
                {} (:position :absolute) (:bottom 0) (:right 0) (:padding 8) (:justify-content :flex-end)
                  :background-color $ hsl 0 0 96
                  :gap 4
        |css-place-upload $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-place-upload $ {}
              "\"$0" $ {} (:position :absolute) (:top 8) (:right 8)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.nav $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md
            feather.core :refer $ comp-i
            respo.css :refer $ defstyle
            respo-message.action :as action
            "\"axios" :default axios
            "\"nanoid" :refer $ nanoid
    |app.comp.viewer $ %{} :FileEntry
      :defs $ {}
        |by-larger $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn by-larger (x y)
              &compare (nth y 0) (nth x 0)
        |by-latest-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn by-latest-task (task-a task-b)
              let
                  ret $ if
                    = (:done-time task-b) (:done-time task-a)
                    < (:archived-time task-b) (:archived-time task-a)
                    < (:done-time task-b) (:done-time task-a)
                if ret 1 -1
        |comp-active-tasks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-active-tasks (tasks)
              list->
                {} $ :style
                  {} (:padding "\"4px 8px")
                    :background-color $ hsl 20 80 97
                    :border $ str "\"1px solid " (hsl 20 80 84)
                    :border-radius "\"0px"
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
        |comp-day $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-day (day month-date amount)
              div
                {} $ :class-name css-day
                <> $ case-default day (str "\"Invalid:" day) (0 "\"Sun") (1 "\"Mon") (2 "\"Tue") (3 "\"Wed") (4 "\"Thu") (5 "\"Fri") (6 "\"Sat")
                =< 8 nil
                <> month-date $ {} (:font-size 12)
                  :color $ hsl 0 0 0
                =< 8 nil
                <> (str "\"(" amount "\")")
                  {} $ :font-size 12
        |comp-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-time (time)
              span
                {} $ :class-name css-time
                if (nil? time) (<> "\"??:??")
                  <> $ .!format (dayjs time) "\"HH:mm"
        |comp-viewer $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-viewer (content)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16) (:overflow :auto) (:padding-bottom 200)
                div
                  {} (:class-name style/css-title)
                    :style $ {}
                      :color $ hsl 0 0 70
                  <> "\"Tasks"
                comp-active-tasks $ :tasks content
                =< nil 64
                div
                  {} (:class-name style/css-title)
                    :style $ {}
                      :color $ hsl 0 0 80
                  <> "\"Archived"
                let
                    tasks $ -> (:archives content)
                      or $ {}
                      .to-list
                      .map last
                    tasks-by-year $ -> tasks
                      .group-by $ fn (task)
                        .!year $ get-done-time task
                      .to-list
                      .sort by-larger
                      .map $ fn (pair)
                        let[] (k tasks) pair $ [] k
                          -> tasks
                            .group-by $ fn (task)
                              .!week $ get-done-time task
                            .to-list
                            .sort by-larger
                            .map $ fn (pair)
                              let[] (k tasks) pair $ [] k
                                -> tasks
                                  .group-by $ fn (task)
                                    .!day $ get-done-time task
                                  .to-list
                                  .sort by-larger
                  list->
                    {} $ :class-name css/column
                    -> tasks-by-year $ map
                      fn (pair)
                        let[] (year tasks-by-week) pair $ [] year
                          div
                            {} $ :class-name css/column
                            comp-year year
                            =< 8 nil
                            list->
                              {} $ :class-name css/column
                              -> tasks-by-week $ map
                                fn (pair)
                                  let[] (week tasks-by-day) pair $ [] week
                                    div
                                      {} (:class-name css/column)
                                        :style $ {} (:padding-top 16)
                                      comp-week week $ -> tasks-by-day
                                        or $ []
                                        .map last
                                        .map count
                                        .reduce 0 &+
                                      list->
                                        {} $ :class-name css-day-list
                                        -> tasks-by-day
                                          or $ []
                                          map $ fn (pair)
                                            let[] (day tasks) pair $ [] day
                                              div
                                                {} $ :class-name (str-spaced css/column css-day-card)
                                                comp-day day
                                                  .!format
                                                    get-done-time $ first tasks
                                                    , "\"MM-DD"
                                                  count tasks
                                                list->
                                                  {} $ :style
                                                    {} (:padding-left 8) (:min-width 240)
                                                  -> tasks (sort by-latest-task)
                                                    map $ fn (task)
                                                      [] (:id task)
                                                        div ({})
                                                          comp-time $ :done-time task
                                                          =< 8 nil
                                                          span $ {}
                                                            :inner-text $ :text task
                                                            :class-name "\"task-content"
        |comp-week $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-week (week amount)
              div
                {} $ :class-name css-week
                <> $ str week "\"th week (" amount "\")"
        |comp-year $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-year (year)
              <> year $ str-spaced style/css-title css-year
        |css-day $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-day $ {}
              "\"$0" $ {} (:font-weight 100) (:font-family ui/font-fancy) (:font-size 20) (:font-weight 300)
        |css-day-card $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-day-card $ {}
              "\"$0" $ {} (:padding "\"4px 8px")
                :background-color $ hsl 0 0 100
                :flex-shrink 0
                :margin-right 16
                :margin-bottom 16
                :border $ str "\"1px solid " (hsl 0 0 92)
                :box-shadow $ str "\"1px 1px 4px " (hsl 0 0 0 0.1)
                :border-radius "\"6px"
                :transition-duration "\"300ms"
              "\"$0:hover" $ {}
                :box-shadow $ str "\"1px 1px 6px " (hsl 0 0 0 0.2)
        |css-day-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-day-list $ {}
              "\"$0" $ merge ui/row
                {} (:flex-wrap :wrap) (:border-top "\"1px solid #f8f8f8ca") (:padding-top 16) (:padding-left 16)
        |css-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-time $ {}
              "\"$0" $ {} (:font-size 10) (:font-family ui/font-code) (:vertical-align :top)
                :color $ hsl 0 0 70
                :min-width 40
                :display :inline-block
        |css-week $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-week $ {}
              "\"$0" $ {} (:font-weight 100) (:font-family ui/font-fancy) (:font-size 16)
        |css-year $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-year $ {}
              "\"$0" $ {}
                :border-bottom $ str "\"1px solid " (hsl 0 0 94)
        |get-done-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-done-time (task)
              if
                some? $ :done-time task
                dayjs $ :done-time task
                dayjs "\"2021-01-01"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.viewer $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div button textarea span
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md
            app.schema :refer $ dev?
            respo-ui.comp.icon :refer $ comp-icon
            "\"dayjs" :default dayjs
            app.style :as style
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ js/console.log |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              .!extend dayjs week-of-year
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              listen-devtools! |a dispatch!
              ; js/window.addEventListener "\"beforeunload" $ fn (? e)
                js/localStorage.setItem (:storage schema/config)
                  format-cirru-edn $ :store @*reel
              let
                  raw $ js/localStorage.getItem (:storage schema/config)
                if (some? raw)
                  do
                    ; dispatch! :hydrate-storage $ parse-cirru-edn raw
                    dispatch! $ :: :content (parse-cirru-edn raw)
                    dispatch! $ :: :router
                      {} $ :name :viewer
              ; js/window.addEventListener "\"message" $ fn (event) (js/console.log "\"Received message:" event)
                dispatch! $ :: :content
                  parse-cirru-edn $ .-data event
                dispatch! $ :: :router
                  {} $ :name :viewer
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.schema :as schema
            "\"dayjs" :default dayjs
            "\"dayjs/plugin/weekOfYear" :default week-of-year
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
            app.config :as config
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |config $ %{} :CodeEntry (:doc |)
          :code $ quote
            def config $ {} (:storage |pudica-schedule-viewer)
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :router $ {} (:name :home)
              :content |
              :messages $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |css-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-title $ {}
              "\"$0" $ {} (:font-weight 100) (:font-family ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.style $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:content c) (assoc store :content c)
                (:router r) (assoc store :router r)
                (:hydrate-storage d) d
                _ $ if
                  action/message-action? $ nth op 0
                  update store :messages $ fn (messages)
                    update-messages messages (nth op 0) (nth op 1) op-id op-time
                  do (eprintln "\"Unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
            respo-message.action :as action
            respo-message.updater :refer $ update-messages
