
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store-value)
              let
                  store $ assert-type store-value (:: 'Map 'Tag 'Dynamic)
                  states $ assert-type (&map:get store :states) (:: 'Map 'Tag 'Dynamic)
                  router $ assert-type (&map:get store :router) (:: 'Map 'Tag 'Tag)
                  route-name $ assert-type (&map:get router :name) 'Tag
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                  case-default route-name (<> |Unknown)
                    :home $ comp-editor (>> states :editor)
                    :viewer $ comp-viewer (&map:get store :content)
                  comp-nav route-name
                  comp-upload $ &map:get store :content
                  when dev? $ comp-inspect |Store store ({})
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            app.comp.nav :refer $ comp-nav comp-upload
            app.comp.editor :refer $ comp-editor
            app.comp.viewer :refer $ comp-viewer
            respo-ui.css :as css
    'app.comp.editor $ %{} 'FileEntry
      :defs $ {}
        'comp-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-editor (states)
              let
                  cursor $ &map:get states :cursor
                  state $ assert-type
                    or (&map:get states :data)
                      {} $ :text |
                    :: 'Map 'Tag 'String
                div
                  {}
                    :class-name $ str-spaced css/flex css/flex
                    :style $ {} (:padding |16px)
                  textarea $ {}
                    :value $ &map:get state :text
                    :placeholder $ &map:get state :text
                    :class-name css-textbox
                    :on-input $ fn (e d!)
                      d! $ :: :states cursor
                        assoc state :text $ assert-type (&map:get e :value) 'String
                  =< 0 16
                  div ({})
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!)
                          do
                            d! $ :: :content
                              parse-cirru-edn $ &map:get state :text
                            d! $ :: :router
                              {} $ :name :viewer
                      <> |Submit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
        'css-textbox $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-textbox $ {}
              |$0 $ {} (:outline :none)
                :border $ str "|1px solid " (hsl 0 0 80)
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
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
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
    'app.comp.nav $ %{} 'FileEntry
      :defs $ {}
        'begin-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn begin-upload (content)
              unsafe-coerce (uploadSchedule content) 'JsObject
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'JsObject)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'comp-link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-link (page icon active?)
              div
                {} (:class-name css-icon)
                  :style $ if active?
                    {} $ :color :black
                  :on-click $ fn (e d!)
                    d! $ :: :router
                      {} $ :name page
                <> $ if (= icon :code) |Edit |View
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Tag 'Tag 'Bool
        'comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-nav (current-page)
              div
                {} $ :class-name css-nav
                =< 8 0
                comp-link :home :code $ = current-page :home
                =< 8 0
                comp-link :viewer :monitor $ = current-page :viewer
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Tag
        'comp-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-upload (content)
              div
                {}
                  :class-name $ str-spaced css-icon css-place-upload
                  :on-click $ fn (e d!)
                    hint-fn $ {} (:async true)
                    js-await $ upload-schedule! content
                <> |Upload
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'T
              :features $ #{} :js-ffi
              :generics $ [] 'T
        'css-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-icon $ {}
              |$0 $ {} (:margin |8) (:font-size 16) (:cursor :pointer)
                :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'String
        'css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-nav $ {}
              |$0 $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row) (:position :absolute) (:bottom 0) (:right 0) (:padding 8) (:justify-content :flex-end)
                :background-color $ hsl 0 0 96
                :gap 4
          :examples $ []
          :schema $ :: 'String
        'css-place-upload $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-place-upload $ {}
              |$0 $ {} (:position :absolute) (:top 8) (:right 8)
          :examples $ []
          :schema $ :: 'String
        'upload-schedule! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn upload-schedule! (content)
              hint-fn $ {} (:async true)
              js-await $ begin-upload content
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.nav $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md
            respo.css :refer $ defstyle
            |../upload.mjs :refer $ uploadSchedule
    'app.comp.viewer $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc "|Typed Dayjs methods used by schedule rendering.")
          :code $ quote
            deftrait DayjsHost
              .format $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost 'String
                  :return 'String
              .year $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost
                  :return 'Number
              .week $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost
                  :return 'Number
              .day $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost
                  :return 'Number
              .startOf $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost 'String
                  :return 'app.comp.viewer/DayjsHost
              .add $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost 'Number 'String
                  :return 'app.comp.viewer/DayjsHost
              .diff $ :: 'Fn
                {}
                  :args $ [] 'app.comp.viewer/DayjsHost 'app.comp.viewer/DayjsHost 'String
                  :return 'Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:add |add) (:day |day) (:diff |diff) (:format |format) (:startOf |startOf) (:week |week) (:year |year)
          :schema $ :: 'Trait
        'add-days $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn add-days (value amount)
              unsafe-coerce (.!add value amount |day) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.comp.viewer/DayjsHost)
              :args $ [] 'app.comp.viewer/DayjsHost 'Number
              :features $ #{} :js-ffi
        'by-larger $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn by-larger (x y) (&compare y x)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number 'Number
        'by-latest-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn by-latest-task (task-a task-b)
              let
                  done-a $ option:unwrap-or (:done-time task-a) 0
                  done-b $ option:unwrap-or (:done-time task-b) 0
                  archived-a $ option:unwrap-or (:archived-time task-a) 0
                  archived-b $ option:unwrap-or (:archived-time task-b) 0
                  ret $ if (= done-b done-a) (< archived-b archived-a) (< done-b done-a)
                if ret -1 1
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'app.schema/Task 'app.schema/Task
        'comp-active-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-active-tasks (tasks)
              list->
                {} $ :style
                  {} (:padding "|4px 8px")
                    :background-color $ hsl 20 80 97
                    :border $ str "|1px solid " (hsl 20 80 84)
                    :border-radius |0px
                -> tasks (vals) (&set:to-list)
                  sort $ fn (task-a task-b)
                    hint-fn $ {}
                      :args $ [] 'app.schema/Task 'app.schema/Task
                      :return 'Number
                    &compare (:created-time task-a) (:created-time task-b)
                  map $ fn (task)
                    hint-fn $ {}
                      :args $ [] 'app.schema/Task
                      :return $ :: 'List 'Dynamic
                    [] (:id task)
                      div ({})
                        comp-time $ %some (:created-time task)
                        =< 8 0
                        <> $ :text task
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Map 'String 'app.schema/Task)
        'comp-day $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-day (day month-date amount)
              div
                {} $ :class-name css-day
                <> $ case-default day (str |Invalid: day) (0 |Sun) (1 |Mon) (2 |Tue) (3 |Wed) (4 |Thu) (5 |Fri) (6 |Sat)
                =< 8 0
                <> month-date $ {} (:font-size 12)
                  :color $ hsl 0 0 0
                =< 8 0
                <> (str "|(" amount "|)")
                  {} $ :font-size 12
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number 'String 'Number
        'comp-day-card $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-day-card (day tasks week-start)
              div
                {} $ :class-name (str-spaced css/column css-day-card)
                comp-day day
                  if-let
                    task $ assert-type (first tasks) (:: 'Option 'app.schema/Task)
                    format-dayjs (get-done-time task) |MM-DD
                    format-dayjs (add-days week-start day) |MM-DD
                  count tasks
                list->
                  {} $ :class-name css-tasks-container
                  -> tasks (sort by-latest-task)
                    map $ fn (task)
                      hint-fn $ {}
                        :args $ [] 'app.schema/Task
                        :return $ :: 'List 'Dynamic
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
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number (:: 'List 'app.schema/Task) 'app.comp.viewer/DayjsHost
        'comp-time $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-time (time)
              span
                {} $ :class-name css-time
                match time
                  (:some value)
                    <> $ format-dayjs (make-dayjs value) |HH:mm
                  (:none) (<> |??:??)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Option 'Number)
        'comp-viewer $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-viewer (content)
              let
                  content $ schema/decode-schedule content
                  tasks $ &set:to-list
                    vals $ :archives content
                  tasks-by-year $ assert-type
                    group-by tasks $ fn (task)
                      hint-fn $ {}
                        :args $ [] 'app.schema/Task
                        :return 'Number
                      dayjs-year $ get-done-time task
                    :: 'Map 'Number $ :: 'List 'app.schema/Task
                  years $ sort
                    &set:to-list $ keys tasks-by-year
                    , by-larger
                div
                  {} $ :style
                    {} (:flex 1) (:padding 16) (:overflow :auto) (:padding-bottom 200)
                  div
                    {} (:class-name style/css-title)
                      :style $ {}
                        :color $ hsl 0 0 70
                    <> |Tasks
                  comp-active-tasks $ :tasks content
                  =< 0 64
                  div
                    {} (:class-name style/css-title)
                      :style $ {}
                        :color $ hsl 0 0 80
                    <> |Archived
                  list->
                    {} $ :class-name css/column
                    map years $ fn (year)
                      hint-fn $ {}
                        :args $ [] 'Number
                        :return $ :: 'List 'Dynamic
                      let
                          tasks-in-year $ assert-type
                            or (&map:get tasks-by-year year) ([])
                            :: 'List 'app.schema/Task
                          tasks-by-week $ assert-type
                            group-by tasks-in-year $ fn (task)
                              hint-fn $ {}
                                :args $ [] 'app.schema/Task
                                :return 'Number
                              dayjs-week $ get-done-time task
                            :: 'Map 'Number $ :: 'List 'app.schema/Task
                          weeks $ sort
                            &set:to-list $ keys tasks-by-week
                            , by-larger
                        [] year $ div
                          {} $ :class-name css/column
                          comp-year year
                          =< 8 0
                          list->
                            {} $ :class-name css/column
                            map weeks $ fn (week)
                              hint-fn $ {}
                                :args $ [] 'Number
                                :return $ :: 'List 'Dynamic
                              let
                                  tasks-in-week $ assert-type
                                    or (&map:get tasks-by-week week) ([])
                                    :: 'List 'app.schema/Task
                                  tasks-by-day $ assert-type
                                    group-by tasks-in-week $ fn (task)
                                      hint-fn $ {}
                                        :args $ [] 'app.schema/Task
                                        :return 'Number
                                      dayjs-day $ get-done-time task
                                    :: 'Map 'Number $ :: 'List 'app.schema/Task
                                  days $ -> (range 1 6)
                                    concat $ &set:to-list (keys tasks-by-day)
                                    distinct
                                    sort &compare
                                  week-start $ match (first tasks-in-week)
                                    (:some task)
                                      start-of-week $ get-done-time task
                                    (:none) (current-dayjs)
                                  amount $ -> days
                                    map $ fn (day)
                                      hint-fn $ {}
                                        :args $ [] 'Number
                                        :return 'Number
                                      count $ assert-type
                                        or (&map:get tasks-by-day day) ([])
                                        :: 'List 'app.schema/Task
                                    reduce 0 &+
                                [] week $ div
                                  {} (:class-name css/column)
                                    :style $ {} (:padding-top 16)
                                  comp-week week amount week-start
                                  list->
                                    {} $ :class-name css-day-list
                                    -> days (reverse)
                                      map $ fn (day)
                                        hint-fn $ {}
                                          :args $ [] 'Number
                                          :return $ :: 'List 'Dynamic
                                        [] day $ comp-day-card day
                                          assert-type
                                            or (&map:get tasks-by-day day) ([])
                                            :: 'List 'app.schema/Task
                                          , week-start
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
        'comp-week $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-week (week amount week-start)
              div
                {} $ :class-name css-week
                <> $ str week "|th week (" amount "|)"
                =< 8 0
                span
                  {} $ :style
                    {} (:font-size 12)
                      :color $ hsl 0 0 60
                      :font-family ui/font-normal
                  <> $ let
                      end $ add-days week-start 4
                    str (format-dayjs week-start |YYYY-MM-DD) "| ~ " $ format-dayjs end |YYYY-MM-DD
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number 'Number 'app.comp.viewer/DayjsHost
        'comp-year $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-year (year)
              <> (str year) (str-spaced style/css-title css-year)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number
        'css-day $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-day $ {}
              |$0 $ {} (:font-weight |300) (:font-family ui/font-fancy) (:font-size 20)
          :examples $ []
          :schema $ :: 'String
        'css-day-card $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-day-card $ {}
              |$0 $ {} (:padding "|4px 8px")
                :background-color $ hsl 0 0 100
                :flex-shrink |0
                :border $ str "|1px solid " (hsl 0 0 92)
                :box-shadow $ str "|1px 1px 4px " (hsl 0 0 0 0.1)
                :border-radius |6px
                :transition-duration |300ms
                :width 320
                :min-height 72
              |$0:hover $ {}
                :box-shadow $ str "|1px 1px 6px " (hsl 0 0 0 0.2)
          :examples $ []
          :schema $ :: 'String
        'css-day-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-day-list $ {}
              |$0 $ {} (:display |flex) (:align-items :stretch) (:flex-direction |row) (:flex-wrap :wrap) (:border-top "|1px solid #f8f8f8ca") (:padding-top 16) (:padding-left 16) (:gap 16)
          :examples $ []
          :schema $ :: 'String
        'css-task-duration $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-task-duration $ {}
              |$0 $ {} (:font-size 12)
                :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'String
        'css-task-item $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-task-item $ {}
              |$0 $ {} (:display :flex) (:flex-direction :column) (:margin-bottom 4)
          :examples $ []
          :schema $ :: 'String
        'css-task-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-task-text $ {}
              |$0 $ {} (:flex |1) (:text-align :left) (:line-height |1.4em) (:padding-top 2)
          :examples $ []
          :schema $ :: 'String
        'css-task-top $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-task-top $ {}
              |$0 $ {} (:display :flex) (:align-items :center) (:gap 8) (:line-height |14px)
          :examples $ []
          :schema $ :: 'String
        'css-tasks-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-tasks-container $ {}
              |$0 $ {} (:padding-left 4) (:min-width 200) (:display :flex) (:flex-direction :column) (:gap 4)
          :examples $ []
          :schema $ :: 'String
        'css-time $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-time $ {}
              |$0 $ {} (:font-size 10) (:font-family ui/font-code) (:vertical-align :top)
                :color $ hsl 0 0 70
                :min-width 40
                :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-week $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-week $ {}
              |$0 $ {} (:font-weight |100) (:font-family ui/font-fancy) (:font-size 16)
          :examples $ []
          :schema $ :: 'String
        'css-year $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-year $ {}
              |$0 $ {}
                :border-bottom $ str "|1px solid " (hsl 0 0 94)
          :examples $ []
          :schema $ :: 'String
        'current-dayjs $ %{} 'CodeEntry (:doc "|Create a typed Dayjs value for the current time.")
          :code $ quote
            defn current-dayjs () $ unsafe-coerce (dayjs) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.comp.viewer/DayjsHost)
              :args $ []
              :features $ #{} :js-ffi
        'dayjs-day $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dayjs-day (value)
              unsafe-coerce (.!day value) 'Number
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'app.comp.viewer/DayjsHost
              :features $ #{} :js-ffi
        'dayjs-week $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dayjs-week (value)
              unsafe-coerce (.!week value) 'Number
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'app.comp.viewer/DayjsHost
              :features $ #{} :js-ffi
        'dayjs-year $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dayjs-year (value)
              unsafe-coerce (.!year value) 'Number
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'app.comp.viewer/DayjsHost
              :features $ #{} :js-ffi
        'diff-days $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn diff-days (later earlier)
              unsafe-coerce (.!diff later earlier |day) 'Number
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'app.comp.viewer/DayjsHost 'app.comp.viewer/DayjsHost
              :features $ #{} :js-ffi
        'format-dayjs $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn format-dayjs (value pattern)
              unsafe-coerce (.!format value pattern) 'String
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'app.comp.viewer/DayjsHost 'String
              :features $ #{} :js-ffi
        'format-duration $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn format-duration (task)
              let
                  done $ get-done-time task
                  created $ make-dayjs (:created-time task)
                  days $ diff-days done created
                str (+ days 1) |d
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'app.schema/Task
        'get-done-time $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-done-time (task)
              match (:done-time task)
                (:some value) (make-dayjs value)
                (:none) (make-dayjs |2021-01-01)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.comp.viewer/DayjsHost)
              :args $ [] 'app.schema/Task
        'make-dayjs $ %{} 'CodeEntry (:doc "|Narrow one Dayjs constructor result to the reviewed host trait.")
          :code $ quote
            defn make-dayjs (value)
              unsafe-coerce (dayjs value) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.comp.viewer/DayjsHost)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'start-of-week $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn start-of-week (value)
              unsafe-coerce (.!startOf value |week) 'app.comp.viewer/DayjsHost
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.comp.viewer/DayjsHost)
              :args $ [] 'app.comp.viewer/DayjsHost
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.viewer $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div button textarea span
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md
            app.schema :as schema
            respo-ui.comp.icon :refer $ comp-icon
            |dayjs :default dayjs
            app.style :as style
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ let
                mode $ option:unwrap-or (get-env |mode) |release
              = mode |dev
          :examples $ []
          :schema $ :: 'Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reel schema/store)
          :examples $ []
          :schema $ :: 'Ref (:: 'Map 'Tag 'Dynamic)
        'DayjsFactoryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait DayjsFactoryHost $ .extend!
              :: 'Fn $ {}
                :args $ [] 'app.main/DayjsFactoryHost 'JsObject
                :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:extend! |extend)
          :schema $ :: 'Trait
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println |Dispatch: op
              reset! *reel $ updater
                assert-type @*reel $ :: 'Map 'Tag 'Dynamic
                , op (generate-id!) (now-ms)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              let
                  dayjs-host $ unsafe-coerce dayjs DayjsFactoryHost
                  plugin $ unsafe-coerce week-of-year JsObject
                dayjs-host .extend! plugin
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              match
                storage-get $ or (&map:get schema/config :storage) |pudica-schedule-viewer
                (:some raw)
                  do
                    dispatch! $ :: :content (parse-cirru-edn raw)
                    dispatch! $ :: :router
                      {} $ :name :viewer
                (:none) &unit
              println "|App started."
              , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ query-selector |.app
          :examples $ []
          :schema $ :: 'calcit.core/Option 'js-ffi.browser/DomElementHost
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (store prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ if-let (target mount-target)
              render! target
                comp-container $ assert-type @*reel (:: 'Map 'Tag 'Dynamic)
                , dispatch!
              do (eprintln |Mount-target-not-found.) &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
          :examples $ []
          :schema $ :: 'Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
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
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Schedule $ %{} 'CodeEntry (:doc "|Decoded active and archived task collections.")
          :code $ quote
            defstruct Schedule
              :tasks $ :: 'Map 'String 'app.schema/Task
              :archives $ :: 'Map 'String 'app.schema/Task
          :examples $ []
          :schema $ :: 'StructDef
        'Task $ %{} 'CodeEntry (:doc "|Task fields used by the schedule viewer.")
          :code $ quote
            defstruct Task (:id 'String) (:text 'String) (:created-time 'Number)
              :done-time $ :: 'Option 'Number
              :archived-time $ :: 'Option 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def config $ {} (:storage |pudica-schedule-viewer)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'decode-schedule $ %{} 'CodeEntry (:doc "|Validate legacy parsed storage and construct a typed Schedule.")
          :code $ quote
            defn decode-schedule (raw)
              let
                  content $ assert-type raw (:: 'Map 'Tag 'Dynamic)
                  tasks $ assert-type (&map:get content :tasks)
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  archives $ assert-type (&map:get content :archives)
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                %{} Schedule
                  :tasks $ decode-task-map tasks
                  :archives $ decode-task-map archives
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/Schedule)
              :args $ [] 'Dynamic
        'decode-task $ %{} 'CodeEntry (:doc "|Validate one legacy task map and construct a typed Task.")
          :code $ quote
            defn decode-task (raw)
              %{} Task
                :id $ assert-type (&map:get raw :id) 'String
                :text $ assert-type (&map:get raw :text) 'String
                :created-time $ assert-type (&map:get raw :created-time) 'Number
                :done-time $ to-number-option (&map:get raw :done-time)
                :archived-time $ to-number-option (&map:get raw :archived-time)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'app.schema/Task)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
        'decode-task-map $ %{} 'CodeEntry (:doc "|Decode every task in a legacy task map.")
          :code $ quote
            defn decode-task-map (raw)
              filter-map-kv raw $ fn (task-id task)
                hint-fn $ {}
                  :args $ [] 'String (:: 'Map 'Tag 'Dynamic)
                  :return $ :: 'calcit.core/MapEntryDecision 'String 'app.schema/Task
                %:: calcit.core/MapEntryDecision :keep task-id $ decode-task task
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              :return $ :: 'Map 'String 'app.schema/Task
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :router $ {} (:name :home)
              :content $ {}
                :tasks $ {}
                :archives $ {}
              :messages $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'to-number-option $ %{} 'CodeEntry (:doc "|Validate a legacy nil-or-number field and return Option<Number>.")
          :code $ quote
            defn to-number-option (value)
              if (nil? value) (%none)
                %some $ assert-type value 'Number
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Dynamic
              :return $ :: 'Option 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'css-title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-title $ {}
              |$0 $ {} (:font-weight |100) (:font-family ui/font-fancy)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor state)
                  assert-type (update-states store cursor state) (:: 'Map 'Tag 'Dynamic)
                (:content content) (assoc store :content content)
                (:router router) (assoc store :router router)
                (:hydrate-storage data)
                  assert-type data $ :: 'Map 'Tag 'Dynamic
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
              :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
