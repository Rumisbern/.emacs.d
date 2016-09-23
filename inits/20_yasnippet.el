;;;; yasnippetの設定

(add-to-list 'load-path
	     (expand-file-name "~/.emacs.d/site-lisp/yasnippet"))

(use-package yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mySnippets"
	"~/.emacs.d/site-lisp/yasnippet/snippets"
	))
(yas-global-mode 1)

