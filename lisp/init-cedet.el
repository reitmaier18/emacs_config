;; Collection of Emacs Development Environment Tools
;; Colecciòn de Herramientas de Entorno de desarrollo de emacs
(require 'cedet)
;; Cargamos el directorio de contriuyentes
(add-to-list 'load-path (file-name-as-directory (expand-file-name "site-lisp/cedet-contrib/" user-emacs-directory)) "contrib")

;; Cargamos la bd de semantica por defecto
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode t)
;; Buffer parsing when idle
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode 1)
;; Mostrar la funciòn actual en el header
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode 1)
;; Coloreado de declaraciòn de la funciòn actual
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode 1)
;; Mostrar informaciòn de la  funciòn en el minibuffer
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)




(provide 'init-cedet)
