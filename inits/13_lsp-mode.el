;;; setting for lsp-mode, company-lsp, lsp-ui, lsp-python-ms

(use-package lsp-mode
  :commands lsp)
(use-package company-lsp)
(use-package lsp-ui
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (add-hook 'python-mode-hook #'lsp))
(use-package pyenv-mode-auto)
(use-package lsp-python-ms
  :ensure nil
  :demand t
  :hook (python-mode . lsp)
  :config
  ;; for dev build of language server
  (setq lsp-python-ms-dir
        (expand-file-name "~/src/python-language-server/output/bin/Release/"))
  ;; for executable of language server, if it's not symlinked on your PATH
  (setq lsp-python-ms-executable
        "~/src/python-language-server/output/bin/Release/osx-x64/publish/Microsoft.Python.LanguageServer"))

