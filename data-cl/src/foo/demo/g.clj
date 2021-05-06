(ns foo.demo.g (:require [foo.hanshu :as hanshu]) (:gen-class ) )

(def nums '(1 2 3))
(println 'foo.demo.hello/stuName)
(defn -main [& args]
  (def arr '(1 2 3))
  (println(reduce (fn [x y] (if (> x y) x y)) arr))

  (println "i am main"))