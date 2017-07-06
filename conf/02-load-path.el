;;; 指定パスから配下ディレクトリを再帰的にload-pathへ追加する関数を定義
;;; http://qiita.com/icb54615/items/4c652ad4afccae5fe2ef
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp")
