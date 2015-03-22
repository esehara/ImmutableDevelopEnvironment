(require 'ruby-mode)
(setq ruby-insert-encoding-magic-comment nil)

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;;;
;;; Ruby hooks
;;;

(require 'ruby-end)

(add-hook 'ruby-mode-hook '(lambda () 
  (abbrev-mode 1)
  (electric-pair-mode t)
  (electric-indent-mode t)
  (electric-layout-mode t)))

(add-hook 'ruby-mode-hook 'rubocop-mode)
