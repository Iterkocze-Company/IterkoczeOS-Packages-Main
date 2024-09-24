(provide 'iterkoczeos-emacs)

(add-to-list 'custom-theme-load-path "~/.emacs.d/iterkoczeos-emacs/")
(load-theme 'gruber-darker t)

(menu-bar-mode -1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(setq run-cmd "")
(defun run-program-set-cmd ()
  (interactive)
  (setq run-cmd (read-string "Run command: "))
)

(setq compile-cmd "")
(defun compile-program-set-cmd ()
  (interactive)
  (setq compile-cmd (read-string "Compile command: "))
)

(defun compile-program ()
  (interactive)
  (if (string-empty-p compile-cmd)
      (compile-program-set-cmd)
  )
  (shell-command compile-cmd)
) 

(defun run-program ()
  (interactive)
  (if (string-empty-p run-cmd)
      (run-program-set-cmd)
  )
  (shell-command run-cmd)
)

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun compile-and-run ()
  (interactive)
  (recompile)
  ;(run-program)
)

(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)

(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<S-f5>") 'run-program)
;(global-set-key (kbd "<f5>") 'compile-and-run)
(global-set-key (kbd "<f6>") 'compile)
(global-set-key (kbd "<S-f6>") 'run-program-set-cmd)
