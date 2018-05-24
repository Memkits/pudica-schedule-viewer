
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

(def style-icon {:margin "8", :font-size 16, :cursor :pointer, :color (hsl 0 0 70)})

(defcomp
 comp-link
 (page icon active?)
 (div
  {:style (merge style-icon (if active? {:color :black})),
   :on-click (action-> :router {:name page})}
  (comp-icon icon)))

(defcomp
 comp-nav
 (current-page)
 (div
  {:style (merge ui/column {:padding 8, :border-right (str "1px solid " (hsl 0 0 80))})}
  (comp-link :home :code (= current-page :home))
  (comp-link :viewer :ios-monitor (= current-page :viewer))))
