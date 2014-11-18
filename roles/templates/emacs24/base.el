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
