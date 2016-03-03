;;; C-hをBSに
(global-set-key "\C-h" 'backward-delete-char)
;;; 元々のC-hをM-?へ変更
(global-set-key "\M-?" 'help-for-help)
;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)
;; RET key
(global-set-key "\C-m" 'newline)
(global-set-key "\C-j" 'newline-and-indent)

;; https://github.com/ncaq/.emacs.d/blob/master/profile/20_global-set-key.el
(global-set-key (kbd "C-'") 'auto-complete)
(global-set-key (kbd "C-c ;") 'align-regexp)
