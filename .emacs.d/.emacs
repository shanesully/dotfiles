(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
		        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
		        package-archives)

(setq inhibit-startup-message t)
(package-initialize)
(evil-mode 1)
(custom-set-variables
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" default))))
(custom-set-faces
 )
