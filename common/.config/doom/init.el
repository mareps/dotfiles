;;; init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 company
 ivy

 :ui
 doom
 doom-dashboard
 modeline
 (popup +all +defaults)
 treemacs
 vc-gutter
 vi-tilde-fringe
 hl-todo
 ophints

 :emacs
 dired
 vc

 :editor
 (evil +everywhere)
 snippets
 file-templates

 :tools
 flycheck
 (lookup +docsets)
 magit
 (eval +overlay)
 lsp

 :lang
 data
 markdown
 org
 sh
 emacs-lisp
 nix
 (haskell +lsp)
 psc

 :config
 (default +bindings))
