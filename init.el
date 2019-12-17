;;; cask
(require 'cask "~/.emacs.d/.cask/cask.el")
(cask-initialize)
;;
(require 'pallet)
(pallet-mode t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;; init-loader.el
(require 'init-loader)
(setq init-loader-show-log-after-init "error-only")
(init-loader-load "~/.emacs.d/conf")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-listing-switches "-alh")
 '(display-time-mode t)
 '(js-indent-level 2)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (ac-js2 undo-tree zenburn-theme yasnippet yaml-mode web-mode tide sublime-themes ssh-config-mode smart-newline scss-mode ruby-end rjsx-mode pallet package-utils markdown-mode magit-popup magit json-mode init-loader haml-mode exec-path-from-shell dired-toggle dired-filter darcula-theme company auto-save-buffers-enhanced auto-complete auto-async-byte-compile apropospriate-theme apache-mode add-node-modules-path)))
 '(toggle-scroll-bar nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
