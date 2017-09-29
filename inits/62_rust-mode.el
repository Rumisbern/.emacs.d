;; rust-mode

(use-package rust-mode
  :config
  (setq-default rust-format-on-save t)
  (add-hook 'rust-mode-hook (lambda ()
                              (racer-mode)
                              (flycheck-rust-setup)))
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook (lambda ()
                               (company-mode))))
