(icomplete-mode t)

;; don't show start screen 
(setq
 inhibit-splash-screen t
 initial-scratch-message nil)

;; not show tool-bar
(setq tool-bar-mode -1)

;; not create markup-files
(setq make-backup-files nil)

;; yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; server mode
(require 'server)
(unless (server-running-p) (server-start))

(show-paren-mode 1)
;; --------------------------------
;; change three type font function
;; --------------------------------

(defconst FONT_FAMILY "Ricty")
(defconst DEFAULT_FONT_SIZE 14)

(defun font-size-change(x)
  (set-frame-font (concat FONT_FAMILY "-" (format "%s" x))))

(defun big-font-mode()
  (interactive)
  (font-size-change 18))

(defun default-font-mode () 
  (interactive)
  (font-size-change 14))

(defun small-font-mode ()
  (interactive)
  (font-size-change 10))

(global-set-key (kbd "C-1") 'big-font-mode)
(global-set-key (kbd "C-2") 'default-font-mode)
(global-set-key (kbd "C-3") 'small-font-mode)

;;
;; Anything Settings
;;

(require 'coffee-mode)
(defun coffee-custom ()
  "coffee-mode-hook"
  (and (set (make-local-variable 'tab-width) 2)
       (set (make-local-variable 'coffee-tab-width) 2)))
(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))



(load-theme 'solarized-dark t)
(evil-mode t)
(windmove-default-keybindings 'meta)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook 
	  (lambda () (setq emmet-indentation 2)))

(require 'linum)
(global-linum-mode);;

(custom-set-faces
  '(variable-pitch ((t (:family "Ricky"))))
  '(fixed-pitch ((t (:family "Ricty")))))
(require 'whitespace)
;;
;; 全部のmodeで80文字限定指定になるの超うざいので
;; あとでhookにする(Markdownでもなるのは勘弁して
;; 頂きたく)
;;
;; (setq whitespace-line-column 80)

(setq whitespace-style
  '(face
    trailing
    lines-tail
    space-before-tab
    space-after-tab
    indentation::space
    tab-mark))
(global-whitespace-mode t)
(setq defaulat-tab-width 4)
(setq-default indent-tabs-mode nil)

(global-hl-line-mode)

;; robe settings
(add-hook 'ruby-mode-hook 'robe-mode)
(autoload 'robe-mode
  "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)
(add-hook 'robe-mode-hook 'ac-robe-setup)

;; dabbrev mode
(ac-config-default)

;; inf-ruby uses pry
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")

;; (require 'flycheck)
;; (add-hook 'ruby-mode-hook
;;  '(lambda () (setq flycheck-checker 'ruby-rubocop)
;;              (flycheck-mode 1)))

(require 'web-mode)
(add-to-list 'auto-mode-alist
             '("\\.erb$" . web-mode))
(defun web-mode-hook () (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook 'web-mode-hook)

(require 'rbenv)
(global-rbenv-mode)

(require 'slime-autoloads)
(setq inferior-lisp-program "~/bin/linuxx86/ccl/lx86cl64")
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'font-lock-mode)
(add-hook 'haskell-mode-hook 'imenu-add-menubar-index)
