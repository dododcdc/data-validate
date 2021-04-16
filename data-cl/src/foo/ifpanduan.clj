(ns foo.ifpanduan (:gen-class))


;;even? 2 (2是偶数吗) 是返回true否则返回false even偶数odd奇数
(println (str "2 is " (if (even? 2) "even" "odd")))
(println (if (true? (= 1 1)) "真的" "假的"))
(if (> 0 2) (do (println "hello")) (do (println "gg")))
;; 什么都不做直接返回true 在clojure中除了nil和false都是true
(defn motor-turning [] (true? true))

(if (motor-turning) (println "ok") (println "nook"))
;;俩个if都会走 只要符合就会做事
(defn t [x] 
  (if (> x 2) (println "gg"))
  (if (> x 3) (println "mm")))
(t 5)
;;cond 遇到符合就做事，后面再有符合的也不走了,相当于java的if/else-if
(cond 
  (> 1 0) (println "do 1")
  (> 2 0) (println "do 2")
  :else (println "do else"))
;; and和or
(if (or true nil) (println "true"))
(if (and true 1) (println "true") (println "false"))
(println (and false 44))
(println (or false 44))

;;懒执行，这句话执行时并不会打印i
(def mmm (for [i [4 5 6]] (println i)))
;;在利用它时才会被调用
(str mmm)
(def nnn (for [i [1 2 3] j [4 5 6]] (* i j)))
(println nnn)

;;reduce (reduce 函数 集合)
(println (reduce (fn [x y] (if (> x y) x y)) [1 2 3])) ;; reduce求最大值
(println (reduce #(if(> %1 %2) %1 %2) [4 5 1])) ;; reduce 求最大值(匿名函数简写了)
(println (reduce + [1 2 3])) ; reduce 求集合所有值加起来

(defn -main [& args]
  ;;(doseq [i [1 2 4 3] j [4 5 6] :when (< i 4)]  (println (* i j)))
  (println "i am main")
  (defn xx [x y] (when (> x y) (print (str x "*" y "=" (* x y) "\t")))
    (when (= x y) (println (str x "*" y "=" (* x y) "\t"))))
  ;; 利用doseq打印乘法表
  (doseq [i (range 1 10) j (range 1 10)]  (xx i j)))

