;; undo-tree
(add-hook 'after-init-hook
          (lambda ()
            (require 'undo-tree)
            (global-undo-tree-mode)
            (setq undo-tree-auto-save-history nil)))
