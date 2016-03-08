;;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)
;;; 元々のC-hをM-?へ変更
(global-set-key (kbd "M-?") 'help-for-help)
;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)
;; RET key
(global-set-key (kbd "C-m") 'newline)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'smart-newline)

;; https://github.com/ncaq/.emacs.d/blob/master/profile/20_global-set-key.el
(global-set-key (kbd "C-'") 'auto-complete)

;; align (see also 21-XXX-mode's align-rules-list)
(global-set-key (kbd "C-x ;") 'align)
(global-set-key (kbd "C-x :") 'align-regexp)

;; C-tab, C-S-tab, to change buffer window
(global-set-key (kbd "C-t") 'next-multiframe-window)
(global-set-key (kbd "C-S-t") 'previous-multiframe-window)
