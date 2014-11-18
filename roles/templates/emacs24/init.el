;; Base
{% include "base.el" %}

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

(custom-set-faces
  '(variable-pitch ((t (:family "Ricky"))))
  '(fixed-pitch ((t (:family "Ricty")))))

;;
;; Ruby Settings
;;

{% include "ruby.el" %}
