;; magit
(defalias 'magit 'magit-status)
(global-set-key (kbd "C-x g") 'magit-status)

(setenv "GIT_EDITOR" "emacsclient")
(add-hook 'shell-mode-hook 'with-editor-export-git-editor)

(add-hook 'after-init-hook
          (lambda ()
            (require 'git-commit)
            (global-git-commit-mode t)))
