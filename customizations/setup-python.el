;;;;
;; Python
;;;;

(elpy-enable)
(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-virtual-env-path 'current)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(when (require 'blacken nil t)
  (add-hook 'elpy-mode-hook 'blacken-mode))
