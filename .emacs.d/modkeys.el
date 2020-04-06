;; modified keys
(defun nw-kbd (binding command)
  "If the command has keybidings that cannot be when in terminal use this"
  (when (eq window-system nil)
    (global-set-key (kbd binding) command)))

(defun modify-keybinds () (progn
			    (global-set-key (kbd "<f9>") 'kill-this-buffer)  ; kill buffer
			    (global-set-key (kbd "<f5>") 'other-window)      ; other window!
			    (global-set-key (kbd "<f6>") (kbd "C-- C-x o") ) ; other window backward
			    (global-set-key (kbd "<f2>") 'helm-buffers-list) ; helm buffer list 
			    (global-set-key (kbd "C-x C-b") 'ibuffer)        ; ibuffer  
			    (global-set-key (kbd "<f1>") 'helm-M-x )         ; helm
			    (global-set-key (kbd "<f4>") 'shell)             ; opens a shell
			    (global-set-key (kbd "<f7>") 'hs-toggle-hiding)
			    (global-set-key (kbd "<f10>") 'delete-window)
			    ;; window resize commands 
			    (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
			    (global-set-key (kbd "S-C-<right>")'enlarge-window-horizontally)
			    (global-set-key (kbd "S-C-<down>") 'shrink-window)
			    (global-set-key (kbd "S-C-<up>")   'enlarge-window)
			    (global-set-key (kbd "C-x <left>") 'prev-buffer)
			    (global-set-key (kbd "C-x C-b") 'ibuffer)))
