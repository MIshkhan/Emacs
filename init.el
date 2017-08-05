;;package install
(require 'package)
	(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
	(add-to-list 'package-archives '("marmalade" . "http://marmalade.ferrier.me.uk/packages/"))
(package-initialize)


(setq monokai-background "#24292e") (load-theme 'monokai t)                                    ;;theme
(add-to-list 'load-path "/home/ishkhan/.emacs.d/elpa/neotree-20170522.758") (require 'neotree) ;;neo-tree

(defalias 'yes-or-no-p 'y-or-n-p)                                                              ;;yes-no alias

;;modes
(global-linum-mode t)                      ;;lines number
(delete-selection-mode 1)                  ;;delete-selection
(global-auto-complete-mode t)              ;;auto-complete
(setq subword-mode 1)                      ;;subword
(setq-default indent-tabs-mode nil)        ;;tabs
(add-hook 'prog-mode-hook #'hs-minor-mode) ;;hide-show

(setq make-backup-files nil)        ;; stop creating backup~ files
(setq auto-save-default nil)        ;; stop creating #autosave# files

(setq c-basic-offset 2) ;;offset is 2 space

;;all-the-icons		
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(custom-set-variables
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (json-mode scala-mode php-mode neotree monokai-theme highlight-symbol auto-complete all-the-icons))))
(custom-set-faces)

;;custom-set-keys
(global-set-key [f1] 'hs-toggle-hiding)                ;;hide-show
(global-set-key [f2] 'highlight-symbol-prev)           ;;highlight-prev-sysmbol
(global-set-key [f3] 'highlight-symbol-at-point)       ;;highlight-all-sysmbols 
(global-set-key [f4] 'highlight-symbol-next)           ;;highlight-next-sysmbol
(global-set-key [f5] (lambda() (interactive) (load-file "~/.emacs.d/init.el"))) ;;loading init.el
(global-set-key [f6] (lambda() (interactive) (find-file "~/.emacs.d/init.el"))) ;;opening init.el
(global-set-key [f7] 'find-file)      ;;finding file
(global-set-key [f8] 'neotree-toggle) ;;neo-tree
