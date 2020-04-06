(defun set-gui () (progn
		    ;; ffap bindings
		    (ffap-bindings)
		    ;; Some general settings
		    (setq-default line-spacing 3)
		    (setq inhibit-startup-screen t)
		    (setq column-number-mode t)
		    (which-function-mode 1)
		    (tool-bar-mode -1)
		    (menu-bar-mode -1)
		    (scroll-bar-mode -1)
		    (set-window-fringes nil 0 0)
		    (show-paren-mode 1)
		    (winner-mode 1)
		    ;; no tabs
		    (setq-default indent-tabs-mode nil)
		    ;; FONT
                    ;;(set-frame-font "Monaco-11")
                    ;;(set-frame-font "Menlo-12")
                    ;;(set-frame-font "Courier-13")
                    ;;(set-frame-font "JetBrains Mono-13")
                    (if (string-equal system-type "darwin")
                        (set-frame-font "Source Code Pro-12"))
		    (setq x-select-enable-clipboard t)))