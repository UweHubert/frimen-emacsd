(provide 'all-keybindings)

;; global keybindings

;; (global-set-key (kbd "H-w") 'previous-line)
;; (global-set-key (kbd "H-s") 'next-line)
;; (global-set-key (kbd "H-a") 'backward-char)
;; (global-set-key (kbd "H-d") 'forward-char)
;; (global-set-key (kbd "H-q") 'move-beginning-of-line)
;; (global-set-key (kbd "H-e") 'move-end-of-line)
;; (global-set-key (kbd "H-W") 'cua-scroll-up)
;; (global-set-key (kbd "H-S") 'cua-scroll-down)

(global-set-key (kbd "C-c C-l") 'my-clojure-eval-saved-form)
(global-set-key (kbd "C-c C") 'cider-connect-sibling-clojure)

(global-unset-key (kbd "S-<down-mouse-1>"))
(global-set-key (kbd "S-<mouse-1>") 'mouse-save-then-kill)

(global-set-key (kbd "C-x w") 'switch-window-then-swap-buffer)

(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<escape>") 'kill-this-buffer)
(global-set-key (kbd "M-p") 'scroll-up-line)
(global-set-key (kbd "M-n") 'scroll-down-line)

(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "<backtab>") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "C-x f") 'my-ido-recentf-open)

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "M-Q") 'my-neotree-show)

(global-set-key (kbd "C-<") 'mc/mark-next-like-this)
(global-set-key (kbd "C->") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-+") 'highlight-symbol-at-point)

(global-set-key (kbd "C-SPC") 'er/expand-region)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; search
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper)
(global-set-key (kbd "C-w") 'counsel-git-grep)

;; M-x enhancement
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ace jump
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;; dired
(global-set-key (kbd "C-x C-d") 'ido-dired)

;; move text
(global-set-key (kbd "M-S-<down>") 'move-text-down)
(global-set-key (kbd "M-S-<up>") 'move-text-up)

;; resize window
(global-set-key (kbd "C-c <end>") 'my-resize-window-mode)

;; browse kill ring
(global-set-key (kbd "C-y") 'browse-kill-ring)

;; use ibuffer to list buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; clojure


(defun my-cider-keybindings ()
  (define-key cider-mode-map (kbd "<return>") 'paredit-newline)
  (define-key cider-mode-map (kbd "C-M-<") 'mc/mark-all-symbols-like-this)
  (define-key cider-mode-map (kbd "C-<") 'mc/mark-all-symbols-like-this-in-defun)
  (define-key cider-mode-map (kbd "C-c S-<return>") 'my-clojure-reload-restart-system)
  (define-key cider-mode-map (kbd "C-c C-<return>") 'my-clojure-restart-system)
  (define-key cider-mode-map (kbd "C-c M-<return>") 'my-clojure-start-figwheel)
  (define-key cider-mode-map (kbd "C-c C-d") 'my-clojure-cider-popup-doc)
  (define-key cider-mode-map (kbd "C-c C-j") 'cider-javadoc)
  (define-key cider-mode-map (kbd "C-c M-z") 'nrepl-make-connection-default)
  (define-key cider-mode-map (kbd "<tab>") 'my-indent-and-complete-symbol)
  (define-key cider-mode-map (kbd "C-c C-p") 'my-clojure-refresh-namespaces)
  (define-key cider-mode-map (kbd "C-c C-c") 'my-clojure-eval-form)
  (define-key cider-mode-map (kbd "C-c l") 'my-clojure-save-form)
  (define-key cider-mode-map (kbd "C-c M-p") 'my-clojure-insert-defun-in-repl)
  (define-key cider-mode-map (kbd "C-c C-i") 'my-clojure-indent-defn)
  (define-key cider-mode-map (kbd "C-c C-l") 'my-clojure-eval-saved-form)
  (define-key cider-mode-map (kbd "C-c C-f") 'my-clojure-eval-form-in-repl)
  (define-key cider-mode-map (kbd "C-c SPC") 'ace-jump-mode))

(add-hook 'cider-mode-hook #'my-cider-keybindings)

(defun my-cider-repl-keybindings ()
  (define-key cider-repl-mode-map (kbd "C-c C-d") 'my-clojure-cider-popup-doc)
  (define-key cider-repl-mode-map (kbd "C-c C-j") 'cider-javadoc)
  (define-key cider-repl-mode-map (kbd "C-c M-z") 'nrepl-make-connection-default)
  (define-key cider-repl-mode-map (kbd "<tab>") 'my-indent-and-complete-symbol)
  (define-key cider-repl-mode-map (kbd "C-c C-p") 'my-clojure-refresh-namespaces)
  (define-key cider-mode-map (kbd "C-c C-<return>") 'my-clojure-reload-restart-system)
  (define-key cider-mode-map (kbd "C-c S-<return>") 'my-clojure-restart-system)
  (define-key cider-repl-mode-map (kbd "C-c M-<return>") 'my-clojure-start-figwheel)
  (define-key cider-repl-mode-map (kbd "C-c l") 'my-clojure-save-form)
  (define-key cider-repl-mode-map (kbd "C-c C-l") 'my-clojure-eval-saved-form)
  (define-key cider-repl-mode-map (kbd "C-c C-i") 'my-clojure-indent-defn)
  (define-key cider-repl-mode-map (kbd "<return>") 'cider-repl-return))

(add-hook 'cider-repl-mode-hook #'my-cider-repl-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; elisp

(defun my-elisp-keybindings ()
  (local-set-key (kbd "C-M-<") 'mc/mark-all-symbols-like-this)
  (local-set-key (kbd "C-<") 'mc/mark-all-symbols-like-this-in-defun)
  (local-set-key (kbd "C-c C-c") 'eval-defun)
  (local-set-key (kbd "C-c C-k") 'eval-buffer)
  (local-set-key (kbd "C-c C-i") 'my-indent-defun)
  (local-set-key (kbd "C-c C-d") 'my-elisp-describe-thing-in-popup))

(add-hook 'emacs-lisp-mode-hook #'my-elisp-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; code block folding

(defun my-hs-keybindings ()
  (define-key hs-minor-mode-map (kbd "C-c <tab>") 'hs-toggle-hiding)
  (define-key hs-minor-mode-map (kbd "C-c s") 'hs-show-all)
  (define-key hs-minor-mode-map (kbd "C-c h") 'hs-hide-all))

(add-hook 'hs-minor-mode-hook #'my-hs-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ido

(defun my-ido-keybindings ()
  (define-key ido-completion-map (kbd "<down>") 'ido-next-match)
  (define-key ido-completion-map (kbd "<up>")   'ido-prev-match))

(add-hook 'ido-setup-hook #'my-ido-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; magit

(defun my-magit-keybindings ()
  (local-set-key (kbd "C-<tab>") 'switch-window)
  (local-set-key (kbd "<tab>") 'magit-section-toggle))

(add-hook 'magit-mode-hook #'my-magit-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; neotree

(defun my-neotree-keybindings ()
  (local-set-key (kbd "C") 'neotree-change-root)
  (local-set-key (kbd "c") 'neotree-create-node)
  (local-set-key (kbd "d") 'neotree-delete-node)
  (local-set-key (kbd "r") 'neotree-rename-node)
  (local-set-key (kbd "e") 'neotree-enter)
  (local-set-key (kbd "<tab>") 'neotree-enter)
  (local-set-key (kbd "C-g") 'neotree-hide)
  (local-set-key (kbd "C-q") 'neotree-hide)
  (local-set-key (kbd "SPC") 'my-neotree-peek))

(add-hook 'neotree-mode-hook #'my-neotree-keybindings)



;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; paredit

(defun my-paredit-keybindings ()
  (define-key paredit-mode-map (kbd "C-1") 'paredit-open-round)
  (define-key paredit-mode-map (kbd "C-2") 'paredit-open-bracket)
  (define-key paredit-mode-map (kbd "C-3") 'paredit-open-curly)
  (define-key paredit-mode-map (kbd "H-f") 'paredit-forward)
  (define-key paredit-mode-map (kbd "H-b") 'paredit-backward)
  (define-key paredit-mode-map (kbd "<tab>") 'my-indent-and-complete-symbol)
  (define-key paredit-mode-map (kbd "{") 'paredit-open-curly)
  (define-key paredit-mode-map (kbd "H-d") 'my-delete-whitespace-except-one)
  (define-key paredit-mode-map (kbd "H-F") 'paredit-forward-down)
  (define-key paredit-mode-map (kbd "H-B") 'paredit-backward-up)
  (define-key paredit-mode-map (kbd "C-d") 'my-delete-region-or-char)
  (define-key paredit-mode-map (kbd "<delete>") 'my-delete-region-or-char))

(add-hook 'paredit-mode-hook #'my-paredit-keybindings)

(eval-after-load "paredit"
  '(progn
     (define-key paredit-mode-map (kbd "C-b") nil)
     (define-key paredit-mode-map (kbd "C-f") nil)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org

(defun my-org-keybindings ()
  (define-key org-mode-map (kbd "C-<tab>") 'switch-window))

(add-hook 'org-mode-hook  #'my-org-keybindings)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c l") 'org-store-link)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; web-mode

(defun my-web-keybindings ()
  (define-key web-mode-map (kbd "C-7") 'web-mode-element-close)
  (define-key web-mode-map (kbd "C-c C-e l") 'web-mode-insert-link)
  (define-key web-mode-map (kbd "C-c q q") 'web-mode-fold-or-unfold)
  (define-key web-mode-map (kbd "C-SPC") 'web-mode-mark-and-expand))

(add-hook 'web-mode-hook 'my-web-keybindings)
