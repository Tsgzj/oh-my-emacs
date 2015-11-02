;;; This file contains some temporary code snippets, it will be loaded after
;;; various oh-my-emacs modules. When you just want to test some code snippets
;;; and don't want to bother with the huge ome.*org files, you can put things
;;; here.

;; For example, oh-my-emacs disables menu-bar-mode by default. If you want it
;; back, just put following code here.
(menu-bar-mode t)

;;; You email address
(setq user-mail-address "swx@tsgzj.me")
(setq user-full-name "Wenxiang Sun")

;;; Calendar settings
;; you can use M-x sunrise-sunset to get the sun time
(setq calendar-latitude 42.3)
(setq calendar-longitude -71.1)
(setq calendar-location-name "Boston, US")

;; defulat frame size
;; to avoid buffer go over the screen
(setq default-frame-alist
'((top . 0)(left . 50)(width . 120)(height . 40)))

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

(add-hook 'text-mode-hook 'turn-off-evil-mode)
;;(add-hook 'prog-mode-hook 'turn-on-evil-mode)
;;(add-hook 'comint-mode-hook 'turn-off-evil-mode)
;;(add-hook 'conf-mode-hook 'turn-on-evil-mode)
;;(add-hook 'Info-mode-hook 'turn-off-evil-mode)
(add-hook 'LaTeX-mode-hook 'turn-off-evil-mode)
(add-hook 'org-mode-hook 'turn-off-evil-mode)
(add-hook 'eshell-mode-hook 'turn-off-evil-mode)

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
 '(haskell-notify-p t)
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(org-agenda-files (quote ("~/gtd.org")))
 '(racket-mode-pretty-lambda t)
 '(racket-program "/Applications/Racket v6.2.1//bin/racket")
 '(raco-program "/Applications/Racket v6.2.1/bin/raco")
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


;; Setting English Font
(set-face-attribute 'default nil :font "Essential PragmataPro 14")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Hiragino Mincho ProN W3")))

;;(dolist (charset '(kana))
;;  (set-fontset-font (frame-parameter nil 'font)
;;                    charset (font-spec :family "Songti SC")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face :height 1.1 :family "Essential PragmetaPro"))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face :height 1.1 :family "Essential PragmetaPro"))))
 '(font-latex-slide-title-face ((t (:inherit (variable-pitch font-lock-type-face) :weight bold :height 1.2 :family "Essential PragmetaPro"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#969896"))))
 '(font-lock-comment-face ((t (:foreground "#969896" :slant normal)))))

;;(setq default-frame-alist
;;      '((top . 0)(left . 50)(width . 120)(height . 45)))

(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-solarized-light)
;;(color-theme-sanityinc-solarized-light)
;;(load-theme 'solarized-light)
;;(color-theme-solarized-light)
(add-to-list 'custom-theme-load-path "~/.emacs.d/cyberpunk-theme.el")
;;(load-theme 'cyberpunk t)
;; ;; <Color theme initialization code>
;; (setq current-theme '(color-theme-sanityinc-solarized-light))




;; (defun synchronize-theme
;;     (setq hour
;;         (string-to-number
;;             (substring current-time-string 11 13)))
;;     (if (member hour (number-sequence 6 17))
;;         (setq now '(color-theme-sanityinc-solarized-light))
;;         (setq now '(color-theme-sanityinc-tomorrow-night)))
;;     (if (eq now current-theme)
;;         nil
;;       (setq current-theme now))
;;     (eval now)) ;; end of (defun ...

;; (run-with-timer 0 3600 synchronize-theme)

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
            (push '("lambda" . ?λ) prettify-symbols-alist)))

(add-hook 'common-lisp-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)))

(add-hook 'ruby-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)))
(add-hook 'racket-mode-hook
          (lambda ()
            (push '("lambda"  . ?λ) prettify-symbols-alist)))
            ;;(push '(">="  . ?≥ ) prettify-symbols-alist)
            ;;(push '("<="  . ?≤ ) prettify-symbols-alist)
            ;;(push '("nil" . ?∅ ) prettify-symbols-alist)
            ;;(push '("and" . ?∧ ) prettify-symbols-alist)
            ;;(push '("or"  . ?∨ ) prettify-symbols-alist)
            ;;(push '("not" . ?¬  ) prettify-symbols-alist)))

(global-prettify-symbols-mode t)
;;(prettify-symbols-mode t)

;;fill-column-indicator
(load-file "~/.emacs.d/fill-column-indicator.el")
(require 'fill-column-indicator)
(setq fci-rule-column 72)
(add-hook 'ruby-mode-hook 'fci-mode)
(add-hook 'common-lisp-mode-hook 'fci-mode)
(add-hook 'scheme-mode-hook 'fci-mode)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'racket-mode-hook 'fci-mode)


(global-auto-complete-mode -1)

;;(prettify-symbols-mode t)


(global-set-key (kbd "C-c C-d") 'dash-at-point)

(setq scheme-program-name "/usr/local/bin/scheme")
(setq geiser-guile-binary "/usr/local/bin/guile")
(setq geiser-racket-binary "/usr/local/bin/racket")
(setq geiser-default-implementation 'racket)


(require 'window-numbering)
(window-numbering-mode 1)


;; to install racket-mode
(require 'package)
(add-to-list 'package-archives
             '("melpa". "heep://mepla.milkbox.net/packages/") t)

;; org-gtd
(require 'org)
(require 'remember)


;; I want files with the extension ".org" to open in org-mode.
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; I keep almost everything in one big org file.
(defvar org-gtd-file "~/Dropbox/GTD/gtd.org")

;; I open my gtd file when I hit C-c g
(defun gtd ()
  "Open the GTD file."
  (interactive)
  (find-file org-gtd-file))

;; Some basic keybindings.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cr" 'org-remember)
(global-set-key "\C-cg" 'gtd)

;; This seems like a good basic set of keywords to start out with:
(setq org-todo-keywords '((type "TODO" "NEXT" "WAITING" "DONE")))

;; Some projects need their own org files, but I still want them to
;; show up in my agenda.
(defvar org-gtd-other-files)

(setf org-gtd-other-files (list "~/Dropbox/GTD/eon.org"))

(setf org-agenda-files (cons org-gtd-file org-gtd-other-files))

;; When I'm using org to track issues in a project, I use these
;; keywords on a file-local basis:

;; #+SEQ_TODO: TODO | DONE
;; #+SEQ_TODO: REPORT BUG KNOWNCAUSE | FIXED
;; #+SEQ_TODO: | CANCELLED

;; The lisp version is:

;; (setq org-todo-keywords '((sequence "TODO" | "DONE")
;;   			  (sequence "REPORT" "BUG" "KNOWNCAUSE" | "FIXED")
;; 			  (sequence | "CANCELLED")))

;; Easy basic searches. Get a quick view of nextactions, etc

(setq org-agenda-custom-commands
      '(("w" todo "WAITING" nil)
	("n" todo "NEXT" nil)
	("d" "Agenda + Next Actions" ((agenda) (todo "NEXT")))))

;; I use org's tag feature to implement contexts.

(setq org-tag-alist '(("SCHOOL" . ?s)
		      ("COMPUTER" . ?c)
		      ("MAIL" . ?m)
		      ("HOME" . ?h)
		      ("PLACE" . ?f)
		      ("READING" . ?r)
              ("WRITING" . ?w)
              ("LOWENERGY" . ?l)
              ("PHONE" . ?p)))

;; I like to color-code task types.

(setf org-todo-keyword-faces '(("NEXT" . (:foreground "yellow" :background "red" :bold t :weight bold))
			       ("TODO" . (:foreground "cyan" :background "steelblue" :bold t :weight bold))
			       ("WAITING" . (:foreground "yellow" :background "magenta2" :bold t :weight bold))
			       ("DONE" . (:foreground "gray50" :background "gray30" :bold t
			       :weight bold))))

;; I put the archive in a separate file, because the gtd file will
;; probably already get pretty big just with current tasks.

(setq org-archive-location "%s_archive::")

;; Remember support. This creates several files:
;;
;;   ~/todo.org      Where remembered TODO's are stored.
;;   ~/journal.org   Timestamped journal entries.
;;   ~/remember.org  All other notes

;; and a keybinding of "C-c r" for making quick notes from any buffer.

;; These bits of Remembered information must eventually be reviewed
;; and filed somewhere (perhaps in gtd.org, or in a project-specific
;; org file.) The out-of-sight, out-of-mind rule applies here---if I
;; don't review these auxiliary org-files, I'll probably forget what's
;; in them.

;;(require 'remember)
;;(setq org-reverse-note-order t)  ;; note at beginning of file by default.
;;(setq org-default-notes-file "~/remember.org")
;;(setq remember-annotation-functions '(org-remember-annotation))
;;(setq remember-handler-functions '(org-remember-handler))
;;(add-hook 'remember-mode-hook 'org-remember-apply-template)
;;
;;(setq org-remember-templates
;;      '((?t "* TODO %?\n  %i\n  %a" "~/todo.org")
;;        (?j "* %U %?\n\n  %i\n  %a" "~/journal.org")
;;        (?i "* %^{Title}\n  %i\n  %a" "~/remember.org" "New Ideas")))
;;
;;(global-set-key "\C-cr" 'org-remember)
;;(global-set-key [(f12)] 'org-remember)

;; My preferences. These are less related to GTD, and more to my
;; particular setup. They are included here for completeness, and so
;; that new org users can see a complete example org-gtd
;; configuration.

(setq org-return-follows-link t)
(setq org-hide-leading-stars t)
;;(setf org-tags-column -65)
(setf org-special-ctrl-a/e t)

(setq org-log-done t)
(setq org-deadline-warning-days 14)
(setq org-fontify-emphasized-text t)
(setq org-fontify-done-headline t)
(setq org-agenda-include-all-todo nil)
(setq org-directory "~/")
(setq org-export-html-style "<link rel=stylesheet href=\"../e/freeshell2.css\" type=\"text/css\">")
(setq org-export-with-section-numbers nil)
(setq org-export-with-toc nil)
(setq org-adapt-indentation nil)

;; widen category field a little
(setq org-agenda-prefix-format "  %-17:c%?-12t% s")

;; fix new keybinding that clobbers mine
(add-hook 'org-mode-hook (lambda ()
			   (local-set-key [(control tab)] 'other-window)))

(provide 'org-gtd)

(global-flycheck-mode t)
(add-to-list 'flycheck-checkers 'swift)
(setq flycheck-swift-sdk-path "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk")

(evil-mode 1)

(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-normal-state-map "\C-f" 'evil-forward-char)
(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
(define-key evil-normal-state-map "\C-b" 'evil-backward-char)
(define-key evil-insert-state-map "\C-b" 'evil-backward-char)
(define-key evil-visual-state-map "\C-b" 'evil-backward-char)
(define-key evil-normal-state-map "\C-d" 'evil-delete-char)
(define-key evil-insert-state-map "\C-d" 'evil-delete-char)
(define-key evil-visual-state-map "\C-d" 'evil-delete-char)
(define-key evil-normal-state-map "\C-n" 'evil-next-line)
(define-key evil-insert-state-map "\C-n" 'evil-next-line)
(define-key evil-visual-state-map "\C-n" 'evil-next-line)
(define-key evil-normal-state-map "\C-p" 'evil-previous-line)
(define-key evil-insert-state-map "\C-p" 'evil-previous-line)
(define-key evil-visual-state-map "\C-p" 'evil-previous-line)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-visual-state-map "\C-w" 'evil-delete)
(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-visual-state-map "\C-k" 'kill-line)
(define-key evil-normal-state-map "Q" 'call-last-kbd-macro)
(define-key evil-visual-state-map "Q" 'call-last-kbd-macro)
(define-key evil-normal-state-map (kbd "TAB") 'evil-undefine)
(define-key evil-normal-state-map "ZZ" 'evil-save-and-close)

(defun evil-undefine ()
 (interactive)
 (let (evil-mode-map-alist)
   (call-interactively (key-binding (this-command-keys)))))

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; Java Eclim
(require 'eclim)

(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;; Robe-company-mode
(require 'rvm)
(rvm-use-default)
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))
(eval-after-load 'company
  '(push 'company-robe company-backends))
(require 'robe)
(require 'rcodetools)
(add-hook 'ruby-mode-hook
          'robe-mode
          (define-key ruby-mode-map (kbd "C-c C-c") 'xmp))

;; rust-mode
(add-to-list 'load-path "~/.emacs.d/custom/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; flycheck-rust
(load-file "~/.emacs.d/custom/flycheck-rust/flycheck-rust.el")
(add-hook 'flycheck-mode-hook 'flycheck-rust-setup)

;; racer
(setq racer-rust-src-path "/usr/local/src/rust/src/")
(setq racer-cmd "/usr/local/src/racer/target/release/racer")
(add-to-list 'load-path "/usr/local/src/racer/editors/emacs")
(eval-after-load "rust-mode" '(require 'racer))

;; Make company mode and yasnippet work together
(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
	(backward-char 1)
	(if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
	    (null (do-yas-expand)))
	(if (check-expansion)
	    (company-complete-common)
	  (indent-for-tab-command)))))

(defun bind-tab-properly ()
  "Binds tab to tab-indent-or-complete, overwritting yas and company bindings"
  (interactive)
  ;;overwrite yas and company tab mappings
  (define-key yas-minor-mode-map (kbd "<tab>") 'tab-indent-or-complete)
  (define-key yas-minor-mode-map (kbd "TAB") 'tab-indent-or-complete)
  (define-key company-active-map [tab] 'tab-indent-or-complete)
  (define-key company-active-map (kbd "TAB") 'tab-indent-or-complete))

(add-hook 'company-mode-hook 'bind-tab-properly)
(add-hook 'java-mode-hook 'eclim-mode)

;; indent-guide
(require 'indent-guide)
(indent-guide-global-mode)


;; helm-do-ag
(global-unset-key (kbd "C-c c g"))
(global-set-key (kbd "C-c c g") 'helm-do-ag)


;; esc quits
;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; neo-tree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
 (defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (ffip-project-root))
          (file-name (buffer-file-name)))
      (if project-dir
          (progn
            (neotree-dir project-dir)
            (neotree-find file-name))
        (message "Could not find git project root."))))

  (define-key evil-normal-state-map (kbd "C-c C-p") 'neotree-project-dir)

 (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(menu-bar-mode 0)

(setq browse-url-browser-function nil
      browse-url-generic-program nil)

(toggle-frame-fullscreen)

(server-start)
