;;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;;; init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
