;; Use spaces instead of tabs.
(setq-default indent-tabs-mode nil)

;; Set custom themes path.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Set custom dark theme.
(add-to-list 'custom-theme-load-path "wintermute-theme.el")
(load-theme 'wintermute t)

;; Set visual bell.
(setq visible-bell t)

;; Set cursor color to white to match dark theme.
(set-cursor-color "#ffffff")

;; Enable line numbers.
(global-linum-mode 1)

;; Install packages.
(require 'package)

;; Fix melpa TLS bug.
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Add melpa repositories.
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t
)

;; Auto install packages.
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
)

;; Custom variables:
(custom-set-variables
  ;; Do not show welcome screen on startup.
  '(inhibit-startup-screen t)
)

;; Custom keybindings:
;; - Use hippie-expand instead of DAbbrev.
(global-set-key "\M-/" 'hippie-expand)

;; Kill processes opened by Emacs on exit: debuggers, tests suites, webserver and others.
(add-hook 'comint-exec-hook
  (lambda () (set-process-query-on-exit-flag (get-buffer-process (current-buffer)) nil))
)

;; Install required packages if not installed.
(mapc #'(lambda (package)
  (unless (package-installed-p package)
    (package-install package)))
      '(yaml-mode)
)

(require 'yaml-mode)