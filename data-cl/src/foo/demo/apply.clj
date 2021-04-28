(ns foo.demo.apply)

(max 0 1 2)
; => 2

(max [0 1 2])
; => [0 1 2]

(apply max [0 1 2])
; => 2

(conj [0] 1 2)
;=> [0 1 2]
(apply conj [0] [1 2])
;=> [0 1 2]

(clojure.string/upper-case "message")