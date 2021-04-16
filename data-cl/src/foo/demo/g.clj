(ns foo.demo.g (:require [foo.hanshu :as hanshu]) (:gen-class ) )

(defn -main [& args]
  (def arr '(1 2 3))
  (println(reduce (fn [x y] (if (> x y) x y)) arr))
  (println (hanshu/hello))
  (println "i am main"))