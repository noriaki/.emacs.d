(add-hook 'after-init-hook #'global-flycheck-mode)
(custom-set-variables
 '(flycheck-disabled-checkers '(javascript-jshint
                                javascript-standard
                                emacs-lisp-checkdoc)))

;; node_modules/.bin/eslint があれば使う設定
;;;(require 'add-node-modules-path)
;;; see: 21-javascript.el -- (add-hook 'rjsx-mode-hook #'add-node-modules-path)
