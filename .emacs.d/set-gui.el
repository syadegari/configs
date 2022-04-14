(defun set-gui () (progn
		    ;; ffap bindings
		    (ffap-bindings)
		    ;; Some general settings
		    (setq-default line-spacing 3)
		    (setq inhibit-startup-screen t)
		    (setq column-number-mode t)
                    ;; no backups 
                    (setq make-backup-files nil)
		    (which-function-mode 1)
		    (tool-bar-mode -1)
		    (menu-bar-mode -1)
		    (scroll-bar-mode -1)
		    (set-window-fringes nil 0 0)
		    (show-paren-mode 1)
		    (winner-mode 1)
                    (electric-pair-mode t)
		    ;; no tabs
		    (setq-default indent-tabs-mode nil)
		    ;; FONT
                    (if (string-equal system-type "darwin")
                        (set-frame-font "Monaco-12"))
		    (setq x-select-enable-clipboard t)
                    (fset 'yes-or-no-p 'y-or-n-p)))
