;;;; ディレクトリツリーneotree
(add-to-list 'load-path "~/.emacs.d/site-lisp/neotree")
(require 'neotree)
;; F8キーで開く
(global-set-key (kbd "C-c t") 'neotree-toggle)
;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
;; ファイル検索
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
	(file-name (buffer-file-name)))
    (if project-dir
	(progn
	  (neotree-dir project-dir)
	  (neotree-find file-name))
      (message "Could not find git project root."))))
(define-key neotree-mode-map (kbd "C-c C-p") 'neotree-project-dir)

