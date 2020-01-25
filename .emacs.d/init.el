(package-initialize)

;; Load configuration files.
(mapc 'load (file-expand-wildcards "~/.emacs.d/config/*.el"))
