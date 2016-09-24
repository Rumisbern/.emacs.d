;;;; markdown-mode

;;; (package-install 'markdown-mode)
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; multimarkdownコマンドがあれば
;; C-c C-c m で別バッファにhtmlファイルを出力
;; C-c C-c p で一時ファイルを生成し、ブラウザを起動
(when (executable-find "multimarkdown")
  (setq markdown-command "multimarkdown"))

;; Marked 2 (OS X)の起動スクリプト marked2 パス内があれば
;; C-c C-c o でMarked 2が起動する
(when (executable-find "marked2")
  (setq markdown-open-command "marked2"))

