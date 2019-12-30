(setq-default c-basic-offset 2)

;; customize js2-mode
;;(setq js2-parse-ide-mode nil)
(autoload 'js2-mode "js2-mode" nil t)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)

;; https://github.com/felipeochoa/rjsx-mode
;; use rjsx-mode for .js, .jsx files
;; rjsx-mode derives from js2-jsx-mode
(autoload 'rjsx-mode "rjsx-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . rjsx-mode))

(defun my/rjsx-mode-hook ()
  "My initializing config for rjsx-mode."
  (setq indent-tabs-mode nil)
  (setq my-js-mode-indent-num 2)
  (setq js-indent-level my-js-mode-indent-num)
  (setq js-switch-indent-offset my-js-mode-indent-num)
  (setq sgml-basic-offset my-js-mode-indent-num)
  (setq js2-basic-offset my-js-mode-indent-num)
  (setq js2-strict-missing-semi-warning nil))

(add-hook 'rjsx-mode-hook #'my/rjsx-mode-hook)

;; functions: conf/20-functions-flycheck-eslint.el
(add-hook 'rjsx-mode-hook #'js-auto-format-mode)
(add-hook 'rjsx-mode-hook #'add-node-modules-path)
;;(add-hook 'rjsx-mode-hook #'flycheck-mode)) ;; emacsclientで動かないからglobal化

;; settings: conf/11-align.el
(add-hook 'rjsx-mode-hook #'noriaki/align-rules-list-for-javascript)

;;; 21-javascript.el ends here
