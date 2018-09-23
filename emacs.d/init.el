(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

;remove toolbar
(tool-bar-mode -1)

;remove scroll bar
(toggle-scroll-bar -1)

(package-initialize)
(use-package ivy :demand
      :config
      (setq ivy-use-virtual-buffers t
            ivy-count-format "%d/%d "))
(ivy-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (spacemacs-theme geiser exec-path-from-shell use-package counsel undo-tree racket-mode))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; org-mode configuration

;;show timestamp on closing items
(setq org-log-done t)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/org"
			     "~/org/reading-notes"))

;; ivy, counseld and swiper config



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 2.0)))))
