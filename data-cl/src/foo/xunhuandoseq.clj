(ns foo.xunhuandoseq (:require [clojure.set :as set]) (:gen-class))

;;遍历一个列表
(doseq [n (list 1 2 3)]
  (println n))
;; 遍历一个set集合
(doseq [n (set '("a" "b" "c"))] (println n))

;;遍历一个数组
(doseq [n (vector "tom" "jack" "rose")] (println n))

(def m {:a "tom", :b "jack"})
(def arr (keys m))
;; 遍历一个hashmap ,先拿到map的所有key 然后遍历key ，key可以作为函数 将map传递给key就可以拿到value值(注意key为string的不行:a 这种可以)
(doseq [n arr] (println (n m)))
(defn -main [& args]
  (println (set/union #{1 2} #{3 4}))
  (println "into main"))