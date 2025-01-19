(require 'package)
(add-to-list
 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
;(global-visual-line-mode t)

(setq neo-window-width 32)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Dropbox/alltexts/org/"))
 '(package-selected-packages
   '(flx-ido fix-ido projectile docker-compose-mode dockerfile-mode terraform-mode yaml-mode php-mode markdown-mode neotree darcula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (package-installed-p 'darcula-theme)
  (package-refresh-contents)
  (package-install 'darcula-theme))

(load-theme 'darcula t)

(unless (package-installed-p 'neotree)
  (package-refresh-contents)
  (package-install 'neotree))

(setq neo-theme (if (display-graphic-p) 'arrow 'arrow))

(unless (package-installed-p 'projectile)
  (package-install 'projectile))

;(unless (package-installed-p 'fix-ido)
;  (package-install 'fix-ido))

(require 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)
(setq projectile-project-search-path '("~/Projects/"))

;; Show scratch buffer instead of home screen
(setq inhibit-startup-message t)

;; Text config
(add-hook 'text-mode-hook 'auto-fill-mode)

;; Keymaps
(keymap-global-set "C-c t" 'neotree-toggle)
(keymap-global-set "C-c b" 'previous-buffer)

;; hide toolbar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-display-line-numbers-mode 1)

(set-face-attribute 'default nil :height 120)

(require 'ido)
(ido-mode t)
(put 'upcase-region 'disabled nil)

