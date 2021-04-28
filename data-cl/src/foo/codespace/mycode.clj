(ns foo.codespace.mycode)

(def res
  ;; 类似java 的流式处理
(->> [1 0 1 nil 1 nil]
     (filter identity)                                      ;; 过滤
     (group-by identity)                                    ;; 分组生成map
     (map (fn [[x xs]] [x (count xs)]))                     ;; 对group-by的结果进行map处理
     (into {}))                                             ;; 将结果into到{}中
  )

;; map 用法 这个只针对keyword类型的map有用 :real 也是一个函数
(def identities
  [{:alias "Batman" :real "Bruce Wayne"}
   {:alias "Spider-Man" :real "Peter Parker"}
   {:alias "Santa" :real "Your mom"}
   {:alias "Easter Bunny" :real "Your dad"}])
(map :real identities)

;; reduce 对map处理
(reduce (fn [new-map [key val]]
          (assoc new-map key (inc val)))
        {}                                                  ;; 初始化map 即第一次进去时new-map的值
        {:max 30 :min 10})
;; 随机生成一个无限数字集合 取前三个 (生成元素的函数自由定义)
(take 3 (repeatedly (fn [] (rand-int 10))))

;; 取一个列表中的最大值，需要通过apply来配合 max只能 (max 0 1 2)
(max [0 1 2])
; => [0 1 2]
(apply max [0 1 2])
; => 2
(defn -main [& args]
(doseq [i res] (println i)))