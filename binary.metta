
(= (binary-map $f $cst ()) ())

(= (binary-map $f $cst (:: $x $rest)) (
    :: ($f $x $cst) (binary-map $f $cst $rest)
    )
)

(= (add-two $a $b) (
    + $a $b
    )
)

!(binary-map add-two 10 (binary-map add-two 10 (:: 1(:: 2(:: 3()))))) 