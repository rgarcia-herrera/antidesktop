(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(require 'ido)
(ido-mode t)

;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(add-to-list 'load-path "~/slime")
(require 'slime-autoloads)
(load (expand-file-name "~/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ido-grid-mode t)
 '(menu-bar-mode nil)
 '(mouse-yank-at-point t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(put 'scroll-left 'disabled nil)