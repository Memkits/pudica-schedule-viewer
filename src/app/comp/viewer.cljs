
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
 (span
  {:style {:font-size 13,
           :font-family ui/font-fancy,
           :color (hsl 0 0 70),
           :min-width 80,
           :display :inline-block}}
  (if (nil? time) (<> "-") (<> (.format (dayjs time) "MM-DD HH:mm")))))

(defcomp
 comp-weekday
 (time)
 (span
  {:style {:font-size 13,
           :font-family ui/font-fancy,
           :color (hsl 0 0 70),
           :min-width 80,
           :display :inline-block}}
  (if (nil? time) (<> "-") (<> (.format (dayjs time) "ddd")))))

(defcomp
 comp-viewer
 (content)
 (div
  {:style (merge ui/flex {:padding 16, :overflow :auto, :padding-bottom 200})}
  (div {} (<> "Tasks"))
  (list->
   {:style {:padding-left 16}}
   (->> (:tasks content)
        (sort-by (fn [[k task]] (unchecked-negate (:created-time task))))
        (map
         (fn [[k task]]
           [k (div {} (comp-time (:created-time task)) (=< 8 nil) (<> (:text task)))]))))
  (=< nil 16)
  (div {} (<> "Archived"))
  (list->
   {:style {:padding-left 16}}
   (->> (:archives content)
        (sort
         (fn [[k1 task-a] [k2 task-b]]
           (if (= (:done-time task-b) (:done-time task-a))
             (< (:archived-time task-b) (:archived-time task-a))
             (< (:done-time task-b) (:done-time task-a)))))
        (map
         (fn [[k task]]
           [k
            (div
             {}
             (comp-time (:done-time task))
             (=< 8 nil)
             (comp-weekday (:done-time task))
             (=< 8 nil)
             (<> (:text task)))]))))))
