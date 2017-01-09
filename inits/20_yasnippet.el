;;;; yasnippetの設定

(add-to-list 'load-path
	     (expand-file-name "~/.emacs.d/site-lisp/yasnippet"))

(use-package yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mySnippets"
	"~/.emacs.d/site-lisp/yasnippet/snippets"
	))

(eval-after-load "yasnippet"
  '(progn
     ;; companyと競合するのでyasnippetは "C-u" のみにする
     (define-key yas-minor-mode-map (kbd "C-u") 'yas/expand)
     (define-key yas-minor-mode-map (kbd "TAB") nil)
     (yas-global-mode 1)))

