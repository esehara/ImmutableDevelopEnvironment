;; auto installer

(require 'cl)
(defvar installing-package-list 
  '(
    auto-complete
    autopair
    anything
    coffee-mode
    evil
    emmet-mode
    helm
    linum
    magit
    org
    solarized-theme
    rainbow-delimiters
    markdown-mode
    yaml-mode
    ac-dabbrev
    yasnippet
    windmove
    ;; for Ruby
    ;; Not Use emacs24? -> http://blog.livedoor.jp/ooboofo3/archives/53748087.html
    ;; ruby-electric
    ruby-block
    ruby-end
    rbenv
    robe
    flycheck
    rubocop
    ;; for Development
    clojure-mode
    haskell-mode
    ac-slime
    slime
    web-mode
    whitespace
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
