(add-to-list 'auto-mode-alist '("\\.sjs\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\.ls\\'" . coffee-mode))
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'dtrt-indent-mode)
