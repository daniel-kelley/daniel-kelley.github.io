; https://stackoverflow.com/questions/46295511/how-to-run-org-mode-commands-from-shell

(require 'org)
(require 'ox-html)

(setq org-publish-project-alist
  '(("status"
     :with-toc t
     :recursive t
     :base-directory "status/src"
     :publishing-directory "status"
     :publishing-function org-html-publish-to-html)
    ("top"
     :components("status"))
    )
  )
