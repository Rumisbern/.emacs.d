;;;; go-mode

(add-to-list 'exec-path (expand-file-name (concat (getenv "HOME") "/go/bin")))
(add-to-list 'exec-path (expand-file-name (concat (getenv "HOME") "/.go/bin")))

(use-package go-mode
  :init
  (add-hook 'go-mode-hook 'company-mode)
  (add-hook 'go-mode-hook 'flycheck-mode)
  (add-hook 'go-mode-hook (lambda()
           (add-hook 'before-save-hook' 'gofmt-before-save)
           (local-set-key (kbd "M-.") 'godef-jump)
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode)
           (setq indent-tabs-mode t)
           (setq c-basic-offset 2)
           (setq tab-width 2)))
  )
(use-package company-go)

