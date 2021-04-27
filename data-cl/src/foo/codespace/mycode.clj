(ns foo.codespace.mycode)

(def res
(->> [1 0 1 nil 1 nil]
     (filter identity)
     (group-by identity)
     (map (fn [[x xs]] [x (count xs)]))
     (into {}))
  )

(def identities
  [{:alias "Batman" :real "Bruce Wayne"}
   {:alias "Spider-Man" :real "Peter Parker"}
   {:alias "Santa" :real "Your mom"}
   {:alias "Easter Bunny" :real "Your dad"}])
(map :real identities)

(defn -main [& args]
(doseq [i res] (println i))
  )