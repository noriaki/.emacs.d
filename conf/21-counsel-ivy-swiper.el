(defun my/counsel-ivy-swiper-key-binding ()
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "C-s") 'swiper-isearch)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-x l") 'counsel-locate))

(add-hook 'after-init-hook
          (lambda ()
            (ivy-mode 1)
            (counsel-mode 1)))

(custom-set-variables
 '(ivy-use-virtual-buffers t)
 '(ivy-count-format "(%d/%d) ")
 '(enable-recursive-minibuffers t)
 '(ivy-wrap t)
 '(ivy-height 15)
 '(ivy-extra-directories nil))

(with-eval-after-load 'counsel
  (my/counsel-ivy-swiper-key-binding))
