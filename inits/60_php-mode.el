;;;; php-mode

;;; (package-install 'web-mode)
;;; (package-install 'php-mode)
(use-package php-mode
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq tab-width 2)
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil))

(use-package web-mode
  :init
  (add-hook 'php-mode-hook 'web-mode))

