(defvar quarterto-pre-extensions
  '(
    monokai-dave-theme
    )
  "List of all extensions to load before the packages.")

(defvar quarterto-post-extensions
  '(
    ;; post extension quartertos go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function quarterto/init-<extension-quarterto>
;;
;; (defun quarterto/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
(defun quarterto/init-monokai-dave-theme ()
  (use-package monokai-dave-theme)
  (setq-default dotspacemacs-default-theme 'monokai-dave))
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
