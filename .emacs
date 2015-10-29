(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
  (package-initialize)

(prefer-coding-system 'utf-8)

(global-set-key (kbd "RET") 'newline-and-indent)

(defalias 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq visible-bell t)
(setq sentence-end-double-space nil)
(setq column-number-mode t)
(setq inhibit-startup-message 't)
(setq initial-scratch-message "")
(setq inhibit-splash-screen t)
(setq c-default-style "linux" c-basic-offset 4)
(setq default-major-mode 'text-mode)
(setq initial-major-mode 'text-mode)
(setq make-backup-files nil)
(setq suggest-key-bindings t)

