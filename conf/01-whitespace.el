;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 行末の空白をハイライト
;; via: http://qiita.com/yyamamot/items/ab5b028aee8f5b81107e
(setq-default show-trailing-whitespace t)

;; タブをハイライト
;; via: http://qiita.com/yyamamot/items/ab5b028aee8f5b81107e
(add-hook 'font-lock-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("^\t" 0 'trailing-whitespace prepend)))))
