;; Archivo de configuraciòn de python
(require 'jedi)
(setq auto-mode-alist
      (append '(("SConstruct\'" . python-mode)
		("SConstruct\'" . python-mode))
	      auto-mode-alist))

(require 'pip-requirements)
(defun my/python-mode-stuff ()
  ;; Usamos jedi
  (jedi:setup)
  ;; Configuramos atajo para ir a la definiciòn de una funciòn
  (define-key python-mode-map (kbd "C-]") 'jedi:goto-definition)
  ;; Definimos el atajo F1 para ver documentaciòn
  (local-set-key (kbd "<f1>") 'jedi:show-doc)
  ;; Definimos la documentaciòn completa que nos ofrece jedi
  (setq jedi:complete-on-dot t)
)

(add-hook 'python-mode-hook 'my/python-mode-stuff)

(provide 'init-python)
