;; tab -> space
(setq-default indent-tabs-mode nil)

;; whitespace
(require 'whitespace)
(setq whitespace-style '(face
                         trailing
                         tabs
                         space-mark
                         tab-mark
                         ))
(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
(global-whitespace-mode 1)

;; delete-backward-char by C-h
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; help prefix by C-?
(global-set-key (kbd "M-?") 'help-for-help)

;; for window system
(if window-system
    (progn
      ;; フルスクリーン
      (set-frame-parameter nil 'fullscreen 'fullboth)
      (set-face-attribute 'default nil :height 140)
      (scroll-bar-mode 0)))

;; for mac
(when (memq window-system '(mac ns))
  (create-fontset-from-ascii-font
   "Menlo-14:weight=normal:slant=normal"
   nil
   "osaka")
  (set-fontset-font
   "fontset-osaka"
   'unicode
   (font-spec :family "Osaka" :size 16)
   nil
   'append)
  (add-to-list 'default-frame-alist '(font . "fontset-osaka")))
