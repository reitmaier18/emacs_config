;; Configurando configuraciones importantes

;; ****************************************
;; mmm-mode
;; ****************************************

;; El mmm-mode se utiliza para poder
;; configurar varios major modes en
;; emacs de forma que se pueda
;; colorear cada tipo de còdigo

(require 'mmm-mode)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.php\\'" 'html-php)
(provide 'init-misc)
