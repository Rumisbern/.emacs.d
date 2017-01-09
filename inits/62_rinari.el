;; Rinari (http://rinari.rubyforge.org/)
;; Ruby on Railsの環境

;;; (package-install 'rinari)
;;; (package-install 'rhtml-mode)

;; ido-modeが推奨されているのでido-mode立ち上げ
;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
;; Rinari
(require 'rinari)
;; rhtml(erb.html)を編集するときに使うelisp
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
	  (lambda () (rinari-launch)))

