;;;; ディレクトリツリーneotree
;; F8キーで開く
(add-to-list 'load-path "~/.emacs.d/site-lisp/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

