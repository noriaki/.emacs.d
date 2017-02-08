;; インデントを2に設定
(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

(add-hook 'json-mode-hook 'noriaki/align-rules-list-for-javascript)
