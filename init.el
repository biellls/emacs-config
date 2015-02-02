(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)
;; Vim bindings
(require 'evil)
  (evil-mode 1)
(setq scroll-margin 5
      scroll-conservatively 9999
      scroll-step 1)
(when (not package-archive-contents)
  (package-refresh-contents))

(load "~/.emacs.d/user.el")

;; Auto Complete
(require 'auto-complete-config)
(ac-config-default)

;; Mac os x mode
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)
(setq mac-allow-anti-aliasing t)

;; Define + active modification to compile that locally sets
;; shell-command-switch to "-ic".
(defadvice compile (around use-bashrc activate)
  "Load .bashrc in any calls to bash (e.g. so we can use aliases)"
  (let ((shell-command-switch "-ic"))
    ad-do-it))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ada-auto-case nil)
 '(custom-enabled-themes (quote (noctilux)))
 '(custom-safe-themes (quote ("0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "7f1263c969f04a8e58f9441f4ba4d7fb1302243355cb9faecb55aec878a06ee9" "9e54a6ac0051987b4296e9276eecc5dfb67fdcd620191ee553f40a9b6d943e78" "cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" "1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" default)))
 '(noctilux-contrast (quote normal)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-face-attribute 'region nil :background "#111" :foreground "#aaaaff")
