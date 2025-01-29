; i have tried this but i show signal time out

(= (list-length $lst)
   (if (== $lst ())
       0
       (+ 1 (list-length (rest $lst)))))

(= (nth-element $lst $n)
   (if (== $n 0)
       (head $lst)
       (nth-element (rest $lst) (- $n 1))))

(= (append $lst $x)
   (if (== $lst ())
       (cons $x ())
       (cons (head $lst) (append (rest $lst) $x))))

(= (concat $lst1 $lst2)
   (if (== $lst1 ())
       $lst2
       (cons (head $lst1) (concat (rest $lst1) $lst2))))

(= (partition $lst $pivot)
   (if (== $lst ())
       (cons () ())
       (if (< (head $lst) $pivot)
           (let $part (partition (rest $lst) $pivot)
               (cons (cons (head $lst) (head $part))
                     (nth-element $part 1)))
           (let $part (partition (rest $lst) $pivot)
               (cons (head $part)
                     (cons (head $lst) (nth-element $part 1)))))))

(= (sort-list $lst)
   (if (== $lst ())
       ()
       (concat (sort-list (head (partition (rest $lst) (head $lst))))
               (cons (head $lst) ())
               (sort-list (head (partition (rest $lst) (head $lst)))))))

!(sort-list (cons 7 (cons 3 (cons 10 (cons 2 (cons 8 ()))))))
