;;;; 補完パッケージcompany

;;; (package-install 'company)
(use-package company)

(global-company-mode)

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)

