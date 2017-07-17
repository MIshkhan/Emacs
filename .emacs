;;package install
(require 'package)
	(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
	(add-to-list 'package-archives '("marmalade" . "http://marmalade.ferrier.me.uk/packages/"))
(package-initialize)

;;lines number
(global-linum-mode t)

;;theme
(setq monokai-background "#24292e")
(load-theme 'monokai t)

;;delete-selection-mode
(delete-selection-mode 1)

;;auto-complete
(global-auto-complete-mode t)

;;neo-tree
(add-to-list 'load-path "/home/ishkhan/.emacs.d/elpa/neotree-20170522.758")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;all-the-icons
(custom-set-variables
 '(inhibit-startup-screen t)
 '(neo-theme (quote icons)))
(custom-set-faces)

;;java-mode
(add-hook 'java-mode-hook (lambda ()
			    (hs-minor-mode 1)
			    (local-set-key (kbd "<f1>") 'hs-toggle-hiding)
			    (local-set-key (kbd "<f2>") 'hs-hide-all)
			    (local-set-key (kbd "<f3>") 'hs-show-all)
			    (setq c-basic-offset 2)))

;;yes-no alias
(defalias 'yes-or-no-p 'y-or-n-p)

;;subword-mode
(setq subword-mode 1)

