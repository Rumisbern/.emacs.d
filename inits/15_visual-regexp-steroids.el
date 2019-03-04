;; visual-regexp-steroids

(use-package visual-regexp-steroids
  :bind (("M-%" . vr/query-replace))
  :config
  (setq vr/engine 'python))
