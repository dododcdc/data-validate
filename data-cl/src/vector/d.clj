(ns vector.d (:gen-class))

(def nums (vec [1 2 5 4 3]))
(def n (vec '(1 2 3)))
;; conj 新增元素,添加在末尾 ,但是list是添加在开头
(def nums (conj nums 9))
;; 拿到最后一个元素 但是peek用在list上时是返回第一个元素
(println (peek nums))
(println (last nums))
;;拿到第一个元素
(println (first nums))
;;取到前两个元素
(println (take 2 nums ))
;;根据下标取数
(println (get nums 1))
;;根据下标取值，取不到返回一个指定值
(println (get nums 6 "没有"))
;;nth 也可以
(println (nth nums 9 "没有"))
;;drop-while 根据条件删除
(println (drop-while (fn [x] (= x 1)) nums))
(println (drop-while #(> 3 %1) nums) )
;; 删除前两个
(println (drop 2 nums))
;;调用java类
(def rnd (new java.util.Random))
(def j (new java.util.ArrayList))
(. j add 10)
(. j add 20)
(doseq [i j] (println i))
(println (. rnd nextInt 10))

(defn -main [& args] (println "i am main"))

