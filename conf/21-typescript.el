(add-to-list 'auto-mode-alist '("\\.ts$" . rjsx-mode))

;; functions: conf/20-functions-typescript.el
(add-hook 'rjsx-mode-hook #'setup-tide-mode)

(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)
