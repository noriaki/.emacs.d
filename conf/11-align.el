(require 'align)
;; keybind: 01-keybind.el

;; call from 21-XXX-mode.el
(defun noriaki/align-rules-list-for-javascript ()
  "set rules to align-rules-list"
  (add-to-list 'align-rules-list
               '(align-rules-javascript-assignment-literal
                 (regexp . "\\(\\s-*\\)=")
                 (modes . '(js2-jsx-mode))))
  (add-to-list 'align-rules-list
               '(align-rules-javascript-hash-literal
                 (regexp . ":\\(\\s-*\\)")
                 (modes . '(js2-jsx-mode))))
  (add-to-list 'align-rules-list
               '(align-rules-javascript-es6-import-from-literal
                 (regexp . "\\(\\s-*\\)from")
                 (modes . '(js2-jsx-mode))))
  )
