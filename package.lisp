;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

(in-package #:common-lisp-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; this is needed because the color names in the autogenerated file are
  ;; exported manually and some implementations (eg SBCL) complain about the
  ;; inconsistency with DEFPACKAGE.
  (when (find-package '#:cl-colors)
    (do-symbols (symbol '#:cl-colors)
      (unexport symbol '#:cl-colors))))

(defpackage #:cl-colors
  (:use #:alexandria #:common-lisp #:let-plus)
  (:export #:rgb #:rgb-red #:rgb-green #:rgb-blue #:gray #:&rgb
           #:hsv #:hsv-hue #:hsv-saturation #:hsv-value #:&hsv
           #:hsl #:hsl-hue #:hsl-saturation #:hsl-lightness #:&hsl
           #:rgb-to-hsv #:hsv-to-rgb #:hsl-to-rgb #:hex-to-rgb #:as-hsv #:as-hsl #:as-rgb
           #:rgb-combination #:hsv-combination #:hsl-combination
           #:parse-hex-rgb #:print-hex-rgb))
