;; system-type predicates
;; from http://d.hatena.ne.jp/tomoya/20090807/1249601308
(setq darwin-p   (eq system-type 'darwin)
      linux-p    (eq system-type 'gnu/linux)
      carbon-p   (eq system-type 'mac)
      meadow-p   (featurep 'meadow))

; Emacs と Mac のクリップボード共有
; from http://hakurei-shain.blogspot.com/2010/05/mac.html
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
      (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
        (process-send-string proc text)
        (process-send-eof proc)))))

;; (when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
;;   (setq interprogram-cut-function 'paste-to-osx)
;;   (setq interprogram-paste-function 'copy-from-osx))

