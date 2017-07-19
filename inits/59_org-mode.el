;; org-mode

;; キーバインド
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

;; org-modeでの強調表示を可能にする
(add-hook 'org-mode-hook 'turn-on-font-lock)
;; 拡張子がorgのファイルを開いた時，自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; orgディレクトリ
(setq org-directory "~/Dropbox/share")
;; org-default-notes-fileのファイル名
(setq org-default-notes-file "notes.org")
;; TODO状態
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")))
;; DONEの時刻を記録
(setq org-log-done 'time)


;; org-capture
(setq org-capture-templates
      '(("t" "TODO" entry (file+headline "~/Dropbox/share/TODO.org" "Inbox")
         "*** TODO %?\n    CAPTURED_AT: %a\n    %i")))

;; org-agenda
(setq org-agenda-custom-commands
      '(
        ("o" . "Original agenda view") ; description for "o" prefix
        ("ot" todo "TODO")
        ))
;; アジェンダ表示の対象ファイル
(setq org-agenda-files (list org-directory))
;; アジェンダ表示で下線を用いる
(add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
(setq hl-line-face 'underline)
;; 標準の祝日を利用しない
(setq calendar-holidays nil)

