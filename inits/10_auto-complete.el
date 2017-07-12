;;;; 補完パッケージ auto-complete
(use-package auto-complete
  :config
  (ac-config-default)
  (global-auto-complete-mode t)
  (ac-set-trigger-key "TAB")
  (setq ac-use-menu-map t)
  (setq ac-use-fuzzy t))
