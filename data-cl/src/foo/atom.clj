(ns foo.atom (:gen-class))
(println "gg")
(defn at [num] 
  (println "hello" num)
  (def x (atom num))
  (println @x)
  (while (< @x 3) 
    (println @x)
    (swap! x inc)))

(at 1)

;; 对一个atom集合进行增加删除
(def arr (atom '(1 2 3)))
(defn add 
  "添加 m为集合 n为要添加的元素"
  [m n]
  (swap! m conj n))
(defn del 
  "删除 m为集合 n为要删除的元素"
  [m n]
  (swap! m (fn [arr] (drop-while #(= n %) arr))))


;;测试删除元素
(del arr 1)
(println @arr)
;;测试添加元素
(add arr 4)
(println @arr) 
;; 先添加后删除 删除不生效，不知道为什么

(defn -main [& args]
  (println "main"))