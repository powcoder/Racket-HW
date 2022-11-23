;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |racket hw|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require spd/tags)

;; For this problem you are in charge of organizing a number of chefs
;; onto teams for an upcoming cooking competition. The competition places
;; chefs into two teams, Team Red and Team Blue, and they perform a number
;; of cooking challenges to win an award.
;;
;; Each chef has a name, a number of years of experience, and a type
;; of cooking they specalize in. Familiarize yourself with the data
;; definition for a chef provided below.
;;

(@htdd Chef)
(define-struct chef (name experience specialty))
;; Chef is (make-chef String Natural String)
;; interp. a chef in a cooking competition with a first name,
;;         the number of years they have been a professional chef,
;;         and their self-proclaimed cooking specialization

(define C1  (make-chef "Ali"  1 "pasta"))
(define C2  (make-chef "Hu"   2 "breakfast"))
(define C3  (make-chef "Mae"  2 "pizza"))
(define C4  (make-chef "Sue"  3 "sushi"))
(define C5  (make-chef "Ken"  4 "desserts"))
(define C6  (make-chef "Kim"  4 "pasta"))
(define C7  (make-chef "Ann"  5 "tapas"))
(define C8  (make-chef "Rick" 7 "sushi"))
(define C9  (make-chef "Jay"  5 "desserts"))
(define C10 (make-chef "Andy" 4 "sushi"))
(define C11 (make-chef "Jill"  9 "ramen"))
(define C12 (make-chef "Tina" 2 "burgers"))

(define (fn-for-chef c)
  (... (chef-name c)
       (chef-experience c)
       (chef-specialty c)))

;;
;; When selecting teams for the cooking competition, there are 2 constraints
;; that must be followed:
;;
;; 1) There are no limits to the number of chefs that can be on a team, but
;;    the combined experience of all of the chefs must sum to at least 10.
;;    This means there could be 4 chefs each with 3 years of professional
;;    experience on a team or just a single chef with 10 or more years of
;;    experience, or any other combination that sums to at least 10.
;;
;; 2) The combined experience of the chefs on Team Red must equal the combined
;;    experience of the chefs on Team Blue. 
;;
;; 3) Not all the chefs have to be put onto a team.

(@problem 8)
;;
;; Design a function called select-teams that consumes a list of chefs who
;; are applicants for the competition. The function attempts to build two
;; valid teams that comform the rules described above.
;;
;; If two valid teams can be formed, the function produces a list containing
;; two lists, the A team members and the B team members. If valid teams
;; cannot be formed, the function produces false.  So the signature for
;; the select-teams function is:
;;  
;; (@signature (listof Chef) -> (list (listof Chef) (listof Chef)) or false)
;;
