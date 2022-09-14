;; カラーテーマの設定
;;;(load-theme 'wombat t)

;; apropospriate
;;  http://rubikitch.com/2015/12/12/apropospriate-theme/
;;;(load-theme 'apropospriate-dark t)

;; hickey
;;  https://github.com/daylerees/colour-schemes
;;;(load-theme 'hickey t)

;; customize railscasts develop
(load "~/Development/emacs/railscasts-theme/railscasts-theme.el")
(load-theme 'railscasts t nil)

;; own: set transparent background and dark theme
(custom-set-variables
 '(frame-background-mode 'dark))
(custom-set-faces
 '(default ((t (:background nil)))))
