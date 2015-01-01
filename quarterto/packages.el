(defvar quarterto-packages
  '(
    ;; package quartertos go here
    editorconfig
    guess-style
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar quarterto-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function quarterto/init-<package-quarterto>
;;
;; (defun quarterto/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
(defun quarterto/init-editorconfig ()
  (use-package editorconfig))

(defun quarterto/init-guess-style ()
  (use-package guess-style
    :commands (guess-style-set-variable guess-style-guess-variable guess-style-guess-all))
    :config (add-hook 'prog-mode-hook 'guess-style-guess-all))
