{}
  :schema-version 1
  :feature 'strict-schedule-data
  :doc "|Decode legacy Pudica storage maps once, then keep schedule rendering on nominal types."
  :roots $ #{} 'app.schema/decode-schedule
  :definitions $ {}
    'app.schema/Task $ {}
      :mode :ensure
      :kind :data
      :doc "|Task fields used by the schedule viewer."
      :schema 'StructDef
      :code $ quote
        defstruct Task (:id 'String) (:text 'String) (:created-time 'Number)
          :done-time $ :: 'Option 'Number
          :archived-time $ :: 'Option 'Number
    'app.schema/Schedule $ {}
      :mode :ensure
      :kind :data
      :doc "|Decoded active and archived task collections."
      :schema 'StructDef
      :code $ quote
        defstruct Schedule
          :tasks $ :: 'Map 'String 'app.schema/Task
          :archives $ :: 'Map 'String 'app.schema/Task
    'app.schema/to-number-option $ {}
      :mode :ensure
      :kind :fn
      :doc "|Validate a legacy nil-or-number field and return Option<Number>."
      :params $ [] 'value
      :schema $ :: 'Fn
        {} (:args $ [] 'Dynamic)
          :return $ :: 'Option 'Number
      :code $ quote
        defn to-number-option (value)
          if (nil? value) (%none)
            %some $ assert-type value 'Number
    'app.schema/decode-task $ {}
      :mode :ensure
      :kind :fn
      :doc "|Validate one legacy task map and construct a typed Task."
      :params $ [] 'raw
      :schema $ :: 'Fn
        {}
          :args $ [] (:: 'Map 'Tag 'Dynamic)
          :return 'app.schema/Task
      :code $ quote
        defn decode-task (raw)
          %{} Task
            :id $ assert-type (&map:get raw :id) 'String
            :text $ assert-type (&map:get raw :text) 'String
            :created-time $ assert-type (&map:get raw :created-time) 'Number
            :done-time $ to-number-option (&map:get raw :done-time)
            :archived-time $ to-number-option (&map:get raw :archived-time)
    'app.schema/decode-task-map $ {}
      :mode :ensure
      :kind :fn
      :doc "|Decode every task in a legacy task map."
      :params $ [] 'raw
      :schema $ :: 'Fn
        {}
          :args $ [] (:: 'Map 'String (:: 'Map 'Tag 'Dynamic))
          :return $ :: 'Map 'String 'app.schema/Task
      :code $ quote
        defn decode-task-map (raw)
          filter-map-kv raw $ fn (task-id task)
            hint-fn $ {}
              :args $ [] 'String (:: 'Map 'Tag 'Dynamic)
              :return $ :: 'calcit.core/MapEntryDecision 'String 'app.schema/Task
            %:: calcit.core/MapEntryDecision :keep task-id $ decode-task task
    'app.schema/decode-schedule $ {}
      :mode :ensure
      :kind :fn
      :doc "|Validate legacy parsed storage and construct a typed Schedule."
      :params $ [] 'raw
      :schema $ :: 'Fn
        {} (:args $ [] 'Dynamic) (:return 'app.schema/Schedule)
      :code $ quote
        defn decode-schedule (raw)
          let
              content $ assert-type raw $ :: 'Map 'Tag 'Dynamic
              tasks $ assert-type (&map:get content :tasks) $ :: 'Map 'String (:: 'Map 'Tag 'Dynamic)
              archives $ assert-type (&map:get content :archives) $ :: 'Map 'String (:: 'Map 'Tag 'Dynamic)
            %{} Schedule (:tasks $ decode-task-map tasks)
              :archives $ decode-task-map archives
    'app.comp.viewer/DayjsHost $ {}
      :mode :ensure
      :kind :data
      :doc "|Typed Dayjs methods used by schedule rendering."
      :schema 'Trait
      :code $ quote
        deftrait DayjsHost
          .format $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost 'String) (:return 'String)
          .year $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost) (:return 'Number)
          .week $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost) (:return 'Number)
          .day $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost) (:return 'Number)
          .startOf $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost 'String) (:return 'app.comp.viewer/DayjsHost)
          .add $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost 'Number 'String) (:return 'app.comp.viewer/DayjsHost)
          .diff $ :: 'Fn $ {} (:args $ [] 'app.comp.viewer/DayjsHost 'app.comp.viewer/DayjsHost 'String) (:return 'Number)
    'app.comp.viewer/make-dayjs $ {}
      :mode :ensure
      :kind :fn
      :doc "|Narrow one Dayjs constructor result to the reviewed host trait."
      :params $ [] 'value
      :schema $ :: 'Fn
        {} (:args $ [] 'Dynamic) (:return 'app.comp.viewer/DayjsHost)
          :features $ #{} :js-ffi
      :code $ quote
        defn make-dayjs (value)
          unsafe-coerce (dayjs value) 'app.comp.viewer/DayjsHost
    'app.comp.viewer/current-dayjs $ {}
      :mode :ensure
      :kind :fn
      :doc "|Create a typed Dayjs value for the current time."
      :params $ []
      :schema $ :: 'Fn
        {} (:args $ []) (:return 'app.comp.viewer/DayjsHost)
          :features $ #{} :js-ffi
      :code $ quote
        defn current-dayjs ()
          unsafe-coerce (dayjs) 'app.comp.viewer/DayjsHost
  :edges $ #{}
    :: :call 'app.schema/decode-schedule 'app.schema/decode-task-map
    :: :call 'app.schema/decode-task-map 'app.schema/decode-task
    :: :call 'app.schema/decode-task 'app.schema/to-number-option
    :: :type 'app.schema/decode-task 'app.schema/Task
    :: :type 'app.schema/decode-schedule 'app.schema/Schedule
    :: :type 'app.comp.viewer/make-dayjs 'app.comp.viewer/DayjsHost
    :: :type 'app.comp.viewer/current-dayjs 'app.comp.viewer/DayjsHost
