;; C-x j (M-x open-junk-file)でメモ書きファイル作成

;;; (package-install 'open-junk-file)

(setq open-junk-file-format "~/junk/%Y/%m/%Y-%m-%d-%H%M%S.")
(global-set-key (kbd "C-x j") 'open-junk-file)

