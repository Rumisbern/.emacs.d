;;;; php-mode

;;; (package-install 'web-mode)
;;; (package-install 'php-mode)
(use-package php-mode
  :config
  (setq web-mode-markup-indent-offset 2))

(use-package web-mode
  :init
  (add-hook 'php-mode-hook 'web-mode))

