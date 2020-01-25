;; Install required packages if not installed.
(mapc #'(lambda (package)
  (unless (package-installed-p package)
    (package-install package)))
      '(org-bullets calfw calfw-org)
)

;; Install pretty bullets.
(require 'org-bullets)

;; Install calendar view.
(require 'calfw)
(require 'calfw-org)

;; Enable pretty bullets.
(add-hook 'org-mode-hook
          (lambda()
            (org-bullets-mode t)))

;; Enable agenda keybinding.
(global-set-key (kbd "C-c a") 'org-agenda)

;; Enable capture keybinding.
(global-set-key (kbd "C-c c") 'org-capture)

;; Enable store link keybinding.
(global-set-key (kbd "C-c l") 'org-store-link)

;; Enable calendar buffer
(global-set-key (kbd "M-C") 'cfw:open-org-calendar)

;; GTD setup.
(setq org-capture-templates
       '(("t" "Todo [inbox]" entry (file+headline "~/org/inbox.org" "Tasks")
          "* TODO %?\n  %i\n  %a")
         ("T" "Tickler" entry (file+headline "~/org/tickler.org" "Tickler")
          "* %i%? \n %U")
         ("j" "Journal" entry (file+datetree "~/org/journal.org")
          "* %?\nEntered on %U\n  %i\n  %a")))

(setq org-agenda-files '("~/org/inbox.org"
                          "~/org/gtd.org"
                          "~/org/tickler.org"))

(setq org-refile-targets '(("~/org/gtd.org" :maxlevel . 3)
                           ("~/org/someday.org" :level . 1)
                           ("~/org/tickler.org" :maxlevel . 2)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
