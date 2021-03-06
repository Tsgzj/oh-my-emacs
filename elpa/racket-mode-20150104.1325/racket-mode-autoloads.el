;;; racket-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "racket-edit" "racket-edit.el" (21681 39522
;;;;;;  0 0))
;;; Generated autoloads from racket-edit.el

(autoload 'racket-describe-mode "racket-edit" "\
Major mode for describing Racket functions.
\\{racket-describe-mode-map}

\(fn)" t nil)

(add-to-list 'hs-special-modes-alist '(racket-mode "(" ")" ";" nil nil))

;;;***

;;;### (autoloads nil "racket-mode" "racket-mode.el" (21681 39521
;;;;;;  0 0))
;;; Generated autoloads from racket-mode.el

(autoload 'racket-mode "racket-mode" "\
Major mode for editing Racket.
\\{racket-mode-map}

\(fn)" t nil)

(setq auto-mode-alist (append '(("\\.rkt\\'" . racket-mode) ("\\.rktd\\'" . racket-mode)) auto-mode-alist))

;;;***

;;;### (autoloads nil "racket-repl" "racket-repl.el" (21681 39522
;;;;;;  0 0))
;;; Generated autoloads from racket-repl.el

(autoload 'racket-repl "racket-repl" "\
Run a Racket REPL in a comint buffer.

When starting Racket, `racket--repl-wait-for-prompt'.

The selected window remains the same.

Does not necessarily cause the REPL buffer to be shown in a window.

Runs `comint-mode-hook' and `racket-repl-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("racket-collection.el" "racket-common.el"
;;;;;;  "racket-complete.el" "racket-emacs-compat.el" "racket-eval.el"
;;;;;;  "racket-font-lock.el" "racket-indent.el" "racket-keywords-and-builtins.el"
;;;;;;  "racket-mode-pkg.el" "racket-tests.el" "racket-util.el")
;;;;;;  (21681 39522 389121 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; racket-mode-autoloads.el ends here
