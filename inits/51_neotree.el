;;;; ディレクトリツリーneotree
(add-to-list 'load-path "~/.emacs.d/site-lisp/neotree")
(require 'neotree)
;; F8キーで開く
(global-set-key (kbd "C-c t") 'neotree-toggle)
;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

