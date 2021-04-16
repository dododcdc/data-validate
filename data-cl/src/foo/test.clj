(ns foo.test (:gen-class))

;; 匿名函数
(defn Example []
  (println 3)
  ((fn [x] (* 2 x)) 2))
;; 定义一个带参数的函数
(defn bar [x y]
  (println (* x y)))
;; 指定参数类型的函数
(defn baba [^Integer x]
  (println x))

(def a 2)
(def b a)
(def a 3)
(println "=======")
(println b)
(println a)
;; 方法内部变量名称可以和外部名称一样,不是同一个数据
(defn hello [] 
  (def a 4))
(println a)

(defn -main
  "distrubit"
  [& args]
  (baba 1)
  (bar 2 3)
  (Example))
