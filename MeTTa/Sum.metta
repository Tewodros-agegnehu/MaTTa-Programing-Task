; Define the custom logical-or function
(= (logical-or $a $b)
   (if $a
       True
       (if $b
           True
           False)))

; Define the is-multiple function using the custom logical-or
(= (is-multiple $x)
   (logical-or (== (% $x 3) 0) (== (% $x 5) 0)))

; Define the sum-multiples function
(= (sum-multiples $n)
   (if (<= $n 0)
       0
       (if (is-multiple (- $n 1))
           (+ (- $n 1) (sum-multiples (- $n 1)))  ; if multiple, add to sum
           (sum-multiples (- $n 1)))))      ; else continue recursion

; Test the sum-multiples function for N = 10
!(sum-multiples 10)  