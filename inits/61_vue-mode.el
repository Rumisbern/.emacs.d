;;; vue-mode and flycheck

(use-package flycheck)

(use-package vue-mode
  :mode (("\\.vue\\'" . vue-mode))
  :init
  (add-hook 'vue-mode-hook 'flycheck-mode)
  )
