(defvar quarterto-packages
  '(
    ;; package quartertos go here
    editorconfig
    dtrt-indent
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

(defun quarterto/init-dtrt-indent ()
  (use-package dtrt-indent)
  (add-hook 'prog-mode-hook 'dtrt-indent-mode))
