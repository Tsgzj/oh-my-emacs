(defun ome-evil-setup ()
  ;; (define-key evil-insert-state-map (kbd "C-[") 'evil-force-normal-state)
  (setq evil-auto-indent t)
  (setq evil-regexp-search t)
  (setq evil-want-C-i-jump t)
  (mapc
   (lambda (mode-hook)
     (add-hook mode-hook 'turn-on-evil-mode))
   '(text-mode-hook
     prog-mode-hook
     comint-mode-hook
     conf-mode-hook))
  (mapc
   (lambda (mode-hook)
     (add-hook mode-hook 'turn-off-evil-mode))
   '(Info-mode-hook)))

(ome-install 'evil)

(defun ome-evil-leader-setup ()
  (evil-leader/set-leader "<SPC>")
  (unless (featurep 'helm)
    (evil-leader/set-key
      "e" 'find-file
      "b" 'switch-to-buffer))
  (eval-after-load "helm"
    (progn
      (require 'helm-projectile)
      (evil-leader/set-key
        "f" 'helm-for-files
        "l" 'helm-locate
        "y" 'helm-show-kill-ring
        "t" 'helm-top
        "m" 'helm-man-woman
        "o" 'helm-occur
        "j" 'helm-M-x
        "e" 'helm-find-files
        "b" 'helm-buffers-list
        "h" 'helm-projectile-find-file
        "r" 'helm-recentf
        "H" 'helm-projectile)))
  (eval-after-load "helm-ag"
    (evil-leader/set-key
      "a" 'helm-projectile-ag))
  (eval-after-load "expand-region"
    (progn
      (setq expand-region-contract-fast-key "z")
      (evil-leader/set-key "xx" 'er/expand-region)))
  (eval-after-load "magit"
    (evil-leader/set-key "g" 'magit-status))
  (eval-after-load "quickrun"
    (evil-leader/set-key "q" 'quickrun))
  (eval-after-load "git-gutter-mode"
    (evil-leader/set-key
      "s" 'git-gutter:stage-hunk
      "n" 'git-gutter:next-hunk
      "p" 'git-gutter:previous-hunk))
  (evil-leader/set-key
    "k" 'kill-buffer
    "d" 'dired
    "z" 'repeat
    "0" 'delete-window
    "1" 'delete-other-windows
    "2" 'split-window-below
    "3" 'split-window-right)
  (global-evil-leader-mode))

(ome-install 'evil-leader)

(ome-install 'evil-surround)

(defun ome-expand-region-setup ()
  (global-set-key (kbd "C-=") 'er/expand-region))

(ome-install 'expand-region)

(defun ome-ace-jump-mode-setup ()
  (when (and (featurep 'evil) (featurep 'evil-leader))
    (evil-leader/set-key
      "c" 'ace-jump-char-mode
      "w" 'ace-jump-word-mode
      "l" 'ace-jump-line-mode)))

(ome-install 'ace-jump-mode)

(when (executable-find "ag")
  (ome-install 'ag))

(when (executable-find "ag")
  (ome-install 'helm-ag))
