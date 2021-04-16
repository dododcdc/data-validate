(ns foo.xunhuanwhile (:require [clojure.string :as str]) (:gen-class))

;;while循环
(def num (atom 5))
(def add #(+ 1 %))
(while (< @num 10)
  (println (format "当前num是 %s" @num))
  ;;(swap! num inc)
  ;;(swap! num (fn [x] (+ x 1)))
  ;;(swap! num add)
  (swap! num #(+ 1 %1))
  )
;;上面的几种写法实现的效果是一样的
(def counter (agent 0))
   
   (send-off counter + 100)
   (println "Incrementing Counter")
   (println (await-for 100 counter))
   (println @counter)
(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println (str/join ", " [1 2 3]))
  (println (str "a" "b"))
  (println args)
  )