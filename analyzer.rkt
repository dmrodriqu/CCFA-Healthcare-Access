;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname analyzer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;language: intermediate student with lambda
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 2htdp/batch-io)
(require racket/match)

;; !!!!!!!!!!!!! ecounter has a bug, please read the note!
;; � may cause ' to be read incorrectly in csv files
;; it is here for your convenience

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Counter : File columnA columnB ... -> number
;; Counts the number of rows that match the criteria given
;; This program can be expanded by adding more arguments to the
;; definition and the local definition
;; CSV file must be saved in the same directory as this rkt file.
(define (counter file a b c d e f g h i) ;;add more arguments here if needed i.e. (a b c d) 
  (local
    ({define (doesitmatch ls)
       (cond
         [(empty? ls) 0]
         ;; copy extra arguments here i.e. [(eq? ls (list a b c d)) 1]
         [(equal? ls (list a b c e f g h i)) 1] 
         [else 0])})
    (foldr + 0(read-csv-file/rows file (lambda (x) (doesitmatch x))))))
                                         


;; Example (you can use (+ a b c ...) to add the results)
;; used (counter file a b c d) and changed the (cond...
;; to [(equal? ls (list a b c d)) 1]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (multi file a)
  (local
    ({define (doesitmatch ls)
       (cond
         [(empty? ls) 0]
         [(= (length (filter (lambda (x) (eq? #t x))
               (map
                (lambda (x) (string=? a x)) ls)))1) 1] 
         [else 0])})
    (foldr + 0(read-csv-file/rows file (lambda (x) (doesitmatch x))))))
                                         
(check-expect
 (multi "nosource.csv" "Don�t need a doctor/Haven�t had any problems")
 54)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require racket/match)
;; ecounter : csv -> number
;; counts the number of empty rows in a csv file
;; Place csv file in the same folder as this script.
;; put quotes around file name and include file extension
;; example execution (counter "Better.csv")

;;!!(bug)!! IMPORTANT if ecounter and response do not add to the total number,
;; ecounter has not added the correct number of empty rows. The (+ (-1))
;; prevents some occurences of adding an additional empty row, but this
;; may lead to adding one less empty row than there should be. 
;;(response) is more reliable.

(define (ecounter file)
    (local{(define rowender
             (if (member "/" 
                         (first (rest (read-csv-file file))))
                 (local{(define ins 
                          (read-csv-file/rows file 
                                              (lambda (z)  (foldr + 0 (foldr cons '() (cons (match z
                             ;; put a new letter where column is different
                             ;; a a a a a a a b is for all but last column empty
                             [(list a a a a a a a b c) 1]
                             [else 0]) '() ))))))}                    
         (+ -1 (foldr + 0 ins)))
                 (local{(define ins 
                          (read-csv-file/rows file 
                                              (lambda (z)  (foldr + 0 (foldr cons '() (cons (match z
                             ;; put a new letter where column is different
                             ;; a a a a a a a b is for all but last column empty
                             [(list a a a a a a a b) 1]
                             [else 0]) '() ))))))}
         (+ -1 (foldr + 0 ins)))))}
      rowender))
      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; subg: criteria subgroup -> number
;; finds the number of occurences that match the criteria and subgroup


(define (subg file crit1 sub)
  (local{(define finder 
           (read-csv-file/rows file 
                               (lambda (x) (cond
                                [(or (false? (member sub x))
                                     (false? (member crit1 x))) 0]
                                [(not(false? (and (member crit1 x) 
                                                  (member sub x)))) 1]))))}
    (foldr + 0 finder)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Response: file criteria1 criteria2... criteria(n) subgroup -> number
;; Counts the number of total reponses per subgroup if question can
;; have multiple responses

(define (Response file crit1 sub)
  (local{(define finder 
           (read-csv-file/rows file 
                               (lambda (x) (cond
                                             [(and 
                                               (not(false? (member crit1 x) 
                                                              ))
                                               (not (false?(member sub x)))) 1]
                                             [else 0]))))}
    (foldr + 0 finder)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Workspace;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (ecounter file string) is for counting empty rows with string
;; as the string that is the last column string

;; (counter file a b c) matches consecutive columns to input of
;; variables a b c ...

;; (multi file a) counts the number of matches in the csv file.
 
