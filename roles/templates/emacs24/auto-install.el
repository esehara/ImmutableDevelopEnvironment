;; auto installer

(require 'cl)
(defvar installing-package-list
   '(evil))
(let
  ((not-installed (loop for x in installing-package-list
    when (not (package-installed-p x)) collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed) (package-install pkg))))

(require 'evil)
(evil-mode t)
