;;;; php-mode

;;; (package-install 'web-mode)
;;; (package-install 'php-mode)
;;; (package-install 'company-php)
;;; (package-install 'company-web)

(use-package php-mode
  :mode (("\\.php\\'"   . php-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq tab-width 2)
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil))

;; (use-package web-mode
;;   :mode (("\\.html?\\'" . web-mode)
;;          ("\\.php\\'"   . web-mode)))

(use-package company-php
  :init
  (add-hook 'php-mode-hook 'company-php))

(use-package company-web
  :init
  (add-hook 'php-mode-hook 'company-web))
