(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("emuvs-notes"
         :base-directory "~/Code/emuvs/"
         :base-extension "org"
         :publishing-directory "~/Code/emuvs.github.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         )
        ("emuvs-static"
         :base-directory "~/Code/emuvs/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/Code/emuvs.github.io/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ))
("emuvs" :components ("emuvs-notes" "emuvs-static"))
