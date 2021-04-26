(ns foo.hanshu (:gen-class))


;;定义一个函数
(defn foo [name]
  (println (format "我的名字是%s" name)))

;;定义一个函数,返回值为hello
(defn hello [] 
  (str "hello"))

;;定义一个函数返回值为hello
(defn get-hello [] (str "how are you") "hello")

;;调用 
(foo "尹志平")

;; 定义一个多重函数
(defn say
  ([] (say "hello"))
  ([msg] (println msg))
  ([x y] (println x y "xx")))
;;调用这个多重函数
;;当不传参数时走第一个逻辑,传一个参数则走第二个逻辑,传三个参数则走第三个逻辑
(say)
(say "你好")
(say "a" "b")

;; todo 匿名函数 
;; 定义匿名函数并且调用
((fn [] (println (format "hello i am is are  %s" "tom"))) )
;; 第一个位置是匿名函数，后边是匿名函数需要的参数
((fn [msg] (println msg) ) "hello world")

;; 将匿名函数赋值给一个变量,这个函数可以当作参数传递
(def bar (fn [msg] (println msg)))
;;将bar作为参数传递给dobar
(defn dobar [bar] 
  (bar "你好===我是bar ，是一个匿名函数的引用，我作为参数传递给了dobar，在dobar中调用了"))
;; 调用dobar 将变量bar传递给dobar
(dobar bar)
;; 匿名函数的简写方式，简写方式不允许嵌套
(def foo #(+ %1 %2)) ;; 等同于 (fn [x y] (+ x y)) ,%1 代表第一个参数 2%代表第二个参数 
(println (foo 4 5) "========")
(defn -main 
  "gg"
  [& args]
  (def l '("1" "gg" 3))
  (println (type l))
  (println (rest l))
  ;;(println (get (into-array l) 1))
  (def stack (into-array args))
  (println (hello))
  (println (get stack 0))
  (println "我是main"))
