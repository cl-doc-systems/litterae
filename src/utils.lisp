(defpackage #:example/utils
  (:use #:cl)
  (:export #:do-the-job)
  (:documentation "The utils"))
(in-package example/utils)


(defun concat (first second)
  "This function is not exported and should not be showed in the API reference."
  (format nil "~A ~A" first second))


(defun do-the-job (first second)
  "The function does the job.

   It **concatenates** first and second arguments
   calling internal function concat.

   On this multiline we'll check how does documentation
   system processes docstrings.

   By the way, pay attention at the second paragraph where
   I've used [Markdown](https://www.markdownguide.org/basic-syntax/)
   format to make the word \"concatenates\" bold.

   Sandly, we can't reference parts of the documentation from README.
   I'd like to make a link to \"Handwritten documentation\" chapter
   but there is no HTML anchor there."
  (concat first second))
