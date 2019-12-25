;;(require 'flycheck)
(autoload 'flycheck-mode "flycheck-mode" nil t)
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-disabled-checkers '(javascript-jshint javascript-standard))))
(eval-after-load 'flycheck
  '(add-hook 'rjsx-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))

;; node_modules/.bin/eslint があれば使う設定
(require 'add-node-modules-path)
