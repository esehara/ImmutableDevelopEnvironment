;; Package Mangement 
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalede" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;
{% include "auto-install.el" %}
;;

(add-to-list 'default-frame-alias '(font . "ricky-13.5"))
(custom-set-faces
  '(variable-pitch ((t (:family "Ricky"))))
  '(fixed-pitch ((t (:family "Ricty")))))
