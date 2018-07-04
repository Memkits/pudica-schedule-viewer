
(ns app.schema )

(def config {:storage "pudica-schedule-viewer"})

(def dev? (do ^boolean js/goog.DEBUG))

(def store {:states {}, :router {:name :home}, :content ""})
