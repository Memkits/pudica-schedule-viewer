
(ns app.comp.viewer
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> list-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [app.schema :refer [dev?]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [cljs.reader :refer [read-string]]
            ["dayjs" :as dayjs]))

(defcomp
 comp-time
 (time)
 (if (nil? time) (<> "nil") (<> (.format (dayjs time) "YYYY-MM-DD HH:mm"))))

(defcomp
 comp-viewer
 (content)
 (div
  {:style (merge ui/flex {:padding 16, :overflow :auto})}
  (div {} (<> "Tasks"))
  (list->
   {:style {:padding-left 16}}
   (->> (:tasks content)
        (map
         (fn [[k task]]
           [k (div {} (<> (:text task)) (=< 8 nil) (comp-time (:created-time task)))]))))
  (=< nil 16)
  (div {} (<> "Archived"))
  (list->
   {:style {:padding-left 16}}
   (->> (:archives content)
        (map
         (fn [[k task]]
           [k
            (div
             {}
             (<> (:text task))
             (=< 8 nil)
             (comp-time (:done-time task))
             (=< 8 nil)
             (comp-time (:archived-time task)))]))))))
