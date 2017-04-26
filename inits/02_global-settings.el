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
