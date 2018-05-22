
(ns app.comp.nav
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [app.schema :refer [dev?]]
            [respo-ui.comp.icon :refer [comp-icon]]))

(def style-icon {:margin "8", :font-size 16, :cursor :pointer})

(defcomp
 comp-nav
 ()
 (div
  {:style (merge ui/column {:padding 8, :border-right (str "1px solid " (hsl 0 0 80))})}
  (div {:style style-icon, :on-click (action-> :router {:name :home})} (comp-icon :code))
  (div
   {:style style-icon, :on-click (action-> :router {:name :viewer})}
   (comp-icon :ios-monitor))))
