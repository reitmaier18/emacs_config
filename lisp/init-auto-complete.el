;; Configuraciòn bàsica de autocompletado

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode)
(setq ac-comphist-file (expand-file-name "ac-comphist.dat" user-emacs-directory))

;; Configuramos que una palabra debe tener al menos 3 caracteres para ejecutar el autocompletado
(setq-default ac-auto-start 2)

;; Definimos las fuentes del auto completado
(set-default 'ac-sources '(ac-source-abbrev ac-source-words-in-same-mode-buffers ac-source-dictionary ac-source-words-in-buffer))

;; Hacemos que se busque de forma inteligente
(setq-default ac-ignore-case 'smart)
;; Configuramos el tab para que funcione dependiendo del contexto
(setq-default ac-dwim t)
;; Definimos un retraso de 1 segundo para mostrar un modal de ayuda
(setq ac-quick-help-delay 1)
;; Limitamos los candidatos del autocompletado
(setq ac-candidate-limit 400)
;; permitimos la busqueda
(setq ac-use-menu-map t)
;; establecemos un minimo de opciones para el autocompletado
(setq ac-candidate-menu-min 0)

;; Definimos fuentes de autocompletado para lisp
(defun ac-emacs-lisp-mode-setup ()
  (setq ac-sources (append
		    '(ac-source-dictionary
		      ac-source-features
		      ac-source-functions
		      ac-source-variables
		      ac-source-symbols)
		    ac-sources)
	)
  (setq ac-omni-completion-sources
	'(("\\<featurep\s+'" ac+-source-elisp-features)
	  ("\\<require\s+'"  ac+-source-elisp-features)
	  ("\\<load\s+'" ac-source-emacs-lisp-features))
	)
)

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)

;; Definimos fuentes de autocompletado para eshell
(defun ac-eshell-mode-setup()
  (auto-complete-mode 1)
  (setq ac-sources (append
		    '(ac-source-abbrev
		      ac-source-words-in-same-mode-buffers
		      ac-source-files-in-current-dir)
		    ac-sources)
	)
)

(add-hook 'eshell-mode-hook 'ac-eshell-mode-setup)

(provide 'init-auto-complete)
