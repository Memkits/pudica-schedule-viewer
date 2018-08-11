
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
            ["dayjs" :as dayjs]
            [respo.util.list :refer [map-val]]
            [app.style :as style]))

(defn by-latest-task [task-a task-b]
  (if (= (:done-time task-b) (:done-time task-a))
    (< (:archived-time task-b) (:archived-time task-a))
    (< (:done-time task-b) (:done-time task-a))))

(defcomp
 comp-time
 (time)
 (span
  {:style {:font-size 13,
           :font-family ui/font-fancy,
           :color (hsl 0 0 70),
           :min-width 40,
           :display :inline-block}}
  (if (nil? time) (<> "??:??") (<> (.format (dayjs time) "HH:mm")))))

(defcomp
 comp-active-tasks
 (tasks)
 (list->
  {:style {:padding-left 16}}
  (->> tasks
       (sort-by (fn [[k task]] (unchecked-negate (:created-time task))))
       (map
        (fn [[k task]]
          [k (div {} (comp-time (:created-time task)) (=< 8 nil) (<> (:text task)))])))))

(defcomp
 comp-day
 (day month-date)
 (div
  {:style (merge style/title {:font-size 20, :font-weight 300})}
  (<>
   (case day 0 "Sub" 1 "Mon" 2 "Tue" 3 "Wed" 4 "Thu" 5 "Fri" 6 "Sat" (str "Invalid:" day)))
  (=< 8 nil)
  (<> month-date {:font-size 12, :color (hsl 0 0 0)})))

(defcomp
 comp-week
 (week)
 (div {:style (merge style/title {:font-size 16})} (<> (str week "th week"))))

(defcomp
 comp-year
 (year)
 (<> year (merge style/title {:border-bottom (str "1px solid " (hsl 0 0 94))})))

(defcomp
 comp-viewer
 (content)
 (div
  {:style (merge ui/flex {:padding 16, :overflow :auto, :padding-bottom 200})}
  (div {:style (merge style/title {:color (hsl 0 0 70)})} (<> "Tasks"))
  (comp-active-tasks (:tasks content))
  (=< nil 64)
  (div {:style (merge style/title {:color (hsl 0 0 80)})} (<> "Archived"))
  (let [tasks (vals (:archives content))
        get-done-time (fn [task]
                        (if (some? (:done-time task))
                          (dayjs (:done-time task))
                          (dayjs "2018-01-01")))
        by-larger (fn [x y] (compare y x))
        tasks-by-year (->> tasks
                           (group-by (fn [task] (.year (get-done-time task))))
                           (sort by-larger)
                           (map-val
                            (fn [tasks]
                              (->> tasks
                                   (group-by (fn [task] (.week (get-done-time task))))
                                   (sort by-larger)
                                   (map-val
                                    (fn [tasks]
                                      (->> tasks
                                           (group-by
                                            (fn [task] (.day (get-done-time task))))
                                           (sort by-larger))))))))]
    (list->
     {:style ui/column}
     (->> tasks-by-year
          (map
           (fn [[year tasks-by-week]]
             [year
              (div
               {:style ui/column}
               (comp-year year)
               (=< 8 nil)
               (list->
                {:style ui/column}
                (->> tasks-by-week
                     (map
                      (fn [[week tasks-by-day]]
                        [week
                         (div
                          {:style (merge ui/column {:padding-top 16})}
                          (comp-week week)
                          (list->
                           {:style (merge
                                    ui/row
                                    {:flex-wrap :wrap,
                                     :border-top "1px solid #ddd",
                                     :padding-top 8,
                                     :padding-left 16})}
                           (->> tasks-by-day
                                (map
                                 (fn [[day tasks]]
                                   [day
                                    (div
                                     {:style (merge
                                              ui/column
                                              {:flex-shrink 0, :margin-right 32})}
                                     (comp-day
                                      day
                                      (.format (get-done-time (first tasks)) "MM-DD"))
                                     (list->
                                      {:style {:padding-left 16, :min-width 240}}
                                      (->> tasks
                                           (sort by-latest-task)
                                           (map
                                            (fn [task]
                                              [(:id task)
                                               (div
                                                {}
                                                (comp-time (:done-time task))
                                                (=< 8 nil)
                                                (<> (:text task)))])))))])))))])))))])))))))
