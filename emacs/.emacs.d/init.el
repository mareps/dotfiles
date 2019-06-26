(setq-default
  vc-follow-symlinks                 t
  inhibit-startup-screen             t
  ring-bell-function                 'ignore
  backup-directory-alist             '(("." . "~/.emacs.d/backups/"))
  auto-save-file-name-transforms     '((".*" "~/.emacs.d/backups/" t))
  custom-file                        "~/.emacs.d/custom.el"
  indent-tabs-mode                   nil
  show-trailing-whitespace           t
  show-paren-when-point-inside-paren t
  show-paren-style                   'expression
  coding-system-for-read             'utf-8
  coding-system-for-write            'utf-8
  org-directory                      "~/Documents/"
  org-default-notes-file             (concat (file-name-as-directory org-directory)
                                             "notes.org")
  display-line-numbers               'visual
  package-archives
    '(("org"       . "http://orgmode.org/elpa/")
      ("gnu"       . "https://elpa.gnu.org/packages/")
      ("melpa"     . "https://melpa.org/packages/")
      ("marmalade" . "https://marmalade-repo.org/packages/")))

(menu-bar-mode -1)
(if (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(require 'package)
(package-initialize)

;; Install `use-package` unless it is already installed.
;; All package dependencies can be managed by `use-package` after that.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(setq-default use-package-always-ensure t)

(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-medium t))

(use-package evil
  :config
  (evil-mode 1)

  (use-package evil-leader
    :config
    (global-evil-leader-mode)))

(use-package elfeed
  :init
  (use-package elfeed-org
    :init
    (setq rmh-elfeed-org-files
          (list (concat (file-name-as-directory org-directory)
                        "elfeed.org"))
          elfeed-search-filter "@6-month-ago +unread"
          shr-inhibit-images t))
  :commands
  'elfeed
  :config
  (elfeed-org))

(use-package editorconfig
  :config
  (editorconfig-mode 1))


;; Rust
(use-package flycheck
  :hook (prog-mode . flycheck-mode))

(use-package company
  :hook (prog-mode . company-mode)
  :config (setq company-tooltip-align-annotations t)
          (setq company-minimum-prefix-length 1))

(use-package toml-mode)

(use-package rust-mode
  :hook (rust-mode . lsp))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
