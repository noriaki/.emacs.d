;;; work-around: warnings Unnecessary call to ‘package-initialize’ in init file
;;;; via: https://github.com/cask/cask/issues/463#issuecomment-794249642
(setq warning-suppress-log-types '((package reinitialization)))

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
;;;(package-initialize)

;;; init-loader.el
(require 'init-loader)
(setq init-loader-show-log-after-init "error-only")
(init-loader-load "~/.emacs.d/conf")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-bbdb company-semantic company-clang company-cmake company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev company-capf))
 '(company-dabbrev-code-modes t)
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case t)
 '(company-idle-delay 0.05)
 '(company-minimum-prefix-length 2)
 '(company-selection-wrap-around t)
 '(company-show-numbers t)
 '(company-tooltip-align-annotations t)
 '(company-transformers
   '(company-sort-by-backend-importance company-sort-prefer-same-case-prefix company-sort-by-occurrence))
 '(custom-safe-themes
   '("e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" default))
 '(dired-listing-switches "-alh")
 '(display-time-mode t)
 '(enable-recursive-minibuffers t)
 '(flycheck-disabled-checkers
   '(javascript-jshint javascript-standard emacs-lisp-checkdoc))
 '(ivy-count-format "(%d/%d) ")
 '(ivy-extra-directories nil)
 '(ivy-height 15)
 '(ivy-use-virtual-buffers t)
 '(ivy-wrap t)
 '(js-indent-level 2)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(afternoon-theme railscasts-reloaded-theme railscasts-theme company-quickhelp company-quickhelp-terminal pos-tip dash-functional git-commit deferred ivy-rich counsel bury-successful-compilation js-auto-format-mode eslint-fix gitattributes-mode gitconfig-mode gitignore-mode ac-js2 undo-tree zenburn-theme yasnippet yaml-mode web-mode tide sublime-themes ssh-config-mode smart-newline scss-mode ruby-end rjsx-mode pallet package-utils markdown-mode magit-popup magit json-mode init-loader haml-mode exec-path-from-shell dired-toggle dired-filter darcula-theme company auto-save-buffers-enhanced auto-async-byte-compile apropospriate-theme apache-mode add-node-modules-path))
 '(toggle-scroll-bar nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
