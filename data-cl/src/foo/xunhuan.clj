(ns foo.xunhuan (:gen-class))

;;while 循环
(defn dowhile []
  (def x (atom 16))
  (while (< @x 18)
    (do (println "你未成年了")
        (swap! x inc))))

;; while 循环
(defn bar [] 
  (def num 10)
  (while (< num 15)
    (println (format "当前num是%d" num))
    (def num (+ num 1))))
(bar)
;; width 绑定为20 height绑定为30 返回值为 width 乘以 height
(let [width 20
      height 30]
  (* width height))
;; let 绑定
(def x (let [h 20 w 10] (* h w)))
(println (+ x 1))
(def x [1 2 3])
(def y {:a 1 :b 2})
;; 获取vector的元素
(println (format "这是x的第一个元素%d" (get x 0)))


(defn -main
  "distrubit"
  [& args]
  (dowhile)
  (println "hh"))