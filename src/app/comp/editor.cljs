
(ns app.comp.editor
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [app.schema :refer [dev?]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [cljs.reader :refer [read-string]]))

(defcomp
 comp-editor
 (states content)
 (let [state (or (:data states) {:text ""})]
   (div
    {:style ui/column}
    (textarea
     {:value (:text state),
      :placeholder (:text state),
      :style (merge ui/textarea {:width 640, :height 320, :font-family ui/font-code}),
      :on-input (mutation-> (assoc state :text (:value %e)))})
    (=< nil 16)
    (div
     {}
     (button
      {:style ui/button,
       :on-click (fn [e d! m!]
         (try
          (d! :content (read-string (:text state)))
          (catch js/Error error (.log js/console error))))}
      (<> "Submit"))))))
