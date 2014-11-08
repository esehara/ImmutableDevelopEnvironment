;; Package Mangement 
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("marmalede" . "http://marmalade-repo.org/packages/"))
(package-initialize)

{% include "auto-install.el" %}
