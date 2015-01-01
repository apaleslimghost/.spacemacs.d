;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Configuration Layers
;; --------------------

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '("~/.spacemacs.d/")
 ;; List of configuration layers to load.
 dotspacemacs-configuration-layers '(quarterto company-mode osx javascript html git perspectives)
 ;; A list of packages and/or extensions that will not be install and loaded.
 dotspacemacs-excluded-packages '(
  ace-jump-mode
  solarized-theme
  auto-dictionary
  fill-column
  google-translate
  spray
  fancy-battery
  monokai-theme
  vi-tilde-fringe
  zenburn-theme
  rcirc
  rcirc-color
  fish-mode
  ido-vertical-mode
  ledger-mode
  leuven-theme
 )
)

;; Settings
;; --------

(setq-default
 ;; Default theme applied at startup
 ;; The leader key
 dotspacemacs-leader-key "SPC"
 ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
 ;; the commands bound to the current keystrokes.
 dotspacemacs-guide-key-delay 0.4
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only)
 dotspacemacs-fullscreen-at-startup t
 ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth scrolling
 ;; overrides the default behavior of Emacs which recenters the point when
 ;; it reaches the top or bottom of the screen
 dotspacemacs-smooth-scrolling t
 ;; If non nil pressing 'jk' in insert state, ido or helm will activate the
 ;; evil leader.
 dotspacemacs-feature-toggle-leader-on-jk nil
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil
 )

(defun dotspacemacs/init ()
  (setq-default
 ;; Default theme applied at startup
 dotspacemacs-default-theme 'monokai)
  "User initialization for Spacemacs. This function is called at the very
 startup."
)


(defun dotspacemacs/config ()

  (evil-leader/set-key
    "ps" 'projectile-persp-switch-project)
  "This is were you can ultimately override default Spacemacs configuration.
This function is called at the very end of Spacemacs initialization."
)

;; Custom variables
;; ----------------

;; Do not write anything in this section. This is where Emacs will
;; auto-generate custom variable definitions.


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-requires 4)
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(custom-safe-themes
   (quote
    ("c65a23eb6bd05271fe6a176803dacbad5e4d9312966207f0232f928f4d93a3e9" default)))
 '(guess-style-guesser-alist
   (quote
    ((indent-tabs-mode . guess-style-guess-tabs-mode)
     (tab-width . guess-style-guess-tab-width)
     (c-basic-offset . guess-style-guess-c-basic-offset)
     (nxml-child-indent . guess-style-guess-indent)
     (css-indent-offset . guess-style-guess-indent)
     (js2-basic-offset . guess-style-guess-c-basic-offset)
     (js-indent-level . guess-style-guess-c-basic-offset))))
 '(js2-basic-offset 2)
 '(linum-format "%4d")
 '(magit-use-overlays nil)
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore) t)
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(scss-compile-at-save nil)
 '(web-mode-enable-auto-quoting nil)
 '(whitespace-style
   (quote
    (face tabs trailing lines space-before-tab newline indentation empty space-after-tab tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(helm-selection ((t (:background "#48a2e4" :underline t))))
 '(helm-source-header ((t (:inherit variable-pitch :background "nil" :foreground "#fdf6e3" :underline nil :weight bold :height 1.5))))
 '(sp-pair-overlay-face ((t (:background "dark slate gray")))))
