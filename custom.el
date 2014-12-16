;;; This file contains some temporary code snippets, it will be loaded after
;;; various oh-my-emacs modules. When you just want to test some code snippets
;;; and don't want to bother with the huge ome.*org files, you can put things
;;; here.

;; For example, oh-my-emacs disables menu-bar-mode by default. If you want it
;; back, just put following code here.
(menu-bar-mode t)

;;; You email address
(setq user-mail-address "swx@tsgzj.me")

;;; Calendar settings
;; you can use M-x sunrise-sunset to get the sun time
;;(setq calendar-latitude 39.9)
;;(setq calendar-longitude 116.3)
;;(setq calendar-location-name "Beijing, China")
;;(set-language-environment "japanese")

;;; Time related settings
;; show time in 24hours format
(setq display-time-24hr-format t)
;; show time and date
(setq display-time-and-date t)
;; time change interval
(setq display-time-interval 10)
;; show time
(display-time-mode t)

;;; Some tiny tool functions
(defun replace-all-chinese-quote ()
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (replace-regexp  "”\\|“" "\"")
    (mark-whole-buffer)
    (replace-regexp "’\\|‘" "'")))

;; Comment function for GAS assembly language
(defun gas-comment-region (start end)
  "Comment region for AT&T syntax assembly language The default
comment-char for gas is ';', we need '#' instead"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (insert "# ")
      (next-line))
    (goto-char end)))

(defun gas-uncomment-region (start end)
  "Uncomment region for AT&T syntax assembly language the
inversion of gas-comment-region"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (if (equal (char-after) ?#)
          (delete-char 1))
      (next-line))
    (goto-char end)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(fci-rule-color "#073642")
 '(foreground-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Setting English Font
(set-face-attribute 'default nil :font "Inconsolata 14")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Hiragino Sans GB"
                                       :size 14)))
(setq default-frame-alist
      '((top . 0)(left . 50)(width . 160)(height . 45)))

;;(require 'color-theme-sanityinc-tomorrow)
;;(color-theme-sanityinc-tomorrow-night)
(require 'color-theme-sanityinc-solarized)
(color-theme-sanityinc-solarized-light)
;;(load-theme 'solarized-light)
;;(color-theme-solarized-light)

(exec-path-from-shell-initialize)

;;pretty symbol
;; (defconst prettify-symbols-alist
;;   '(("lambda"  . ?λ)
;;     (">="  . ?≥)
;;     ("<="  . ?≤)
;;     ("and" . ?∧)
;;     ("or"  . ?∨)
;;     ("not" . ?¬)
;;     ("nil" . ?∅)))
(defconst prettify-symbols-alist nil)

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)))

(add-hook 'scheme-mode-hook
          (lambda ()
            (push '("lambda" . ?λ) prettify-symbols-alist)
            (push '(">="  . ?≥ ) prettify-symbols-alist)
            (push '("<="  . ?≤ ) prettify-symbols-alist)
            (push '("and" . ?∧ ) prettify-symbols-alist)
            (push '("nil" . ?∅ ) prettify-symbols-alist)
            (push '("or"  . ?∨ ) prettify-symbols-alist)
            (push '("not" . ?¬  ) prettify-symbols-alist)))

(add-hook 'common-lisp-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)
            (push '(">="  . ?≥ ) prettify-symbols-alist)
            (push '("<="  . ?≤ ) prettify-symbols-alist)
            (push '("and" . ?∧ ) prettify-symbols-alist)
            (push '("or"  . ?∨ ) prettify-symbols-alist)
            (push '("nil" . ?∅ ) prettify-symbols-alist)
            (push '("not" . ?¬  ) prettify-symbols-alist)))

(add-hook 'ruby-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)
            (push '(">="  . ?≥ ) prettify-symbols-alist)
            (push '("<="  . ?≤ ) prettify-symbols-alist)
            (push '("nil" . ?∅ ) prettify-symbols-alist)
            (push '("and" . ?∧ ) prettify-symbols-alist)
            (push '("or"  . ?∨ ) prettify-symbols-alist)
            (push '("not" . ?¬  ) prettify-symbols-alist)))

(global-prettify-symbols-mode t)
;;(prettify-symbols-mode t)

;;fill-column-indicator
(load-file "~/.emacs.d/fill-column-indicator.el")
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(add-hook 'ruby-mode-hook 'fci-mode)
(add-hook 'common-lisp-mode-hook 'fci-mode)
(add-hook 'scheme-mode-hook 'fci-mode)
(add-hook 'c-mode-hook 'fci-mode)



;;(prettify-symbols-mode t)


(global-set-key (kbd "C-c C-d") 'dash-at-point)

(setq scheme-program-name "/usr/local/bin/scheme")
(setq geiser-guile-binary "/usr/local/bin/guile")
(setq geiser-racket-binary "/usr/local/bin/racket")
(setq geiser-default-implementation 'racket)


(require 'window-numbering)
(window-numbering-mode 1)
