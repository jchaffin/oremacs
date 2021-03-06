;;* Ace Window
(require 'ace-window)
(csetq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(csetq aw-background nil)

(csetq aw-flip-keys '("n" "ν"))
(add-to-list 'aw-dispatch-alist '(?ν aw-flip-window))

;;* Avy
(avy-setup-default)
(csetq avy-all-windows t)
(csetq avy-all-windows-alt nil)
(csetq avy-styles-alist '((avy-goto-char-2 . post)
                          (ivy-avy . pre)
                          (avy-goto-line . pre)))
;; (advice-add 'swiper :before 'avy-push-mark)
;; (advice-remove 'swiper 'avy-push-mark)

;;* Lispy
(csetq avy-keys-alist
       `((lispy-ace-symbol . ,aw-keys)))

(defhydra hydra-avy (:color teal)
  ("j" avy-goto-char)
  ("k" avy-goto-word-1)
  ("l" avy-goto-line)
  ("s" avy-goto-char-timer)
  ("f" counsel-find-file)
  ("q" nil))

(provide 'ora-avy)
