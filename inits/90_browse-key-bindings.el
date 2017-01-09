;; "C-c h"でキーバインディングを書いたkey-bindings.htmlを表示する

(defun browse-key-bindings()
  (interactive)
  (eww-open-file "~/.emacs.d/key-bindings.html")
  (line-number-mode -1)
  (linum-mode -1)
)
 
(define-key global-map (kbd "C-c h") 'browse-key-bindings)

