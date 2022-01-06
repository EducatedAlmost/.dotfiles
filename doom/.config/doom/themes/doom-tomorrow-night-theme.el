;;; doom-tomorrow-night-theme.el -*- lexical-binding: t; no-byte-compile: t; -*-
(require 'doom-themes)

(defgroup doom-tomorrow-night-theme nil
  "Options for the `doom-tomorrow-night' theme."
  :group 'doom-themes)

(defcustom doom-tomorrow-night-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-tomorrow-night-theme
  :type '(choice integer boolean))

(def-doom-theme doom-tomorrow-night
  "A theme based off of Chris Kempson's Tomorrow Dark."

  ;; name        gui       256       16
  ((bg         '("#161719" nil       nil          ))
   (bg-alt     '("#161719" nil       nil          ))
   (base0      '("#0d0d0d" "black"   "black"      ))
   (base1      '("#1b1b1b" "#1b1b1b"              ))
   (base2      '("#212122" "#1e1e1e"              ))
   (base3      '("#292b2b" "#292929" "brightblack"))
   (base4      '("#3f4040" "#3f3f3f" "brightblack"))
   (base5      '("#5c5e5e" "#525252" "brightblack"))
   (base6      '("#757878" "#6b6b6b" "brightblack"))
   (base7      '("#969896" "#979797" "brightblack"))
   (base8      '("#ffffff" "#ffffff" "white"      ))
   (fg         '("#e5e8e9" "#c5c5c5" "white"))
   (fg-alt     (doom-darken fg 0.4))

   (grey       '("#5a5b5a" "#5a5a5a" "brightblack"))
   (red        '("#cc6666" "#cc6666" "red"))
   (orange     '("#de935f" "#dd9955" "brightred"))
   (yellow     '("#f0c674" "#f0c674" "yellow"))
   (green      '("#b5bd68" "#b5bd68" "green"))
   (blue       '("#81a2be" "#88aabb" "brightblue"))
   (dark-blue  '("#41728e" "#41728e" "blue"))
   (teal       blue) ; FIXME replace with real teal
   (magenta    '("#c9b4cf" "#c9b4cf" "magenta"))
   (violet     '("#b294bb" "#b294bb" "brightmagenta"))
   (cyan       '("#8abeb7" "#8abeb7" "cyan"))
   (dark-cyan  (doom-darken cyan 0.4))

   ;; face categories
   (highlight      (doom-lighten blue 0.2))
   (vertical-bar   (doom-lighten base0 0.2))
   (selection      `(,(car (doom-lighten bg 0.1)) ,@(cdr base4)))
   (builtin        (doom-lighten blue 0.2))
   (comments       (doom-lighten grey 0.2))
   (doc-comments   (doom-lighten grey 0.3))
   (constants      (doom-lighten orange 0.2))
   (functions      (doom-lighten blue 0.2))
   (keywords       (doom-lighten violet 0.2))
   (methods        (doom-lighten blue 0.2))
   (operators      (doom-lighten fg 0.2))
   (type           (doom-lighten yellow 0.2))
   (strings        (doom-lighten green 0.2))
   (variables      (doom-lighten red 0.2))
   (numbers        (doom-lighten orange 0.2))
   (region         (doom-lighten selection 0.2))
   (error          (doom-lighten red 0.2))
   (warning        (doom-lighten yellow 0.2))
   (success        (doom-lighten green 0.2))
   (vc-modified    (doom-lighten fg-alt 0.2))
   (vc-added       (doom-lighten green 0.2))
   (vc-deleted     (doom-lighten red 0.2))

   ;; custom categories
   (modeline-bg     `(,(doom-darken (car bg-alt) 0.3) ,@(cdr base3)))
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     base8)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-tomorrow-night-padded-modeline
      (if (integerp doom-tomorrow-night-padded-modeline)
          doom-tomorrow-night-padded-modeline
        4))))

  ;; --- faces ------------------------------
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground blue :bold bold)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)
   ;;;; doom-modeline
   (doom-modeline-buffer-path       :foreground violet :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path))

  ;; --- variables --------------------------
  ;; ()
  )

;;; doom-tomorrow-night-theme.el ends here
