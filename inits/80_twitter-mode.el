;;; twitter-modeの設定

(when (equal system-type 'darwin)
  ;; GnuPGにパスを通す
  (add-to-list 'exec-path "/usr/local/bin")
  
  (add-to-list 'load-path
	       (expand-file-name "~/.emacs.d/site-lisp/twittering-mode"))

  (use-package twittering-mode)

  ;認証済みaccess tokenをGnuPGで暗号化して保存する
  (setq twittering-use-master-password t)

  (setq twittering-use-ssl t)

  ;アイコン表示
  (setq twittering-icon-mode t)

  ;タイムラインを5分(300秒)間隔で更新
  (setq twittering-timer-interval 300) 

  ;アイコン取得時の情報表示をデフォルトで抑制するか
  (setq twittering-url-show-status t)  

  ;全てのアイコンを保存するか
  (setq twittering-icon-storage-limit t)

  ;最初に開くタイムラインを設定する
  (setq twittering-initial-timeline-spec-string
	'(":home"
  ))
)
  

