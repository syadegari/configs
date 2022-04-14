;; modified keys
(defun nw-kbd (binding command)
  "If the command has keybidings that cannot be when in terminal use this"
  (when (eq window-system nil)
    (global-set-key (kbd binding) command)))

;; ---------------------------------------------------------------------------------------------
;; send commands to shell from everywhere, bind it to C-F4
;; from https://stackoverflow.com/questions/6286579/emacs-shell-mode-how-to-send-region-to-defun
;;
;; ---------------------------------------------------------------------------------------------
(defun sh-send-line-or-region (&optional step)
  (interactive ())
  (let ((proc (get-process "shell"))
        pbuf min max command)
    (unless proc
      (let ((currbuff (current-buffer)))
        (shell)
        (switch-to-buffer currbuff)
        (setq proc (get-process "shell"))
        ))
    (setq pbuff (process-buffer proc))
    (if (use-region-p)
        (setq min (region-beginning)
              max (region-end))
      (setq min (point-at-bol)
            max (point-at-eol)))
    (setq command (concat (buffer-substring min max) "\n"))
    (with-current-buffer pbuff
      (goto-char (process-mark proc))
      (insert command)
      (move-marker (process-mark proc) (point))
      ) ;;pop-to-buffer does not work with save-current-buffer -- bug?
    (process-send-string  proc command)
    (display-buffer (process-buffer proc) t)
    (when step
      (goto-char max)
      (next-line))
    ))

(defun sh-send-line-or-region-and-step ()
  (interactive)
  (sh-send-line-or-region t))
(defun sh-switch-to-process-buffer ()
  (interactive)
  (pop-to-buffer (process-buffer (get-process "shell")) t))
;; ---------------------------------------------------------------------------------------------
;;
;; ---------------------------------------------------------------------------------------------

(defun modify-keybinds () (progn
			    (global-set-key (kbd "<f9>") 'kill-this-buffer)  ; kill buffer
			    (global-set-key (kbd "<f5>") 'other-window)      ; other window!
			    (global-set-key (kbd "<f6>") (kbd "C-- C-x o") ) ; other window backward
			    (global-set-key (kbd "<f2>") 'helm-buffers-list)   ; ibuffer
;			    (global-set-key (kbd "<f2>") (kbd "C-x C-b") )   ; ibuffer
			    (global-set-key (kbd "<f1>") 'helm-M-x )   ; ibuffer
			    (global-set-key (kbd "<f4>") 'shell)             ; opens a shell
                            (global-set-key (kbd "C-<f4>") 'sh-send-line-or-region-and-step)
			    (global-set-key (kbd "<f7>") 'hs-toggle-hiding)
			    (global-set-key (kbd "<f10>") 'delete-window)
			    ;; window resize commands 
			    (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
			    (global-set-key (kbd "S-C-<right>")'enlarge-window-horizontally)
			    (global-set-key (kbd "S-C-<down>") 'shrink-window)
			    (global-set-key (kbd "S-C-<up>")   'enlarge-window)
			    (global-set-key (kbd "C-x <left>") 'prev-buffer)
			    (global-set-key (kbd "C-x C-b") 'ibuffer)))

