;; Rinari (http://rinari.rubyforge.org/)
;; Ruby on Railsの環境

;;; (package-install 'rinari)
;;; (package-install 'rhtml-mode)

;; Rinari
(require 'rinari)
;; rhtml(erb.html)を編集するときに使うelisp
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
	  (lambda () (rinari-launch)))

