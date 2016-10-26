;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Empty row counter|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/batch-io)
(require racket/match)
;; Counter : csv -> number
;; counts the number of empty rows in a csv file
;; Place csv file in the same folder as this script.
;; put quotes around file name and include file extension
;; example execution (counter "Better.csv")


(define (counter file type)
    (local{(define (ins type)
           (read-csv-file/rows file 
               (lambda (z)  (foldr + 0 (foldr cons '() (cons (match z
                             ;; put a new letter where column is different
                             ;; a a a a a a a b is for all but last column empty
                             [(list a a a a a a a b) 1]
                             [else 0]) '() ))))))}
                            
                            
         (foldr + 0 (ins type))))



(counter "better.csv" "Better")
(counter "aboutsame.csv" "About the same")
(counter "donthave.csv" "I don’t have health coverage/insurance")
(counter "dontknow.csv" "I don’t know")
(counter "worse12.csv" "worse")
