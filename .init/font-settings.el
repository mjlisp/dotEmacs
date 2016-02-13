;; Font settings.

;; Setting English Font
;; (set-face-attribute
;;  'default nil :family "Inconsolata" :height )
(add-to-list 'default-frame-alist
             (if (string-equal system-type "windows-nt")
		 '(font . "Inconsolata-18")
	       '(font . "Inconsolata-14")))

;; (set-fontset-font t 'unicode-bmp "STIX" nil 'append)
;; (set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)

;; Chinese Font
;  cjk-misc gb18030 chinese-gbk chinese-gb2312
(dolist (charset '(han cjk-misc chinese-gbk))
  (set-fontset-font t ;; (frame-parameter nil 'font)
  		    charset
		    (if (string-equal system-type "windows-nt")
		        (font-spec :family "冬青黑体简体中文 W3")
		      (font-spec :name "Hiragino Sans GB"))))
			;; 微软雅黑
			;; 冬青黑体简体中文 W3
			;; Hiragino Sans GB W3
			;; 思源黑体 CN Regular
			;; Source Han Sans

(when (string-equal system-type "windows-nt")
  (set-fontset-font t 'unicode "Segoe UI Symbol" nil 'append)
  (set-fontset-font t '(#x1F600 . #x1F64F) "Segoe UI Symbol") ; Emoji
  (set-fontset-font t '(#xE000 . #xF8FF) "STIX") ; Private Use Areas
  )

(set-fontset-font t ?– "Symbola")
(set-fontset-font t ?′ "Symbola")
(set-fontset-font t ?″ "Symbola")

;; (set-fontset-font "fontset-default" nil 
;;                   (font-spec :name "Symbola"))

(defface strike-through
  '((t :strike-through t))
    "Basic strike through face."
    :group 'basic-faces)
