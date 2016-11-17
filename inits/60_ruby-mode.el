;;; ruby-mode

(defun ruby-mode-hooks ()
  (modify-syntax-entry ?_ "w"))

(add-hook 'ruby-mode-hook 'ruby-mode-hooks)

