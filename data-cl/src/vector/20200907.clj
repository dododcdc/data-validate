(ns vector.20200907 (:gen-class))
(def laopo (vec '("tom" "jack" "joy")))
;;添加laopo
(def laopo (conj laopo "rose"))
(doseq [i laopo ] (print (str i ",")))
;;
(defn -main [& args] 
  (println "i am main"))