
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store-value)
            let
                store store-value
                states $ :states store
                router $ :router store
                route-name $ :name router
              div
                {} $ :class-name $ str-spaced css/global css/fullscreen css/column
                match route-name
                  :home $ let
                      editor-states $ decode-map-as (>> states :editor) (Map respo.schema/CoordKey app.schema/DraftStateValue)
                      cursor $ decode-map-as
                        .unwrap $ get editor-states :cursor
                        List respo.schema/CoordKey
                      state $ decode-map-as
                        match (get editor-states :data)
                          (:some value)
                            if value value $ {} $ :text |
                          (:none)
                            {} $ :text |
                        Map Tag String
                    comp-editor cursor state
                  :viewer $ comp-viewer $ :schedule (:content store)
                  _ $ <> |Unknown
                comp-nav route-name
                comp-upload $ :content store
                if dev?
                  Some $ comp-inspect |Store store $ {}
                  , None
          :examples $ []
          :schema $ quote $ Fn app.schema/Store (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            app.config :refer $ dev?
            app.comp.nav :refer $ comp-nav comp-upload
            app.comp.editor :refer $ comp-editor
            app.comp.viewer :refer $ comp-viewer
            respo-ui.css :as css
    'app.comp.editor $ %{} 'FileEntry
      :defs $ {}
        'comp-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-editor (cursor state)
            div
              {}
                :class-name $ str-spaced css/flex css/flex
                :style $ {} $ :padding |16px
              textarea $ {}
                :value $ .unwrap $ get state :text
                :placeholder $ .unwrap $ get state :text
                :class-name css-textbox
                :on-input $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn schema/Op $ -> Unit
                    -> Unit
                  d! $ schema/Op :states cursor $ assoc state :text
                    decode-map-as (:value e) 'String
                  , &unit
              space-x 0
              div ({})
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e d!)
                      d! $ schema/Op :content $ schema/read-schedule-document
                        parse-cirru-edn $ .unwrap $ get state :text
                      d! $ schema/Op :router $ schema/Router :name :viewer
                  <> |Submit
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) (Map Tag String) (-> respo.schema/Component)
        'css-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-textbox
            {} $ |$0 $ {} (:outline :none)
              :border $ str "|1px solid " $ hsl 0 0 80
              :font-size 12
              :font-family ui/font-code
              :border-radius |4px
              :padding 8
              :min-width 240
              :vertical-align :top
              :width |100%
              :height 400
              :line-height |1.6em
              :white-space :nowrap
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.editor
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div button textarea span
            respo.comp.space :refer $ space-x
            respo-ui.comp.icon :refer $ comp-icon
            respo.css :refer $ defstyle
            respo-ui.css :as css
            app.schema :as schema
    'app.comp.nav $ %{} 'FileEntry
      :defs $ {}
        'begin-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn begin-upload (content)
            js-cast
              uploadSchedule $ :original content
              , 'js-ffi.shared/PromiseHost
          :examples $ []
          :schema $ quote $ Fn schema/ScheduleDocument (-> js-ffi.shared/PromiseHost) (:features :js-ffi)
        'comp-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-link (page icon active?)
            div
              {} (:class-name css-icon)
                :style $ if active?
                  {} $ :color |black
                  {}
                :on-click $ fn (e d!)
                  d! $ schema/Op :router $ schema/Router :name page
              <> $ if (= icon :code) |Edit |View
          :examples $ []
          :schema $ quote $ Fn Tag Tag Bool (-> respo.schema/Component)
        'comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-nav (current-page)
            div
              {} $ :class-name css-nav
              space-x 8
              comp-link :home :code $ = current-page :home
              space-x 8
              comp-link :viewer :monitor $ = current-page :viewer
          :examples $ []
          :schema $ quote $ Fn Tag (-> respo.schema/Component)
        'comp-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-upload (content)
            div
              {}
                :class-name $ str-spaced css-icon css-place-upload
                :on-click $ fn (e d!) (hint-fn Async)
                  js-await $ upload-schedule! content
              <> |Upload
          :examples $ []
          :schema $ quote $ Fn schema/ScheduleDocument (-> respo.schema/Component) (:features :js-ffi)
        'css-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-icon
            {} $ |$0 $ {} (:margin |8) (:font-size 16) (:cursor :pointer)
              :color $ hsl 0 0 70
          :examples $ []
          :schema $ quote String
        'css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav
            {} $ |$0 $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row) (:position :absolute) (:bottom 0) (:right 0) (:padding 8) (:justify-content :flex-end)
              :background-color $ hsl 0 0 96
              :gap 4
          :examples $ []
          :schema $ quote String
        'css-place-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-place-upload
            {} $ |$0 $ {} (:position :absolute) (:top 8) (:right 8)
          :examples $ []
          :schema $ quote String
        'upload-schedule! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn upload-schedule! (content) (hint-fn Async)
            js-await $ begin-upload content
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ScheduleDocument (-> Unit) (:features :js-ffi) (:async)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.nav
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ space-x
            respo.css :refer $ defstyle
            |../upload.mjs :refer $ uploadSchedule
            app.schema :as schema
    'app.comp.viewer $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc "|Typed Dayjs methods used by schedule rendering.")
          :code $ quote $ deftrait DayjsHost
            .format $ Fn app.comp.viewer/DayjsHost String $ -> String
            .year $ Fn app.comp.viewer/DayjsHost $ -> Number
            .week $ Fn app.comp.viewer/DayjsHost $ -> Number
            .day $ Fn app.comp.viewer/DayjsHost $ -> Number
            .startOf $ Fn app.comp.viewer/DayjsHost String $ -> app.comp.viewer/DayjsHost
            .add $ Fn app.comp.viewer/DayjsHost Number String $ -> app.comp.viewer/DayjsHost
            .diff $ Fn app.comp.viewer/DayjsHost app.comp.viewer/DayjsHost String $ -> Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:add |add) (:day |day) (:diff |diff) (:format |format) (:startOf |startOf) (:week |week) (:year |year)
          :schema $ quote Trait
        'DayjsInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DayjsInput Number String
          :examples $ []
          :schema $ quote UnionDef
        'ScheduleRowItem $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ScheduleRowItem String Number respo.schema/Element respo.schema/Component
          :examples $ []
          :schema $ quote UnionDef
        'add-days $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-days (value amount) (value .add amount |day)
          :examples $ []
          :schema $ quote $ Fn DayjsHost Number (-> DayjsHost) (:features :js-ffi)
        'by-larger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn by-larger (x y) (&compare y x)
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
        'by-latest-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn by-latest-task (task-a task-b)
            let
                done-a $ .unwrap-or (:done-time task-a) 0
                done-b $ .unwrap-or (:done-time task-b) 0
                archived-a $ .unwrap-or (:archived-time task-a) 0
                archived-b $ .unwrap-or (:archived-time task-b) 0
                ret $ if (= done-b done-a) (< archived-b archived-a) (< done-b done-a)
              if ret -1 1
          :examples $ []
          :schema $ quote $ Fn schema/Task schema/Task (-> Number)
        'comp-active-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-active-tasks (tasks)
            list->
              {} $ :style $ {} (:padding "|4px 8px")
                :background-color $ hsl 20 80 97
                :border $ str "|1px solid " $ hsl 20 80 84
                :border-radius |0px
              -> tasks (distinct-values) (&set:to-list)
                sort $ fn (task-a task-b)
                  hint-fn $ Fn schema/Task schema/Task $ -> Number
                  &compare (:created-time task-a) (:created-time task-b)
                map $ fn (task)
                  hint-fn $ Fn schema/Task $ -> (List ScheduleRowItem)
                  [] (:id task)
                    div ({})
                      comp-time $ Some $ :created-time task
                      space-x 8
                      <> $ :text task
          :examples $ []
          :schema $ quote $ Fn (Map String schema/Task) (-> respo.schema/Component)
        'comp-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-day (day month-date amount)
            div
              {} $ :class-name css-day
              <> $ match day (0 |Sun) (1 |Mon) (2 |Tue) (3 |Wed) (4 |Thu) (5 |Fri) (6 |Sat)
                _ $ str |Invalid: day
              space-x 8
              <> month-date $ {} (:font-size 12)
                :color $ hsl 0 0 0
              space-x 8
              <> (str "|(" amount "|)")
                {} $ :font-size 12
          :examples $ []
          :schema $ quote $ Fn Number String Number (-> respo.schema/Component)
        'comp-day-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-day-card (day tasks week-start)
            div
              {} $ :class-name $ str-spaced css/column css-day-card
              comp-day day
                if-let
                  task $ assert-type (first tasks) (Option schema/Task)
                  format-dayjs (get-done-time task) |MM-DD
                  format-dayjs (add-days week-start day) |MM-DD
                .len tasks
              list->
                {} $ :class-name css-tasks-container
                -> tasks (sort by-latest-task)
                  map $ fn (task)
                    hint-fn $ Fn schema/Task $ -> (List ScheduleRowItem)
                    [] (:id task)
                      div
                        {} $ :class-name css-task-item
                        div
                          {} $ :class-name css-task-text
                          <> $ :text task
                        div
                          {} $ :class-name css-task-top
                          comp-time $ :done-time task
                          span
                            {} $ :class-name css-task-duration
                            <> $ format-duration task
          :examples $ []
          :schema $ quote $ Fn Number (List schema/Task) DayjsHost (-> respo.schema/Component)
        'comp-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-time (time)
            span
              {} $ :class-name css-time
              match time
                (:some value)
                  <> $ format-dayjs (make-dayjs value) |HH:mm
                (:none) (<> |??:??)
          :examples $ []
          :schema $ quote $ Fn (Option Number) (-> respo.schema/Component)
        'comp-viewer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-viewer (content)
            let
                tasks $ &set:to-list $ distinct-values (:archives content)
                tasks-by-year $ assert-type
                  group-by tasks $ fn (task)
                    hint-fn $ Fn schema/Task $ -> Number
                    dayjs-year $ get-done-time task
                  Map Number $ List schema/Task
                years $ sort
                  &set:to-list $ keys tasks-by-year
                  , by-larger
              div
                {} $ :style $ {} (:flex 1) (:padding 16) (:overflow :auto) (:padding-bottom 200)
                div
                  {} (:class-name style/css-title)
                    :style $ {} $ :color (hsl 0 0 70)
                  <> |Tasks
                comp-active-tasks $ :tasks content
                space-x 0
                div
                  {} (:class-name style/css-title)
                    :style $ {} $ :color (hsl 0 0 80)
                  <> |Archived
                list->
                  {} $ :class-name css/column
                  map years $ fn (year)
                    hint-fn $ Fn Number $ -> (List ScheduleRowItem)
                    let
                        tasks-in-year $ assert-type
                          .unwrap-or (get tasks-by-year year) ([])
                          List schema/Task
                        tasks-by-week $ assert-type
                          group-by tasks-in-year $ fn (task)
                            hint-fn $ Fn schema/Task $ -> Number
                            dayjs-week $ get-done-time task
                          Map Number $ List schema/Task
                        weeks $ sort
                          &set:to-list $ keys tasks-by-week
                          , by-larger
                      [] year $ div
                        {} $ :class-name css/column
                        comp-year year
                        space-x 8
                        list->
                          {} $ :class-name css/column
                          map weeks $ fn (week)
                            hint-fn $ Fn Number $ -> (List ScheduleRowItem)
                            let
                                tasks-in-week $ assert-type
                                  .unwrap-or (get tasks-by-week week) ([])
                                  List schema/Task
                                tasks-by-day $ assert-type
                                  group-by tasks-in-week $ fn (task)
                                    hint-fn $ Fn schema/Task $ -> Number
                                    dayjs-day $ get-done-time task
                                  Map Number $ List schema/Task
                                days $ -> (range 1 6)
                                  concat $ &set:to-list $ keys tasks-by-day
                                  distinct
                                  sort &compare
                                week-start $ match (first tasks-in-week)
                                  (:some task)
                                    start-of-week $ get-done-time task
                                  (:none) (current-dayjs)
                                amount $ -> days
                                  map $ fn (day)
                                    hint-fn $ Fn Number $ -> Number
                                    .len $ assert-type
                                      .unwrap-or (get tasks-by-day day) ([])
                                      List schema/Task
                                  reduce 0 &+
                              [] week $ div
                                {} (:class-name css/column)
                                  :style $ {} $ :padding-top 16
                                comp-week week amount week-start
                                list->
                                  {} $ :class-name css-day-list
                                  -> days (reverse)
                                    map $ fn (day)
                                      hint-fn $ Fn Number $ -> (List ScheduleRowItem)
                                      [] day $ comp-day-card day
                                        assert-type
                                          .unwrap-or (get tasks-by-day day) ([])
                                          List schema/Task
                                        , week-start
          :examples $ []
          :schema $ quote $ Fn schema/Schedule (-> respo.schema/Component)
        'comp-week $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-week (week amount week-start)
            div
              {} $ :class-name css-week
              <> $ str week "|th week (" amount "|)"
              space-x 8
              span
                {} $ :style $ {} (:font-size 12)
                  :color $ hsl 0 0 60
                  :font-family ui/font-normal
                <> $ let
                    end $ add-days week-start 4
                  str (format-dayjs week-start |YYYY-MM-DD) "| ~ " $ format-dayjs end |YYYY-MM-DD
          :examples $ []
          :schema $ quote $ Fn Number Number DayjsHost (-> respo.schema/Component)
        'comp-year $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-year (year)
            <> (str year) (str-spaced style/css-title css-year)
          :examples $ []
          :schema $ quote $ Fn Number (-> respo.schema/Component)
        'css-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-day
            {} $ |$0 $ {} (:font-weight |300) (:font-family ui/font-fancy) (:font-size 20)
          :examples $ []
          :schema $ quote String
        'css-day-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-day-card
            {}
              |$0 $ {} (:padding "|4px 8px")
                :background-color $ hsl 0 0 100
                :flex-shrink |0
                :border $ str "|1px solid " $ hsl 0 0 92
                :box-shadow $ str "|1px 1px 4px " $ hsl 0 0 0 0.1
                :border-radius |6px
                :transition-duration |300ms
                :width 320
                :min-height 72
              |$0:hover $ {} $ :box-shadow
                str "|1px 1px 6px " $ hsl 0 0 0 0.2
          :examples $ []
          :schema $ quote String
        'css-day-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-day-list
            {} $ |$0 $ {} (:display |flex) (:align-items :stretch) (:flex-direction |row) (:flex-wrap :wrap) (:border-top "|1px solid #f8f8f8ca") (:padding-top 16) (:padding-left 16) (:gap 16)
          :examples $ []
          :schema $ quote String
        'css-task-duration $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-task-duration
            {} $ |$0 $ {} (:font-size 12)
              :color $ hsl 0 0 70
          :examples $ []
          :schema $ quote String
        'css-task-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-task-item
            {} $ |$0 $ {} (:display :flex) (:flex-direction :column) (:margin-bottom 4)
          :examples $ []
          :schema $ quote String
        'css-task-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-task-text
            {} $ |$0 $ {} (:flex |1) (:text-align :left) (:line-height |1.4em) (:padding-top 2)
          :examples $ []
          :schema $ quote String
        'css-task-top $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-task-top
            {} $ |$0 $ {} (:display :flex) (:align-items :center) (:gap 8) (:line-height |14px)
          :examples $ []
          :schema $ quote String
        'css-tasks-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-tasks-container
            {} $ |$0 $ {} (:padding-left 4) (:min-width 200) (:display :flex) (:flex-direction :column) (:gap 4)
          :examples $ []
          :schema $ quote String
        'css-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-time
            {} $ |$0 $ {} (:font-size 10) (:font-family ui/font-code) (:vertical-align :top)
              :color $ hsl 0 0 70
              :min-width 40
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-week $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-week
            {} $ |$0 $ {} (:font-weight |100) (:font-family ui/font-fancy) (:font-size 16)
          :examples $ []
          :schema $ quote String
        'css-year $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-year
            {} $ |$0 $ {}
              :border-bottom $ str "|1px solid " $ hsl 0 0 94
          :examples $ []
          :schema $ quote String
        'current-dayjs $ %{} 'CodeEntry
          :doc "|Create a typed Dayjs value for the current time."
          :code $ quote $ defn current-dayjs ()
            js-cast (dayjs) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ quote $ Fn (-> DayjsHost) (:features :js-ffi)
        'dayjs-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dayjs-day (value) (value .day)
          :examples $ []
          :schema $ quote $ Fn DayjsHost (-> Number) (:features :js-ffi)
        'dayjs-week $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dayjs-week (value) (value .week)
          :examples $ []
          :schema $ quote $ Fn DayjsHost (-> Number) (:features :js-ffi)
        'dayjs-year $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dayjs-year (value) (value .year)
          :examples $ []
          :schema $ quote $ Fn DayjsHost (-> Number) (:features :js-ffi)
        'diff-days $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn diff-days (later earlier) (later .diff earlier |day)
          :examples $ []
          :schema $ quote $ Fn DayjsHost DayjsHost (-> Number) (:features :js-ffi)
        'format-dayjs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-dayjs (value pattern) (value .format pattern)
          :examples $ []
          :schema $ quote $ Fn DayjsHost String (-> String) (:features :js-ffi)
        'format-duration $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-duration (task)
            let
                done $ get-done-time task
                created $ make-dayjs $ :created-time task
                days $ diff-days done created
              str (+ days 1) |d
          :examples $ []
          :schema $ quote $ Fn schema/Task (-> String)
        'get-done-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-done-time (task)
            match (:done-time task)
              (:some value) (make-dayjs value)
              (:none) (make-dayjs |2021-01-01)
          :examples $ []
          :schema $ quote $ Fn schema/Task (-> DayjsHost)
        'make-dayjs $ %{} 'CodeEntry
          :doc "|Narrow one Dayjs constructor result to the reviewed host trait."
          :code $ quote $ defn make-dayjs (value)
            js-cast (dayjs value) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ quote $ Fn DayjsInput (-> DayjsHost) (:features :js-ffi)
        'start-of-week $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn start-of-week (value) (value .startOf |week)
          :examples $ []
          :schema $ quote $ Fn DayjsHost (-> DayjsHost) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.viewer
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div button textarea span
            respo.comp.space :refer $ space-x
            app.schema :as schema
            respo-ui.comp.icon :refer $ comp-icon
            |dayjs :default dayjs
            app.style :as style
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.config $ %{} 'FileEntry
      :defs $ {} $ 'dev?
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            let
                mode $ .unwrap-or (get-env |mode) |release
              = mode |dev
          :examples $ []
          :schema $ quote Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel schema/store
          :examples $ []
          :schema $ quote $ Ref schema/Store
        'DayjsFactoryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsFactoryHost
            .extend! $ Fn app.main/DayjsFactoryHost JsObject $ -> app.main/DayjsFactoryHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :extend! |extend
          :schema $ quote Trait
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ updater @*reel op (generate-id!) (now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :io :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            let
                dayjs-host $ unsafe-coerce dayjs DayjsFactoryHost
                plugin $ unsafe-coerce week-of-year JsObject
              dayjs-host .extend! plugin
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            match
              storage-get $ .unwrap-or (get schema/config :storage) |pudica-schedule-viewer
              (:some raw)
                do
                  dispatch! $ schema/Op :content $ schema/read-schedule-document (parse-cirru-edn raw)
                  dispatch! $ schema/Op :router $ schema/Router :name :viewer
              (:none) &unit
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (query-selector |.app)
          :examples $ []
          :schema $ quote $ Option js-ffi.browser/DomElementHost
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (store prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            if-let (target mount-target)
              render! (narrow-element target) (comp-container @*reel)
                fn (raw-op)
                  hint-fn $ Fn schema/Op $ -> Unit
                  dispatch! $ schema/decode-op raw-op
              do (eprintln |Mount-target-not-found.) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def ssr?
            .some? $ query-selector |meta.respo-ssr
          :examples $ []
          :schema $ quote Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            |dayjs :default dayjs
            |dayjs/plugin/weekOfYear :default week-of-year
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            app.config :as config
            js-ffi.browser :refer $ storage-get query-selector
            js-ffi.shared :refer $ now-ms
            respo.ffi.browser :refer $ narrow-element
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'DraftStateValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DraftStateValue String Bool (List respo.schema/CoordKey) (Map respo.schema/CoordKey app.schema/DraftStateValue)
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) (Map Tag String)
            :content ScheduleDocument
            :router app.schema/Router
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name Tag)
          :examples $ []
          :schema $ quote StructDef
        'Schedule $ %{} 'CodeEntry (:doc "|Decoded active and archived task collections.")
          :code $ quote $ defstruct Schedule
            :tasks $ Map String app.schema/Task
            :archives $ Map String app.schema/Task
          :examples $ []
          :schema $ quote StructDef
        'ScheduleDocument $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ScheduleDocument (:schedule Schedule) (:original Dynamic)
          :examples $ []
          :schema $ quote StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map respo.schema/CoordKey app.schema/DraftStateValue
            :router app.schema/Router
            :content ScheduleDocument
            :messages $ Map Tag Dynamic
          :examples $ []
          :schema $ quote StructDef
        'Task $ %{} 'CodeEntry (:doc "|Task fields used by the schedule viewer.")
          :code $ quote $ defstruct Task (:id String) (:text String) (:created-time Number)
            :done-time $ Option Number
            :archived-time $ Option Number
          :examples $ []
          :schema $ quote StructDef
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def config
            {} $ :storage |pudica-schedule-viewer
          :examples $ []
          :schema $ quote $ Map Tag String
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (op)
            if-not (enum? op) (raise |Unknown-viewer-operation)
              if
                = (enum-definition op) (Some Op)
                decode-map-as op 'app.schema/Op
                match op
                  (:states cursor state)
                    if (list? cursor)
                      Op :states
                        decode-map-as cursor $ List respo.schema/CoordKey
                        decode-map-as state $ Map Tag String
                      raise |Invalid-state-cursor
                  (:content content)
                    Op :content $ read-schedule-document content
                  (:router router)
                    Op :router $ decode-map-as (storage-map router) 'app.schema/Router
                  (:hydrate-storage data)
                    let
                        fields $ storage-map data
                      Op :hydrate-storage $ decode-map-as
                        assoc
                          assoc
                            assoc fields :router $ storage-map $ .unwrap (get fields :router)
                            , :content $ restore-schedule-document $ .unwrap (get fields :content)
                          , :states $ read-draft-states $ .unwrap (get fields :states)
                        , 'app.schema/Store
                  _ $ raise |Unknown-viewer-operation
          :examples $ []
          :schema $ quote $ Fn Input (-> Op) (:generics Input)
        'decode-schedule $ %{} 'CodeEntry
          :doc "|Validate legacy parsed storage and construct a typed Schedule."
          :code $ quote $ defn decode-schedule (raw)
            let
                content $ storage-map raw
                tasks $ decode-map-as
                  .unwrap $ get content :tasks
                  Map String Dynamic
                archives $ decode-map-as
                  .unwrap $ get content :archives
                  Map String Dynamic
              Schedule :tasks (decode-task-map tasks) :archives $ decode-task-map archives
          :examples $ []
          :schema $ quote $ Fn Input (-> Schedule) (:generics Input)
        'decode-task $ %{} 'CodeEntry
          :doc "|Validate one legacy task map and construct a typed Task."
          :code $ quote $ defn decode-task (raw)
            decode-map-as
              {}
                :id $ .unwrap $ get raw :id
                :text $ .unwrap $ get raw :text
                :created-time $ .unwrap $ get raw :created-time
                :done-time $ match (get raw :done-time)
                  (:some time) (to-number-option time)
                  (:none) None
                :archived-time $ match (get raw :archived-time)
                  (:some time) (to-number-option time)
                  (:none) None
              , Task
          :examples $ []
          :schema $ quote $ Fn (Map Tag V) (-> Task) (:generics V)
        'decode-task-map $ %{} 'CodeEntry (:doc "|Decode every task in a legacy task map.")
          :code $ quote $ defn decode-task-map (raw)
            filter-map-kv raw $ fn (task-id task)
              hint-fn $ Fn String V $ -> (MapEntryDecision String Task)
              calcit.core/MapEntryDecision :keep task-id $ decode-task $ storage-map task
          :examples $ []
          :schema $ quote $ Fn (Map String V)
            -> $ Map String Task
            :generics V
        'read-draft-states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-draft-states (raw)
            let
                source $ if (nil? raw) ({})
                  decode-map-as raw $ Map respo.schema/CoordKey Dynamic
                states $ match (get source :cursor)
                  (:some cursor)
                    if (nil? cursor) (.dissoc source :cursor) source
                  (:none) source
                normalized $ match (get states :editor)
                  (:some editor)
                    cond
                        nil? editor
                        .dissoc states :editor
                      (map? editor)
                        let
                            branch $ decode-map-as editor $ Map respo.schema/CoordKey Dynamic
                          match (get branch :data)
                            (:some data)
                              if (nil? data)
                                .assoc states :editor $ .dissoc branch :data
                                , states
                            (:none) states
                      true states
                  (:none) states
              decode-map-as normalized $ Map respo.schema/CoordKey DraftStateValue
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map respo.schema/CoordKey DraftStateValue
            :generics Input
        'read-schedule-document $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-schedule-document (raw)
            ScheduleDocument :schedule (decode-schedule raw) :original raw
          :examples $ []
          :schema $ quote $ Fn Input (-> ScheduleDocument) (:generics Input)
        'restore-schedule-document $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn restore-schedule-document (raw)
            match (try-decode-map-as raw ScheduleDocument)
              (:ok document)
                read-schedule-document $ :original document
              (:err _) (read-schedule-document raw)
          :examples $ []
          :schema $ quote $ Fn Input (-> ScheduleDocument) (:generics Input)
        'storage-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn storage-map (raw)
            if (struct? raw) (&struct:to-map raw)
              decode-map-as raw $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Tag Dynamic
            :generics Input
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :router (Router :name :home) :content
              read-schedule-document $ {}
                :tasks $ {}
                :archives $ {}
              , :messages $ {}
          :examples $ []
          :schema $ quote Store
        'to-number-option $ %{} 'CodeEntry
          :doc "|Validate a legacy nil-or-number field and return Option<Number>."
          :code $ quote $ defn to-number-option (value)
            if (nil? value) None $ if (enum? value)
              match value
                (:none) None
                (:some timestamp)
                  if (number? timestamp) (Some timestamp) (raise "|Invalid stored timestamp")
              if (number? value) (Some value) (raise "|Invalid stored timestamp")
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Number
            :generics Input
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.style $ %{} 'FileEntry
      :defs $ {} $ 'css-title
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-title
            {} $ |$0 $ {} (:font-weight |100) (:font-family ui/font-fancy)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor state)
                assoc store :states $ decode-map-as
                  assoc-in (:states store) (conj cursor :data) state
                  Map respo.schema/CoordKey app.schema/DraftStateValue
              (:content content) (assoc store :content content)
              (:router router) (assoc store :router router)
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
