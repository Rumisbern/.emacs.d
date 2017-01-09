;; ido-mode
;; 補完インターフェイスをIDOにする

;;; (package-install 'smex)
;;; (package-install 'ido-vertical-mode)

(require 'ido)
(ido-mode t)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(when (boundp 'confirm-nonexistent-file-or-buffer)
  (setq confirm-nonexistent-file-or-buffer nil))

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
		  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; idoの選択候補を縦に並べる
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

