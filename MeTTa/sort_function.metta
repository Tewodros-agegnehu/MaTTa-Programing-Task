; Function to calculate the size of a list
(= (size ()) 0)

(= (size (:: $a $bs))
   (+ 1 (size $bs)))

; Function to shift the largest element to the right in a single pass
(= (shift-to-right (:: $a())) (:: $a()))

(= (shift-to-right (:: $a (:: $b $tail))) (
    if (> $a $b) (:: $b (shift-to-right (:: $a $tail))) (:: $a (shift-to-right (:: $b $tail)))
    )
)

; Repeatedly applies the shift-to-right process to fully sort the list
(= (repeat-shift $count $list) 
    (if (> $count 0) (repeat-shift (- $count 1) (shift-to-right $list)) ($list))
)

; Main function to sort the list
(= (arrange $list)
    (repeat-shift (size $list) $list)
)

; Test case to check if the sorting works
!(arrange (:: 13(:: 3(:: 2(:: 1(:: 0(:: 11()))))))); 