;; andrew lott .emacs file
;; last edited:

;;Paths
(add-to-list 'load-path "~/elisp")
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/elisp/emacs-color-theme-solarized")

;;fixing missing ruby-mode
(add-to-list 'load-path "~/.emacs.d/ruby-mode/")
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode)) 

(add-to-list 'load-path "~/.emacs.d/matlab-emacs/")
(load-library "matlab-load")

;;Coffeescript
(add-to-list 'load-path "~/.emacs.d/coffee-mode")
(require 'coffee-mode)

;;Markdown mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;JavaScript mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)

;;elisp .el files
(require 'dropdown-list)
(require 'thesaurus)
(setq thesaurus-bhl-api-key "4bb8b6415051bd863f9dae51c52a0975")
(define-key global-map (kbd "C-x t") 'thesaurus-choose-synonym-and-replace)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(require 'linum)
(global-linum-mode 1)
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-billw)

(require 'color-theme-solarized)
;;(color-theme-solarized-light)

;;Set day/night themes
(setq calendar-location-name "New York, NY")
(setq calendar-latitude 40.71)
(setq calendar-longitude -74.01)
(require 'theme-changer)
;;(change-theme 'color-theme-solarized-light 'color-theme-solarized-dark)

;;Misc.
(setq inhibit-startup-message t)

;; from aj:

;; === EDITING ====
; Colorizes code
;(global-font-lock-mode t)
; Shortcuts for colorizing code
;(global-set-key "\C-c\C-f" 'font-lock-fontify-buffer)
;(setq font-lock-maximum-decoration t)
;(custom-set-faces)

;(setq c-indent-level 2) ; set indent size
;(setq c-basic-offset 2)
;(setq tab-width 2)
;(setq case-fold-search nil) ; gives case-insensitivity in searching
(setq line-number-mode t)
(setq column-number-mode t)


;; misc
(setq display-time-day-and-date t
            display-time-24-hr-format t)
(display-time) 

;; copy-paste should work with other X clients
;;(setq x-select-enable-clipboard t)
;;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; ask y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;used M-WASD NEED BETTER KEYS FOR THIS, JKLI?
;;(global-set-key "\M-w" 'previous-line)
;;(global-set-key "\M-a" 'backward-char)
;;(global-set-key "\M-s" 'next-line)
;;(global-set-key "\M-d" 'forward-char)


;; == Mouse Wheel Scrolling ==
; Scroll up five lines without modifiers
(defun up-slightly () (interactive) (scroll-up 5))
(defun down-slightly () (interactive) (scroll-down 5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)

;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
;;(global-set-key [delete] 'delete-char)
;;(global-set-key [kp-delete] 'delete-char)

; Scroll up one line with SHIFT held
(defun up-one ()(interactive) (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one)

; Scroll up one page with CTRL held
(defun up-a-lot () (interactive) (scroll-up))
(defun down-a-lot () (interactive) (scroll-down))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot) 


;;Add function that lets you search for string and replace each with default or new string
