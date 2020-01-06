(defun my/company-customize-keybind ()
  ;; C-n, C-pで補完候補を次/前の候補を選択
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  ;; C-sで絞り込む
  (define-key company-active-map (kbd "C-s") 'company-filter-candidates)
  ;; TABで次候補/候補が一つの場合は選択
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  ;; C-hはBackSpace割当のため無効化
  (define-key company-active-map (kbd "C-h") nil))

(defun my/company-customize-face-attributes ()
  (set-face-attribute 'company-tooltip nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common-selection nil
                      :foreground "white" :background "steelblue")
  (set-face-attribute 'company-tooltip-selection nil
                      :foreground "black" :background "steelblue")
  (set-face-attribute 'company-preview-common nil
                      :background nil :foreground "lightgrey" :underline t)
  (set-face-attribute 'company-scrollbar-fg nil
                      :background "orange")
  (set-face-attribute 'company-scrollbar-bg nil
                      :background "gray40"))

(add-hook 'after-init-hook #'global-company-mode)

(custom-set-variables
 '(company-idle-delay 0.05)
 '(company-minimum-prefix-length 2)
 '(company-selection-wrap-around t))

(with-eval-after-load 'company
  (my/company-customize-keybind)
  (my/company-customize-face-attributes))
