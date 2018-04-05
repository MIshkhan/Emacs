;;package install
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(setq monokai-background "#1e252d") (load-theme 'monokai t)                                    ;;theme
(add-to-list 'load-path "/home/ishkhan/.emacs.d/elpa/neotree-20170522.758") (require 'neotree) ;;neo-tree

(defalias 'yes-or-no-p 'y-or-n-p)                                                              ;;yes-no alias

;;modes
(global-linum-mode t)                      ;;lines number
(delete-selection-mode 1)                  ;;delete-selection
(global-auto-complete-mode t)              ;;auto-complete
(global-syntax-subword-mode 1)             ;;syntax-subword
(global-diff-hl-mode)                      ;;shows saved diffs
(diff-hl-flydiff-mode)                     ;;shows unsaved diffs 

(setq-default indent-tabs-mode nil)        ;;tabs
(add-hook 'prog-mode-hook #'hs-minor-mode) ;;hide-show

(setq make-backup-files nil)               ;;stop creating backup~ files
(setq auto-save-default nil)               ;;stop creating #autosave# files

(setq c-basic-offset 2)                    ;;offset is 2 space

;;all-the-icons		
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (find-file-in-project diff-hl restclient irony syntax-subword json-mode scala-mode php-mode neotree monokai-theme highlight-symbol auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;custom-set-keys
(global-set-key [f1]  'hs-toggle-hiding)                                         ;;hide-show
(global-set-key [f2]  'highlight-symbol-prev)                                    ;;highlight-prev-sysmbol
(global-set-key [f3]  'highlight-symbol-at-point)                                ;;highlight-all-sysmbols 
(global-set-key [f4]  'highlight-symbol-next)                                    ;;highlight-next-sysmbol
(global-set-key [f5]  (lambda() (interactive) (load-file "~/.emacs.d/init.el"))) ;;loading init.el
(global-set-key [f6]  (lambda() (interactive) (find-file "~/.emacs.d/init.el"))) ;;opening init.el
(global-set-key [f7]  'find-file)                                                ;;finding file
(global-set-key [f8]  'neotree-toggle)                                           ;;neo-tree
(global-set-key [f9]  'find-file-in-project)                                     ;;finding file in project
(global-set-key [f10] 'find-file-in-project-at-point)                            ;;finding file in project at point/by-selected 

;; Required packages
;; diff-hl  (18 -> 19)
;; find-file-in-project (56)
