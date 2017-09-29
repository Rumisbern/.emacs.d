;; Jedi
;; python 自動補完

;; (use-package jedi
;;   :commands jedi-mode
;;   :init
;;   (add-hook 'python-mode-hook 'jedi-mode)
;;   :config
;;   (jedi:ac-setup)
;;   (setq jedi:complete-on-dot t) ;; "."を入力したときもメソッドを補完
;;   (setq jedi:use-shortcuts t) ;; "M-."で定義にジャンプ, "M-,"で定義ジャンプから戻る　のショートカット使用可能
;;   (local-set-key (kbd "M-TAB") 'jedi:complete))

