;;;
; CSE240 Functional Programming 2 Homework
; This assignment involves functional programming in Scheme.
; Completion time: 8 hours
;
; @author Melissa Mandyck, Acuna code used
; @version February 8, 2024
;;;


(display "\n Q1 : "); Q1
(display "\n 1.1 : ") ; 1.1
(define (sumeven lst)
  (if (null? lst)
      0
      (+ (if (even? (car lst)) (car lst) 0)
         (sumeven (cdr lst)))))
(sumeven '(1 3 -4 5 6 -7)) ; My example returns 2

(display "\n 1.2 : ") ; 1.2
((lambda (lst)
  (define (sum-even lst)
    (if (null? lst)
        0
        (+ (if (even? (car lst)) (car lst) 0)
           (sum-even (cdr lst)))))
  (sum-even lst))
 '(1 3 -4 5 6 -7)); My example also returns 2
(display "\n Q2 : ") ; Q2
(display "\n New list: "); Display new list
(define (list-push-back lst new-list)
  (if (null? new-list)
      lst
      (append lst new-list)))

(display (list-push-back '(4 3 7 1 2 9) '(1 2)))
(display "\n")
(display "\n Q3 : "); Q3
(define (list-push-front lst new-list)
  (append new-list lst))
(display "\n New list: "); Display new list
 (list-push-front '(4 3 7 1 2 9) '(1 2)); My example output: (1 2 4 3 7 1 2 9)

(display "\n")
(display "\n Q4 : "); Q4
(define (list-draw-front n lst)
  (if (or (zero? n) (null? lst)) ; Check if n = 0 or lst is empty 
    '() ; return empty list   
    (cons (car lst) (list-draw-front (- n 1) (cdr lst))))); Otherwise returns the first n items in lst.
(display "\n New list: "); Display new list
(list-draw-front 3 '(4 3 7 1 2 9)) ; My example output: (4 3 7)

(display "\n")
(display "\n Q5 : "); Q5
(define (list-draw-back n lst)
  (if (or (zero? n) (null? lst)) ; Check if n = 0 or lst is empty 
    ; Return empty list
    '()
    ; Otherwise reverse list and call list-draw-front 
    (reverse (list-draw-front n (reverse lst)))))
(display "\n New list: "); Display new list
(list-draw-back 3 '(4 3 7 1 2 9)) ; My example output: (1 2 9)

(display "\n")
(display "\n Q6 : "); Q6
;Define a procedure called list-shuffle
(define (list-shuffle lst1 lst2)
  (if (and (null? lst1) (null? lst2))   ; Check if both lists empty
    ; Returns empty list
    '()
    ; otherwise cons the first elem of lst1 with first elem of lst2
    ; and recursively call list-shuffle on the rest of the lists
    (cons (car lst1) (cons (car lst2) (list-shuffle (cdr lst1) (cdr lst2))))))

(display "\n New list-shuffle: "); Display new list
(list-shuffle '(1 2) '(a b)) ; My example output: (1 a 2 b)
