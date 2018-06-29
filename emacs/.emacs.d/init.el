(setq-default
  vc-follow-symlinks                 t
  inhibit-startup-screen             t
  ring-bell-function                 'ignore
  backup-directory-alist             '(("." . "~/.emacs.d/backups/"))
  auto-save-file-name-transforms     '((".*" "~/.emacs.d/backups/" t))
  custom-file                        "~/.emacs.d/custom.el"
  indent-tabs-mode                   nil
  show-trailing-whitespace           t
  x-gtk-use-system-tooltips          nil
  show-paren-when-point-inside-paren t
  show-paren-style                   'expression
  coding-system-for-read             'utf-8
  coding-system-for-write            'utf-8
  org-directory                      "~/org"
  org-default-notes-file             (concat (file-name-as-directory org-directory)
                                             "/anotações.org")
  display-line-numbers               'visual
  package-archives
    '(("org"       . "http://orgmode.org/elpa/")
      ("gnu"       . "https://elpa.gnu.org/packages/")
      ("melpa"     . "https://melpa.org/packages/")
      ("marmalade" . "https://marmalade-repo.org/packages/")))

(menu-bar-mode   -1)
(tool-bar-mode   -1)
(scroll-bar-mode -1)

(require 'package)
(package-initialize)

;; Install `use-package` unless it is already installed.
;; All package dependencies can be managed by `use-package` after that.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(setq-default use-package-always-ensure t)

(use-package evil
  :init
(evil-mode 1))
