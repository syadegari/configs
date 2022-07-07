(setq gc-cons-threshold 80000000
      emacs-directory "~/.emacs.d/")
(setq split-height-threshold 200)
(setq split-width-threshold 300)

(autoload 'set-gui (concat emacs-directory "set-gui.el"))
(set-gui)
(autoload 'modify-keybinds (concat emacs-directory "modkeys.el"))
(modify-keybinds)

(setq custom-theme-directory "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'spacemacs-dark t)

(setq initial-frame-alist '((width . 120) (height . 57)))

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

(use-package wgrep)

(use-package wdired)

(use-package async)

(use-package expand-region
  :bind
  ("C-=" . 'er/expand-region))

(use-package paredit)

(use-package magit
  :config
  (setq magit-diff-refine-hunk t)
  (set-face-attribute 'magit-branch-current nil :inverse-video t))

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

;; try smart-parens mode
(use-package smartparens)
(use-package yasnippet
  :config (yas-global-mode 1))

(use-package julia-mode)

(put 'narrow-to-region 'disabled nil)

(put 'upcase-region 'disabled nil)


(setq python-shell-interpreter "/Users/yadegari/Documents/code/eee_env/bin/python3")

;;;;

(use-package flycheck)
(use-package flycheck-mypy)

(add-hook 'python-mode-hook 'flycheck-mode) 
(add-hook 'python-mode-hook
          (lambda ()
            (setq flycheck-python-pylint-executable "~/Documents/code/_venv_/bin/python")
            (setq flycheck-pylintrc "~/.pylintrc")))
(flycheck-add-next-checker 'python-flake8 'python-pylint)


