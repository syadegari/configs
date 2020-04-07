;;; raise gc limit to 20 MB
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(setq initial-frame-alist '((width . 120) (height . 68)))
(setq gc-cons-threshold 80000000
      emacs-directory "~/.emacs.d/" )


(autoload 'modify-keybinds (concat emacs-directory "modkeys.el"))
(autoload 'set-gui (concat emacs-directory "set-gui.el"))
(modify-keybinds)
(set-gui)

(setq make-backup-files nil)

(mapcar (lambda (x-path)
	  (add-to-list 'load-path  (concat emacs-directory x-path)))
	'(""
          "async"
          "helm"
;          "flycheck"
          "Sepia-0.992"
          "slime"
          "haskell-mode-master"
          "expand-region"))
;; Melpa
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; ;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cobalt t)
;; iedit mode
(add-to-list 'load-path "~/.emacs.d/elpa/iedit-20161030.1920/")
(require 'iedit)
;;                     Experimentals ;; Experimentals ;;  Experimentals
;;                    BEGIN
;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
;; expand region 
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
;; ace-jump
(autoload  'ace-jump-mode  "ace-jump-mode"  "Emacs quick move minor mode"
  t)
;; (require 'ace-jump-mode)
(global-set-key (kbd "C-c C-SPC") 'ace-jump-mode)
;;                    END
;;                     Experimentals ;; Experimentals ;;  Experimentals 

;; paredit
(require 'paredit)
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)
(put 'narrow-to-region 'disabled nil)

;; tab width for python mode
(setq python-path "/Users/syad/anaconda3/envs/p1-navigation/bin/python")
(setq python-shell-interpreter python-path)
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (setq python-indent 4)))
(package-initialize)
(setq highlight-indentation-mode nil)

;; slime
;;; shell$ sbcl
;;;     * (mapc 'require '(sb-bsd-sockets sb-posix sb-introspect sb-cltl2 asdf))
;;;     * (save-lisp-and-die "sbcl.core-for-slime")
(require 'slime-autoloads)
;; Set your lisp system and, optionally, some contribs
;; MAKE THIS A CONDITIONAL
;; Something like if it finds an sbcl then execute the whole section!
(setq inferior-lisp-program "usr/local/bin/sbcl")
(setq slime-lisp-implementations
      '((sbcl ("sbcl" "--core" "/Users/syad/.emacs.d/sbcl.core-for-slime"))))
(setq slime-contribs '(slime-fancy))
(put 'upcase-region 'disabled nil)
;;;;            P.E.R.L
(defalias 'perl-mode 'cperl-mode)
;;;; Sepia config
(setq sepia-perl5lib (list (expand-file-name "~/.emacs.d/Sepia-0.992/lib")))
;; (defalias 'perl-mode 'sepia-mode)
(require 'sepia)
;;;; ANSI colors
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(put 'downcase-region 'disabled nil)

;;;; Julia
(require 'julia-mode)
(load "julia-repl")
(setq julia-basic-repl-path "/Applications/Julia-1.3.app/Contents/Resources/julia/bin/julia")

;;; lower the gc limit to default value
(setq gc-cons-threshold 800000)

;;;; T.E.M.P.O.R.A.R.Y.
(electric-pair-mode t)
;; (company-mode t)
(setq mode-require-final-newline 'nil)   ;; needed to prevent insert a new line
;; at the end of snippet
;;;; T.E.M.P.O.R.A.R.Y.
(add-to-list 'auto-mode-alist '("\\.fi\\'" . f90-mode))
(defvar f90-mod-bf (make-face 'f90-mod-bf))                                                     
(set-face-attribute 'f90-mod-bf nil                                                             
                    :foreground "DodgerBlue")                                                   
(defvar f90-mod-perc (make-face 'f90-mod-perc))                                                 
(set-face-attribute 'f90-mod-perc nil                                                           
                    :foreground "orange")                                                       
(defvar f90-mod-af (make-face 'f90-mod-af))                                                     
(set-face-attribute 'f90-mod-af nil                                                             
                    :foreground "yellow")                                                       
(font-lock-add-keywords 'f90-mode  '(("\\([A-Za-z0-9_]+\\)\\(%\\)\\([A-Za-z0-9_]+\\)"           
                                      (1 f90-mod-bf)                                            
                                      (2 f90-mod-perc)                                          
                                      (3 f90-mod-af))))

;;;; T.E.M.P.O.R.A.R.Y.

;; Coq setup
(load "~/.emacs.d/lisp/PG/generic/proof-site.el")
(setq coq-prog-name "/usr/local/bin/coqtop")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c0dd5017b9f1928f1f337110c2da10a20f76da0a5b14bb1fec0f243c4eb224d4" "c69ab905fd613799ec918fff79c4d370218014cb2a09d617484ca2abdc7aaf35" "11db1e0f33a229bede68619034ee3822139c04ee5749d545a1e07cf2bf5d9a77" default)))
 '(package-selected-packages
   (quote
    (lsp-mode magit-todos evil smart-mode-line jupyter helm-projectile company-coq anaconda-mode jedi ein highlight auto-highlight-symbol magit edit-server company-jedi use-package auctex cdlatex cmake-ide helm-company websocket smart-mode-line-powerline-theme skewer-mode request-deferred iedit helm haskell-mode expand-region auto-complete ace-jump-mode))))

;; cdlatex
(require 'cdlatex)

(require 'highlight)
(require 'auto-highlight-symbol)

(sml/setup)
(setq sml/theme 'dark)
(setq sml/theme 'light)
(setq sml/theme 'respectful)
