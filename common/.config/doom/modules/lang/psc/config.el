;; (after! purescript-mode

(use-package! purescript-mode
  :config
  (set-lookup-handlers! 'purescript-mode
    :definition #'psc-ide-goto-definition
    :documentation #'purescript-pursuit))

(use-package! psc-ide
  :hook (purescript-mode . psc-ide-mode)
  :config
  (add-hook 'psc-ide-mode-hook
            (psc-ide-server-start (projectile-project-root))))
