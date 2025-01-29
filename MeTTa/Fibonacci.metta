; Define the sum of even Fibonacci numbers below the limit
(= (sum-even-fibonacci $limit)
   (sum-fibonacci 1 2 $limit))  ; Start with Fibonacci 1 and 2

; function to recursively calculate the sum of even Fibonacci numbers
(= (sum-fibonacci $a $b $limit)
   (if (> $a $limit)
       0  
       (if (== (% $a 2) 0)
           (+ $a (sum-fibonacci $b (+ $a $b) $limit))  ; Add to sum if even
           (sum-fibonacci $b (+ $a $b) $limit))))  ; Continue without adding


!(sum-even-fibonacci 100)  