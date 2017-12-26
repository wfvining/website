(require 'org-publish)
(setq org-publish-project-alist
      '(

        ("org-notes"
         :base-directory "~/website/"
         :base-extension "org"
         :publishing-directory "~/public_html/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/gen_style.css\" />"
         :html-head-extra "<link href=\"https://fonts.googleapis.com/css?family=Playfair+Display|Raleway\" rel=\"stylesheet\">" 
         :html-head-include-default-style nil
         :html-toplevel-hlevel 1
         :headline-levels 4
         :auto-preamble t
         :with-toc nil
         :with-title nil
         :section-numbers nil
         :html-postamble nil
         :html-preamble "<ul class=\"menu\" id=\"top\"><li class=\"menu\"><a href=\"index.html\">Home</a></li><li class=\"menu\"><a href=\"index.html#misc\">Miscellany</a></li><li class=\"menu\"><a href=\"index.html#publications\">Publications</a></li></ul>"
         )

        ("org-static"
         :base-directory "~/website/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg"
         :publishing-directory "~/public_html/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        
        ("website" :components ("org-notes" "org-static"))
        
        ))