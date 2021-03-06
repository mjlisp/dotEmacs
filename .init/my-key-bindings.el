;; Some Key-bindings

;; 不用C-z
(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)

(defun my-revert ()
  (interactive)
  (when (buffer-file-name)
    (revert-buffer buffer-file-name t)))

(global-set-key (kbd "C-z r") 'my-revert)
(global-set-key (kbd "C-z C-r") 'my-revert)

(global-set-key (kbd "C-z c") 'erase-buffer)
(global-set-key (kbd "C-z C") 'erase-buffer)

;; 一个ESC是C-g 和一般的程序一样
(global-set-key (kbd "<escape>") 'keyboard-quit)

(global-set-key (kbd "C-<down-mouse-1>")
	        'mouse-set-secondary)
(global-set-key (kbd "C-<drag-mouse-1>")
		'mouse-set-secondary)

(if (string-equal system-type "windows-nt")
    (progn
      (global-set-key (kbd "C-<wheel-down>")
		      'text-scale-decrease)
      (global-set-key (kbd "C-<wheel-up>")
		      'text-scale-increase)))

(if (string-equal system-type "gnu/linux")
    (progn
      (global-set-key (kbd "C-<mouse-5>")
		      'text-scale-decrease)
      (global-set-key (kbd "C-<mouse-4>")
		      'text-scale-increase)))

;; 加一个Shift+空格作为设定标记
(global-set-key (kbd "S-SPC") 'set-mark-command)

;; 不用C-h了
;; (define-key global-map "\C-h" 'backward-delete-char)
(define-key key-translation-map (kbd "C-h") "")

;; M-s f 前景色
(global-set-key (kbd "M-s f") 'facemenu-set-foreground)
;; M-s M-f 前景色
(global-set-key (kbd "M-s M-f") 'facemenu-set-foreground)
;; M-s b 背景色
(global-set-key (kbd "M-s b") 'facemenu-set-background)
;; M-s M-b 背景色
(global-set-key (kbd "M-s M-b") 'facemenu-set-background)

(global-set-key (kbd "H-g") 'magit-status)

(global-set-key (kbd "H-b") 'switch-to-buffer)
(global-set-key (kbd "H-k") #'(lambda () (interactive) (kill-buffer nil)))

(global-set-key (kbd "H-1") 'delete-other-windows)
(global-set-key (kbd "H-0") 'delete-window)

(global-set-key (kbd "H-m")
		#'(lambda ()
		  (interactive)
		  (when (active-minibuffer-window)
		    (select-window
		     (active-minibuffer-window)))))

(global-set-key (kbd "H-s") 'shell)
(global-set-key (kbd "H-o") 'run-octave)
(global-set-key (kbd "H-q") 'calculator)

(if (string-equal system-type "windows-nt")
    (setq w32-pass-lwindow-to-system nil
	  w32-pass-rwindow-to-system nil
	  w32-pass-apps-to-system nil
	  w32-pass-alt-to-system nil
	  w32-lwindow-modifier 'super ; Left Windows key
	  w32-rwindow-modifier 'hyper ; Right Windows key
	  w32-apps-modifier 'hyper    ; Menu key
	  ))

;; 扩展缩写 M-'
;; (global-set-key (kbd "M-'") 'expand-abbrev)

;; (require 'misc)
(autoload 'copy-from-above-command "misc" nil t)
(global-set-key (kbd "s-y") 'copy-from-above-command)

;; (require 'smart-compile)
(autoload 'smart-compile "smart-compile" nil t)
(global-set-key (kbd "H-c") 'smart-compile)

(global-set-key (kbd "M-s-s")
		#'(lambda ()
		  (interactive)
		  (switch-to-buffer "*scratch*" nil
				    'force-same-window)))

; vi `.' command emulation
(autoload 'dot-mode "dot-mode" nil t) 
(global-set-key (kbd "C-.")
		#'(lambda () (interactive)
		  (dot-mode 1)
		  (message "Dot mode activated.")))

;; Switch to previous buffer.
(defun switch-to-previous-buffer ()
  "Switch to most recent buffer.
Repeated calls toggle back and forth between the most recent two buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "C-`") 'switch-to-previous-buffer)

(global-set-key (kbd "C-<kp-4>") 'switch-to-buffer)
(global-set-key (kbd "C-<kp-5>") 'shell)
(global-set-key (kbd "C-<kp-6>") 'list-buffers)
(global-set-key (kbd "C-<kp-7>") 'keyboard-quit)

(require 'iso-transl)
(iso-transl-define-keys
 '(("&A" . [?Α])
   ("&B" . [?Β])
   ("&G" . [?Γ])
   ("&D" . [?Δ])
   ("&E" . [?Ε])
   ("&F" . [?Ζ])
   ("&H" . [?Η])
   ("&TH" . [?Θ])
   ("&I" . [?Ι])
   ("&K" . [?Κ])
   ("&L" . [?Λ])
   ("&M" . [?Μ])
   ("&N" . [?Ν])
   ("&C" . [?Ξ])
   ("&O" . [?Ο])
   ("&P" . [?Π])
   ("&R" . [?Ρ])
   ("&S" . [?Σ])
   ("&TT" . [?Τ])
   ("&Y" . [?Υ])
   ("&F" . [?Φ])
   ("&X" . [?Χ])
   ("&Q" . [?Ψ])
   ("&W" . [?Ω])
   ("&a" . [?α])
   ("&b" . [?β])
   ("&g" . [?γ])
   ("&d" . [?δ])
   ("&e" . [?ε])
   ("&f" . [?ζ])
   ("&h" . [?η])
   ("&th" . [?θ])
   ("&i" . [?ι])
   ("&k" . [?κ])
   ("&l" . [?λ])
   ("&m" . [?μ])
   ("&n" . [?ν])
   ("&c" . [?ξ])
   ("&o" . [?ο])
   ("&p" . [?π])
   ("&r" . [?ρ])
   ("&s" . [?σ])
   ("&tt" . [?τ])
   ("&y" . [?υ])
   ("&f" . [?φ])
   ("&x" . [?χ])
   ("&q" . [?ψ])
   ("&w" . [?ω])))
