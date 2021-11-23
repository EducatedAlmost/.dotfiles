;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "AlmostEducated"
      user-mail-address "EducatedAlmost@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Fira Code" :size 24 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "CMU Serif" :size 28 :weight 'semi-light))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-tomorrow-night)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; ;; Backups
;; (setq backup-directory-alist '(("." . "~/.emacs-saves")))
;; (setq backup-by-copying nil)

;; Bang.el
(require 'bang)

;; Browser
(setq browse-url-browser-function 'browse-url-firefox
      browse-url-generic-program "firefox")

;; C/C++
(setq c-default-style "k&r"
      c-basic-offset 4)

;; Centered mode
(global-centered-cursor-mode t)

;; Dired
(setq dired-listing-switches "-aBGh --group-directories-first")
(setq ranger-show-hidden t)

;; Input mode
(add-hook 'text-mode-hook (lambda () (set-input-method 'TeX)))

;; Java
(setq meghanada-auto-start nil)

;; LSP
(setq lsp-ui-doc-enable nil)

;; Mixed-pitch
(add-hook 'org-mode-hook 'mixed-pitch-mode)

;; Nov.el
(require 'nov)
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(defun my-nov-font-setup ()
  (face-remap-add-relative
   'variable-pitch
   :family "CMU Serif"
   :height 1.2))
(add-hook 'nov-mode-hook 'my-nov-font-setup)
;; (add-hook 'nov-mode-hook 'visual-line-mode)

;; Org
(setq org-directory "~/org/")
(setq org-default-notes-file "~/org/refile.org")
(setq org-roam-directory "~/org/roam")

(setq org-startup-indented t)

;; Org > Agenda
(setq org-agenda-start-day "-1d")
(setq org-agenda-span 7)
(setq org-agenda-start-on-weekday nil)

;; Org > Archiving
(setq org-archive-location (concat "~/org/archive" "/%s_archive::"))

;; Org > Babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((restclient . t)))

;; Org > Capture
(setq org-capture-templates
      `(("c" "Capture" entry
         (file ,org-default-notes-file)
         "* REFILE %?")))
;; (add-hook 'org-capture-mode-hook 'evil-insert-state)

;; Org > Fragtog
(add-hook 'org-mode-hook 'org-fragtog-mode)

;; Org > Tags
(setq org-tags-column 0)

;; Org > Todo
(setq org-todo-keywords
      '((sequence
         "TODO(t)" "REFILE(r)" "WAIT(w)"
         "|"
         "DONE(d)" "CANCELLED(c)")))
(setq org-todo-keyword-faces
      '(("TODO" . "SlateGray")
        ("REFILE" . "DarkOrchid")
        ("WAIT" . "Firebrick")
        "|"
        ("DONE" . "ForestGreen")
        ("CANCELLED" . "SlateBlue")))

;; Read-time
(require 'read-time)
(setq read-time-words-per-sec 10)

;; Spelling
(setq ispell-dictionary "british-ise-w_accents")

;; Uniquify
(toggle-uniquify-buffer-names t)

;; Vimrc
(require 'vimrc-mode)
(add-to-list 'auto-mode-alist '("\\.vim\\(rc\\)?\\'" . vimrc-mode))

;; Visual-line-mode
;; Make movement keys work like they should
;; (map! :map visual-line-mode-map
;;       "j" #'evil-next-visual-line
;;       "k" #'evil-previous-visual-line)
;; Make horizontal movement cross lines
;; (setq-default evil-cross-lines t)
