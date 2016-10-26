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

;;(counter "PCP.csv" "Yes" "" "Internist / General pediatrician" "/")
;;(counter "PCP.csv" "Yes" "" "Gastroenterologist" "/")
;;(counter "PCP.csv" "Yes" "" "Gynecologist" "/")
;;(counter "PCP.csv" "Yes" "" "Family practitioner" "/")
;;(counter "PCP.csv" "Yes" "" "Nurse practitioner" "/")
;;(counter "PCP.csv" "Yes" "" "" "/")
;;(counter "PCP.csv" "No" "Clinic or health center (but no specific provider)" "" "/")
;;(counter "PCP.csv" "No" "Hospital emergency room" "" "/")
;;(counter "PCP.csv" "No" "Don't get general health care" "" "/")
;;(counter "PCP.csv" "No" "Other (please specify)" "" "/")

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
 ;;(multi "Final Data USA only.csv" "Don�t need a doctor/Haven�t had any problems")
 ;;(multi "Final Data USA only.csv" "Don�t like/trust/believe in doctors")
 ;;(multi "Final Data USA only.csv" "Don�t know where to go")
 ;;(multi "Final Data USA only.csv" "Previous doctor is not available/moved")
 ;;(multi "Final Data USA only.csv" "Too expensive/no insurance/cost")
 ;;(multi "Final Data USA only.csv" "No care available")
 ;;(multi "Final Data USA only.csv" "Care too far away, not convenient")
 ;;(multi "Final Data USA only.csv" "Put it off/Didn�t get around to it")
 ;;(multi "Final Data USA only.csv" "Other (please specify)")

;;(counter "Ins vs bills.csv" "Better" "Very worried" "/")
;;(counter "Ins vs bills.csv" "Better" "Somewhat worried" "/")
;;(counter "Ins vs bills.csv" "Better" "Not worried at all" "/")

;;(counter "Ins vs bills.csv" "Worse" "Very worried" "/")
;;(counter "Ins vs bills.csv" "Worse" "Somewhat worried" "/")
;;(counter "Ins vs bills.csv" "Worse" "Not worried at all" "/")

;;(counter "Ins vs bills.csv" "About the same" "Very worried" "/")
;;(counter "Ins vs bills.csv" "About the same" "Somewhat worried" "/")
;;(counter "Ins vs bills.csv" "About the same" "Not worried at all" "/")

;;(counter "Ins vs bills.csv" "I don�t know" "Very worried" "/")
;;(counter "Ins vs bills.csv" "I don�t know" "Somewhat worried" "/")
;;(counter "Ins vs bills.csv" "I don�t know" "Not worried at all" "/")

;;(counter "Ins vs bills.csv" "I don�t have health coverage/insurance" "Very worried" "/")
;;(counter "Ins vs bills.csv" "I don�t have health coverage/insurance" "Somewhat worried" "/")
;;(counter "Ins vs bills.csv" "I don�t have health coverage/insurance" "Not worried at all" "/")


;;(multi "Ins vs bills.csv" "Better")
;;(multi "Ins vs bills.csv" "Worse")
;;(multi "Ins vs bills.csv" "About the same")
;;(multi "Ins vs bills.csv" "I don�t know")
;;(multi "Ins vs bills.csv" "I don�t have health coverage/insurance")


;;(multi "delaycare.csv" "No")
;;(multi "delaycare.csv" "Unable to get through on the telephone")
;;(multi "delaycare.csv" "Unable to get an appointment soon enough")
;;(multi "delaycare.csv" "Not enough time due to scheduling priorities")
;;(multi "delaycare.csv" "Upon arrival, you have to wait too long to see the doctor")
;;(multi "delaycare.csv" "The doctor/clinic�s office wasn't open when you could get there")
;;(multi "delaycare.csv" "No transportation available")
;;(multi "delaycare.csv" "Cost")

;; Looking at analysis and subanalysis of cost prohibitory care
;; and insurance comparison
;;(multi "costavoid.csv" "Prescription medications")
;;(multi "costavoid.csv" "Mental health care or counseling")
;;(multi "costavoid.csv" "Dental care (including checkups)")
;;(multi "costavoid.csv" "Eyeglasses")
;;(multi "costavoid.csv" 
;;       "To see a specialist (specialized doctor in a particular area)")
;;(multi "costavoid.csv" "Follow-up care")
;;(multi "costavoid.csv" "Surgery")


;;(subg "costavoid.csv" "Prescription medications" "Worse")
;;(subg "costavoid.csv" "Mental health care or counseling" "Worse")
;;(subg "costavoid.csv" "Dental care (including checkups)" "Worse")
;;(subg "costavoid.csv" "Eyeglasses" "Worse")
;;(subg "costavoid.csv" "To see a specialist (specialized doctor in a particular area)" "Worse")
;;(subg "costavoid.csv" "Follow-up care" "Worse")
;;(subg "costavoid.csv" "Surgery" "Worse")


;(Response "costavoid.csv" 
;     "Prescription medications" 
;     "Mental health care or counseling"
;       "Dental care (including checkups)"
;       "Eyeglasses"
;       "To see a specialist (specialized doctor in a particular area)"
;       "Follow-up care"
;       "Surgery"
;       "I don�t have health coverage/insurance")
;(Response "costavoid.csv" 
;       "Prescription medications"
;       "Mental health care or counseling"
;       "Dental care (including checkups)"
;       "Eyeglasses"
;       "To see a specialist (specialized doctor in a particular area)"
;       "Follow-up care"
;       "Surgery"
;       "I don�t know")
;(Response "abtcostavoid.csv" 
;       "Prescription medications"
;       "Mental health care or counseling"
;       "Dental care (including checkups)"
;       "Eyeglasses"
;       "To see a specialist (specialized doctor in a particular area)"
;       "Follow-up care"
;       "Surgery"
;       "About the same")
;(Response "costavoid.csv" 
;       "Prescription medications"
;       "Mental health care or counseling"
;       "Dental care (including checkups)"
;       "Eyeglasses"
;       "To see a specialist (specialized doctor in a particular area)"
;       "Follow-up care"
;       "Surgery"
;       "Worse")

;(ecounter "abtcostavoid.csv")

;; Examining Distribution of Disease
;(multi "Final Data USA only.csv" "Crohn�s disease")
;(Response "Final Data USA only.csv" "Crohn�s disease" "Male")
;(Response "Final Data USA only.csv" "Crohn�s disease" "Female")
;(multi "Final Data USA only.csv" "Ulcerative colitis")
;(Response "Final Data USA only.csv" "Ulcerative colitis" "Male")
;(Response "Final Data USA only.csv" "Ulcerative colitis" "Female")
;(multi "Final Data USA only.csv" "Indeterminate")
;(Response "Final Data USA only.csv" "Indeterminate" "Male")
;(Response "Final Data USA only.csv" "Indeterminate" "Female")
;(Response "Final Data USA only.csv" "I don�t know" "Female")
;(multi "Final Data USA only.csv" "Female")
;(multi "Final Data USA only.csv" "Male")

;;Examining duration of disease
;(multi "Final Data USA only.csv" "0-1 years")
;(multi "Final Data USA only.csv" "2-5 years")
;(multi "Final Data USA only.csv" "6-10 years")
;(multi "Final Data USA only.csv" "11-15 years")
;(multi "Final Data USA only.csv" "15 +years")

;Examining employment status
;(multi "Final Data USA only.csv" "Working for pay at a job or business")
;(multi "Final Data USA only.csv" "Looking for work")
;(multi "Final Data USA only.csv"
;       "Working, but not for pay, at a family-owned job or business")
;(multi "Final Data USA only.csv" 
;       "Not working at a job or business and not looking for work")
;(multi "Final Data USA only.csv"
;       "Unemployed")
;(multi "Final Data USA only.csv" "Never employed outside the home")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Taking care of house or family")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Going to school")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Retired")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "On a planned vacation from work")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "On family or maternity leave")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Temporarily unable to work for health reasons")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Have job/contract and off-season")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "On layoff")
;(Response "Final Data USA only.csv" "Employed but not currently working"
;          "Disabled")
;(multi "Final Data USA only.csv" "Employed but not currently working")

;Examining PCP
;(Response "PCP.csv" "Yes"
;       "Internist / General pediatrician")
;(Response "PCP.csv" "Yes"
;       "Gastroenterologist")
;(Response "PCP.csv" "Yes"
;       "Gynecologist")
;(Response "PCP.csv" "Yes"
;       "Family practitioner")
;(Response "PCP.csv" "Yes"
;       "Nurse practitioner")
;(Response "PCP.csv" "Yes" "")
;(Response "PCP.csv" "No"
;          "Clinic or health center (but no specific provider)")
;(Response "PCP.csv" "No"
;          "Hospital emergency room")
;(Response "PCP.csv" "No"
;          "Don't get general health care")
;(Response "PCP.csv" "No"
;          "Other (please specify)")
;(multi "PCP.csv" "No")

;;Examining lack of general medical care
;(multi "Final Data USA only.csv"
;       "Don�t need a doctor/Haven�t had any problems")
;(multi "Final Data USA only.csv"
;       "Don�t like/trust/believe in doctors")
;(multi "Final Data USA only.csv"
;       "Don�t know where to go")
;(multi "Final Data USA only.csv"
;       "Previous doctor is not available/moved")
;(multi "Final Data USA only.csv"
;       "Too expensive/no insurance/cost")
;(multi "Final Data USA only.csv"
;       "No care available")
;(multi "Final Data USA only.csv"
;       "Care too far away, not convenient")
;(multi "Final Data USA only.csv"
;       "Put it off/Didn�t get around to it")
