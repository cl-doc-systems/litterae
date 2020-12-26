(defpackage #:example/app
  (:use #:cl)
  (:import-from #:example/utils)
  (:import-from #:example/class)
  (:documentation "This is docstring for the package.

                   The package contains a function which does it's job by
                   applying transformation to the first and second arguments.")
  (:export #:foo
           #:defrule
           #:number-one))
(in-package example/app)


(defmacro defrule (name &body body)
  "This is a fake macro just to demonstrate how eazy-documentation
   will extract docstrings from it's forms."
  `(defparameter ,name '(,@(rest body))))


(defrule number-one
    "This is a rule's docstring. Nothing special, just a text.

After macro-expansion it will be just:

    (defparameter number-one '((a b c)))

"
  (a b c))


(defun foo (first &key (other 100500))
  "This is example function.

   Internally it calls [DO-THE-JOB](#EXAMPLE/UTILS:DO-THE-JOB)
   to do the real job.

   Note, I'm using Markdown in this doctring. This is default
   and docstrings markup can be changed by a parameter."
  (example/utils:do-the-job first other))
