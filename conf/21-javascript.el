(setq-default c-basic-offset 2)
;;(autoload 'js2-mode "js2-mode" nil t)
(autoload 'rjsx-mode "rjsx-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . rjsx-mode))

(add-hook js2-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq my-js-mode-indent-num 2)
            (setq js-indent-level my-js-mode-indent-num)
            (setq js2-basic-offset my-js-mode-indent-num)
            (setq js-switch-indent-offset my-js-mode-indent-num)
            (setq js2-strict-missing-semi-warning nil)))

;; functions: conf/20-functions-flycheck-eslint.el
(add-hook 'js2-mode-hook
          'kui/flycheck-set-checker-executable-from-node-modules)
(add-hook 'js2-mode-hook #'flycheck-mode)

;; functions: conf/20-functions-typescript.el
;;(add-hook 'js2-mode-hook #'setup-tide-mode)
;; configure javascript-tide checker to run after your default javascript checker
;;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)

;; settings: conf/11-align.el
(add-hook 'js2-mode-hook
          'noriaki/align-rules-list-for-javascript)

;; electric-pair-mode: auto close bracket insertion
;;(defun noriaki/electric-js2-mode-hook ()
;;  "Auto close bracket insertion"
;;  (electric-pair-mode t))
;;(add-hook 'js2-mode-hook 'noriaki/electric-js2-mode-hook)

;; https://github.com/Fuco1/smartparens
;;  ->
;;(require 'smartparens-config)
;;(add-hook 'js2-mode-hook 'smartparens-mode)
;;(add-hook 'rjsx-mode-hook 'smartparens-mode)
