(require 'package)
(add-to-list 'package-archives
;;	     '("elpy" . "http://jorgenschaefer.github.io/packages/")
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))
;;             '("melpa" . "https://melpa.org/packages/"))

(require 'ido)
(ido-mode t)

;;(package-initialize)
;; (elpy-enable)


;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
;; (add-to-list 'load-path "~/slime")
;; (require 'slime-autoloads)
;; (load (expand-file-name "~/quicklisp/slime-helper.el"))

;; (setq inferior-lisp-program "sbcl")
;; (setq slime-contribs '(slime-fancy))

;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
;;  (setq inferior-lisp-program "sbcl")




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("a317b11ec40485bf2d2046d2936946e38a5a7440f051f3fcc4cdda27bde6c5d4" default)))
 '(ido-grid-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(mouse-yank-at-point t)
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "-i --simple-prompt --pprint")
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(put 'scroll-left 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(global-set-key [C-tab] 'other-window)
(put 'narrow-to-region 'disabled nil)

(add-hook 'before-save-hook 'whitespace-cleanup)

(put 'narrow-to-region 'disabled nil)
(global-set-key [C-tab] 'other-window)

(defun randoname ()
  (interactive)
  (insert (format "%07d" (random 10000000))))


