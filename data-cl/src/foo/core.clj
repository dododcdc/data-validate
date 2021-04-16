(ns foo.core
  (:gen-class))

(def age 20)

(def x (+ 2 3))

(defn hello []
  (println "hello"))
;; 加法 
(defn add []
  (def a 2)
  (def b 3)
  (println (+ a,b)))
;;减法
(defn sub []
  (def a 3)
  (def b 2)
  (println (- a,b)))
;;乘法
(defn cf []
  (def a 3)
  (def b 2)
  (println (* a,b)))
;;除法
(defn chufa []
  (def a 2)
  (def b 1)
  (println (/ a b)))
;;取余(]])

(defn quyu [] 
  (def a 10)
  (def b,3)
  (println (rem a b)))
(quyu);;在main外面直接调用函数，定义函数必须在调用前
(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println age)
  (hello)
  (println args)
  (add)
  (sub)
  (cf)
  (chufa)
  (println x)
  (quyu))



