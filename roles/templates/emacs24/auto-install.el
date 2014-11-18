;; auto installer

(require 'cl)
(defvar installing-package-list 
  '(
    auto-complete
    autopair
    anything
    evil
    emmet-mode
    helm
    linum
    magit
    org
    solarized-theme
    markdown-mode
    yaml-mode
    windmove
    
    ;; for Ruby
    ruby-electric
    ruby-block
    rubocop
    ))

(let
  ((not-installed (loop for x in installing-package-list
    when (not (package-installed-p x)) collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed) (package-install pkg))))

(mapc 
  (lambda (x) (require (quote x)))
  installing-package-list)

(load-theme 'solarized-dark t)
(evil-mode t)
(windmove-default-keybindings 'meta)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook 
	  (lambda () (setq emmet-indentation 2)))

(require 'linum)
(global-linum-mode)
