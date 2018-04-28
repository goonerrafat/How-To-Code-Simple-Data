;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; Produce true if the first image is larger(in area) than the second.

;(define (larger-image? img1 img2) true)                                ;stub

(check-expect (larger-image? (rectangle 20 30 "solid" "red")            ;test-coverage = check
                             (rectangle 20 40 "solid" "black"))         ;corner_case-coverage = check
              (> (* 20 30) (* 20 40)))
                                                                         
(check-expect (larger-image? (rectangle 30 40 "solid" "red")
                             (square 30 "solid" "black")) true)

(check-expect (larger-image? (square 30 "solid" "red")
                             (square 30 "solid" "red")) false)

;(define (larger-image? img1 img2)                                       ; template
;  (.. img1 img2))

(define (larger-image? img1 img2)                                        ;function-body
  (> (* (image-width img1) (image-height img1))
     (* (image-width img2) (image-height img2)))) 

