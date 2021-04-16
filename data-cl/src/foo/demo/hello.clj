(ns foo.demo.hello (:gen-class))

(def stuName "小明")
(def stuName "小红")
(def cards ["a" "b"])
(defn add [c] (conj cards c))
(defn sub [c] (conj cards ))
(defn hello [name] 
  (println (format "i am %s" name)))

(defn -main [& args]
  (hello stuName)
  (def cards (add "spark"))
  (println cards)
  (def cards (add "sqoop"))
  (println cards)
  (println (pos? 1))
  
  )