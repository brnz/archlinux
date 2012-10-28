;
; ~/.emacs
;

(add-hook 'c-mode-common-hook '(lambda ()
    (local-set-key (kbd "RET") 'newline-and-indent)))
(setq-default indent-tabs-mode nil)
