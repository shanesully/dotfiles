;; Package repos
(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
  (package-initialize)

;; Encoding
(prefer-coding-system 'utf-8)

;; Indent on newline
(global-set-key (kbd "RET") 'newline-and-indent)

;; Aliases
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable gui features
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Tab settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Disable visual beep
(setq visible-bell t)

;; No ancient sentence termination spacing
(setq sentence-end-double-space nil)

;; Number columns as well as lines
(setq column-number-mode t)

;; Disable various splash screens
(setq inhibit-startup-message 't)
(setq initial-scratch-message "")
(setq inhibit-splash-screen t)

;; C language file indentation
(setq c-default-style "linux" c-basic-offset 4)

;; Emacs uses LispMode by default
(setq default-major-mode 'text-mode)
(setq initial-major-mode 'text-mode)

;; Disable backup files
(setq make-backup-files nil)

;; Key binding auto completion
(setq suggest-key-bindings t)

;; Black, high-contrast theme
(load-theme 'cyberpunk t)

;; Vim emulation mode
(require 'evil)
(evil-mode 1)

;; Line numbering for every buffer
(global-linum-mode t)
