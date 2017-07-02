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
(add-to-list 'load-path "/home/ishkhan/Programs/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;all-the-icons
(custom-set-variables '(neo-theme (quote icons)))
(custom-set-faces)



