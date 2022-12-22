;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-inhibited t t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(jedi mmm-mode auto-complete elpy projectile base16-theme spacemacs-theme material-theme atom-one-dark-theme))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; Instalando manejador de paquetes melpa
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Instalando tema
;; (load-theme 'material t)
;; (load-theme 'spacemacs-dark t)

;; Habilitando el nùmero de lìnea
;;(global-linum-mode t)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Resaltar lìnea de ediciòn
(add-hook 'after-init-hook 'global-hl-line-mode)

;; Mostrar coincidencia de parentesis
(show-paren-mode t)

;; Configurando neotree
(add-to-list 'load-path "~/.emacs.d/plugins/neotree")
(require 'neotree)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Configurando projectile
(require 'projectile)
(projectile-mode t)
(setq projectile-project-search-path '("~/development/"))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Definimos la ruta de nuestros archivos de configuraciòn
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))

;; Cargamos archivos de configuraciòn
(require 'init-theme)
(require 'init-misc)
(require 'init-auto-complete)
(require 'init-cedet)
(require 'init-python)

;; ············· Atajos de teclado ················
;; Ir a la linea
(global-set-key (kbd "C-c C-l") 'goto-line)
;; Abrir neotree
(global-set-key [f8] 'neotree-toggle)
;; Abrir shell
(global-set-key (kbd "C-c C-s") 'shell)
