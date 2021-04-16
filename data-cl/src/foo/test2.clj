(ns foo.test2 (:gen-class))

(def arr (list 1 2 3))

(doseq [n arr]
  (println n))

(def age (atom 5))
(while (< @age 10)
  (println (format "当前的num是: %s" @age))
  (swap! age (fn [x] (+ x 1) )))
(doseq [n (set '(2 2 3 4 7 4 9 5))]
  (println n))

(defn -main [& args]
  (println "i am main"))