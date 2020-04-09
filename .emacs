(setq gc-cons-threshold 80000000
      emacs-directory "~/.emacs.d/")

(autoload 'set-gui (concat emacs-directory "set-gui.el"))
(set-gui)
(autoload 'modify-keybinds (concat emacs-directory "modkeys.el"))
(modify-keybinds)

(add-to-list 'load-path "~/.emacs.d")
;; (load-theme 'cobalt t)
;; (load-theme 'dark-font-lock t)
;; (load-theme 'espresso t)
;; (load-theme 'colorsarenice-dark t)
(load-theme 'cobalt t)

(setq initial-frame-alist '((width . 120) (height . 57)))

(find-file "~/AI/readings.org")
(find-file "~/.emacs")
(pop-to-buffer-same-window ".emacs")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ace-jump-mode
  :bind ("C-." . ace-jump-mode))

(use-package helm
  :bind ("<f1>" . helm-M-x))

(use-package iedit)

(use-package async)

(use-package expand-region
  :bind
  ("C-=" . 'er/expand-region))


(use-package paredit)
(use-package magit)

(use-package evil
  :config
  (evil-mode -1)
  (define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)
  (defun evil-mode-toggle ()
    (interactive)
    (cond
     ((eq evil-mode t) (evil-mode -1))
     ((eq evil-mode nil) (evil-mode 1))))
  :bind (("<f11>" . evil-mode-toggle)
         ("<f12>" . evil-mode-toggle)))

(use-package evil-surround
  :config (global-evil-surround-mode 1))

;; (use-package smart-mode-line)
;; (use-package smart-mode-line-powerline-theme
;;   :after powerline
;;   :after smart-mode-line
;;   :config
;;   (sml/setup)
;;   (sml/apply-theme 'powerline))

;; (use-package powerline
;;   :config
;;   (powerline-default-theme))

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'dark)
  (sml/setup))
