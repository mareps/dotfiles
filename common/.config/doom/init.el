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
 debugger

 :lang
 data
 markdown
 org
 sh
 nix
 (cc +lsp)
 (javascript +lsp)
 (csharp +lsp)
 emacs-lisp
 scheme
 (haskell +lsp)
 (rust +lsp)
 psc

 :config
 (default +bindings))
