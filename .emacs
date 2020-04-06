;;; raise gc limit to 20 MB
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq initial-frame-alist '((width . 102) (height . 120)))
(setq gc-cons-threshold 80000000
      emacs-directory "/Users/syad/.emacs.d/" )

(autoload 'modify-keybinds (concat emacs-directory "modkeys.el"))
(modify-keybinds)
(mapcar (lambda (x-path)
	  (add-to-list 'load-path  (concat emacs-directory x-path)))
	'(""
          "async"
          "helm"
          "flycheck"
          "Sepia-0.992"
          "slime"
          "haskell-mode-master"
          "expand-region"))
;; Melpa
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; ;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'adwaita t)
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
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
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
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(setq python-shell-interpreter "python3")
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (setq python-indent 4)))
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) 
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

;;;; Haskell
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "/conti/yadegaris/.emacs.d/haskell-mode-master/")
(require 'inf-haskell)
(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(setq haskell-process-path-ghci "/Applications/ghc-7.10.1.app/Contents/bin/ghci")

;;;; Julia
(require 'julia-mode)
(load "julia-repl")
(setq julia-basic-repl-path "~/opt/julia/bin/julia")

;;;; Yasnippet
(add-to-list 'load-path
              "/conti/yadegaris/.emacs.d/yasnippet/")
(require 'yasnippet)
(setq yas-snippet-dir "/conti/yadegaris/.emacs.d/yasnippet/snippets")

;;; lower the gc limit to default value
(setq gc-cons-threshold 800000)

;;;; T.E.M.P.O.R.A.R.Y.
(electric-pair-mode t)
(company-mode t)
(yas-global-mode t)
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
;(global-company-mode 1)
(setq company-idle-delay 0.1)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("14a327dfbf7007b338a29a2a85afd5f368fb5388e1fbb96b39f826f403e9c275" "c69ab905fd613799ec918fff79c4d370218014cb2a09d617484ca2abdc7aaf35" "11db1e0f33a229bede68619034ee3822139c04ee5749d545a1e07cf2bf5d9a77" "c0dd5017b9f1928f1f337110c2da10a20f76da0a5b14bb1fec0f243c4eb224d4" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "2f5b8b4d2f776fd59c9f9a1d6a45cdb75a883c10a9426f9a50a4fea03b1e4d89" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(magit-diff-arguments (quote ("--no-ext-diff" "--stat")))
 '(package-selected-packages
   (quote
    (pylint pyenv-mode company-coq iedit spacemacs-theme ## anaconda-mode smart-mode-line-powerline-theme magit jedi haskell-mode flycheck expand-region elpy ace-jump-mode)))
 '(rainbow-identifiers-cie-l*a*b*-lightness 70)
 '(rainbow-identifiers-cie-l*a*b*-saturation 20)
 '(sml/mode-width
   (if
       (eq powerline-default-separator
           (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   nil
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes))))
 ;;


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
                                                               ;;

;; Coq setup
(load "~/.emacs.d/lisp/PG/generic/proof-site.el")
(setq coq-prog-name "/Applications/CoqIDE_8.6.1.app/Contents/Resources/bin/coqtop")
