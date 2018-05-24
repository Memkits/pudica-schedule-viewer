
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [app.schema :refer [dev?]]
            [app.comp.nav :refer [comp-nav]]
            [app.comp.editor :refer [comp-editor]]
            [app.comp.viewer :refer [comp-viewer]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store), router (:router store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (comp-nav (:name router))
    (case (:name router)
      :home (cursor-> :editor comp-editor states (:content store))
      :viewer (comp-viewer (:content store))
      (<> router))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
