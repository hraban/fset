;;; -*- Mode: Lisp; Package: ASDF; Syntax: ANSI-Common-Lisp -*-

;;; File: fset.asd
;;; Contents: ASDF definitions for FSet
;;;
;;; This is an alternate .asd file that I use for development.  You probably
;;; want the one in the parent directory.
;;;
;;; This file is part of FSet.  Copyright (c) 2007-2012 Scott L. Burson.
;;; FSet is licensed under the Lisp Lesser GNU Public License, or LLGPL.
;;; See: http://opensource.franz.com/preamble.html
;;; This license provides NO WARRANTY.

(in-package :asdf)

(defsystem FSet
  :depends-on (:gmap :mt19937 :named-readtables)
  :components
  ((:file "defs")
   (:file "port" :depends-on ("defs"))
   (:file "macros" :depends-on ("defs"))
   (:file "order" :depends-on ("port" "macros"))
   (:file "wb-trees" :depends-on ("order"))
   (:file "reader" :depends-on ("tuples" "macros"))
   (:file "fset" :depends-on ("wb-trees" "macros"))
   (:file "tuples" :depends-on ("fset"))
   (:file "testing" :depends-on ("reader"))
   (:file "interval" :depends-on ("fset"))
   (:file "relations" :depends-on ("fset" "reader"))
   (:file "complement-sets" :depends-on ("fset"))
   (:file "bounded-sets" :depends-on ("complement-sets"))))
