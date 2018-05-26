
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
    {:style (merge ui/flex ui/column {:padding "16px"})}
    (textarea
     {:value (:text state),
      :placeholder (:text state),
      :style (merge
              ui/textarea
              {:width "100%",
               :height 400,
               :font-family ui/font-code,
               :font-size 12,
               :line-height "1.6em"}),
      :on-input (mutation-> (assoc state :text (:value %e)))})
    (=< nil 16)
    (div
     {}
     (button
      {:style ui/button,
       :on-click (fn [e d! m!]
         (try
          (do (d! :content (read-string (:text state))) (d! :router {:name :viewer}))
          (catch js/Error error (.log js/console error))))}
      (<> "Submit"))))))
