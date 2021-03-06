(defun ome-js3-mode-setup ()
  (add-hook 'js3-mode-hook
            (lambda ()
              (setq js3-auto-indent-p t
                    js3-curly-indent-offset 0
                    js3-enter-indents-newline t
                    js3-expr-indent-offset 2
                    js3-indent-on-enter-key t
                    js3-lazy-commas t
                    js3-lazy-dots t
                    js3-lazy-operators t
                    js3-paren-indent-offset 2
                    js3-square-indent-offset 4)
              (linum-mode 1)))

            ;; https://github.com/Fuco1/smartparens/issues/239
            ;; (defadvice js3-enter-key (after fix-sp-state activate)
            ;;   (setq sp-last-operation 'sp-self-insert))

            ;; (sp-local-pair 'js3-mode
            ;;                "{"
            ;;                nil
            ;;                :post-handlers
            ;;                '((ome-create-newline-and-enter-sexp js3-enter-key))))
  (add-to-list 'ac-modes 'js3-mode))

(ome-install 'js3-mode)

(defun ome-tern-setup ()
  (when (el-get-package-installed-p 'js2-mode)
    (add-hook 'js2-mode-hook (lambda () (tern-mode t))))
  (when (el-get-package-installed-p 'js3-mode)
    (add-hook 'js3-mode-hook (lambda () (tern-mode t))))
  (setq tern-command (cons (executable-find "tern") '()))
  (eval-after-load 'tern
    '(progn
       (require 'tern-auto-complete)
       (tern-ac-setup))))

(ome-install 'tern)

(defun ome-nodejs-repl-setup ())

(ome-install 'nodejs-repl)
