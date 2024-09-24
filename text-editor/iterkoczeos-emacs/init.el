(add-to-list 'load-path "~/.emacs.d/iterkoczeos-emacs")

(require 'iterkoczeos-emacs) 

(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(custom-enabled-themes '(gruber-darker))
 ;'(custom-safe-themes
   ;'("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 ;'(package-selected-packages '(company drag-stuff lsp-mode)))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)

;;(add-to-list 'load-path "/path/to/drag-stuff")
;;(require 'drag-stuff)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(drag-stuff-mode t)
;(drag-stuff-define-keys)
;(drag-stuff-global-mode 1)

(defun c-not-implemented ()
  (interactive)
  "Insert not implemented assert C style"
  (insert "assert(0 && \"Not implemented\");")) 
 
