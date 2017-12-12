;; load environment values
(load-file (expand-file-name "~/.emacs.d/shellenv.el"))

;; set PATH
(dolist (path (reverse (split-string (getenv "PATH") ":")))
  (add-to-list 'exec-path path))

;; expand eshell-command-aliases-list
(setq eshell-command-aliases-list
      (let (new-alias-list eshell-command-aliases-list)
        (dolist (alias alias-list new-alias-list)
          (setq new-alias-list (cons alias new-alias-list)))))

