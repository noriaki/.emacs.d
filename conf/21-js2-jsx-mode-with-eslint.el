;; via: http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; node_modules/.bin/eslint があれば使う設定
;; via: http://qiita.com/k_ui/items/7b7046865216107f3ac2
(defun kui/traverse-parents-for (filename &optional dirname)
  "Find FILENAME from parent directories of the current buffer file or DIRNAME"
  (if dirname
      (let ((path (concat (file-name-as-directory dirname) filename)))
        (if (file-exists-p path)
            path
          (if (string= "/" dirname)
              nil
            (kui/traverse-parents-for filename
                                      (file-name-directory
                                       (directory-file-name dirname))))))
    (kui/traverse-parents-for filename
                              (file-name-directory buffer-file-name))))

(defun kui/find-node-modules-bin (binname)
  "Find executable file named BINNAME from the node_modules directory"
  (let* ((moddir (kui/traverse-parents-for "node_modules"))
         (bin (if moddir (format "%s/.bin/%s" moddir binname))))
    (if (file-executable-p bin) bin)))

(defun kui/flycheck-set-node-modules-bin (checker binname)
  (let ((bin (kui/find-node-modules-bin binname)))
    (when bin
      (message "auto-detect %s: %s" binname bin)
      (flycheck-set-checker-executable checker bin))))

(defun kui/flycheck-set-checker-executable-from-node-modules ()
  (kui/flycheck-set-node-modules-bin 'javascript-eslint "eslint"))

(add-hook 'js2-jsx-mode-hook
          'kui/flycheck-set-checker-executable-from-node-modules)

(add-hook 'js2-jsx-mode-hook
          'noriaki/align-rules-list-for-javascript)
