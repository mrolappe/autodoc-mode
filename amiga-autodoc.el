;; TODO imenu support
;; TODO bookmark handler

(defvar amiga-autodoc-mode-hook nil
  "List of hook functions to call when entering Amiga AutoDoc mode")

(defvar amiga-autodoc-mode-map nil
  "Keymap for amiga-autodoc major mode")

(if amiga-autodoc-mode-map
    nil
  (setq amiga-autodoc-mode-map (make-sparse-keymap))

  (define-key amiga-autodoc-mode-map "t" 'amiga-autodoc-toc)
  (define-key amiga-autodoc-mode-map "n" 'amiga-autodoc-next)
  (define-key amiga-autodoc-mode-map "p" 'amiga-autodoc-prev)
  (define-key amiga-autodoc-mode-map "g" 'amiga-autodoc-goto))

(defun amiga-autodoc-mode ()
  "Major mode for browsing Amiga AutoDoc files"

  (interactive)
  (kill-all-local-variables)
  (setq major-mode 'amiga-autodoc-mode
        mode-name "Amiga AutoDoc")
  (run-hooks 'amiga-autodoc-mode-hook))

(provide 'amiga-autodoc)
