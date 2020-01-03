;;; Code:

;; https://github.com/emacs-mirror/emacs/blob/dd139e175a808b5879e3ba6173a016947a60f9a6/lisp/files.el#L5739
(defun make-empty-file (filename &optional parents)
  "Create an empty file FILENAME.
Optional arg PARENTS, if non-nil then creates parent dirs as needed.
If called interactively, then PARENTS is non-nil."
  (interactive
   (let ((filename (read-file-name "Create empty file: ")))
     (list filename t)))
  (when (and (file-exists-p filename) (null parents))
    (signal 'file-already-exists `("File exists" ,filename)))
  (let ((paren-dir (file-name-directory filename)))
    (when (and paren-dir (not (file-exists-p paren-dir)))
      (make-directory paren-dir parents)))
  (write-region "" nil filename nil 0))

(provide '20-patch-make-empty-file)
;;; 20-patch-make-empty-file.el ends here
