;;; ruby-mode

(defun ruby-mode-hooks ()
  (modify-syntax-entry ?_ "w")
  (setq c-basic-offset 4)
  )

(add-hook 'ruby-mode-hook 'ruby-mode-hooks)

