(TeX-add-style-hook
 "ome"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "fixltx2e"
    "graphicx"
    "longtable"
    "float"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "marvosym"
    "wasysym"
    "amssymb"
    "hyperref")
   (LaTeX-add-labels
    "sec-1"
    "ome-prerequisites"
    "sec-2"
    "sec-2-1"
    "sec-2-2"
    "sec-2-3"
    "sec-2-4"
    "sec-2-5"
    "sec-3"
    "sec-3-1"
    "sec-3-2"
    "sec-3-3"
    "sec-4"
    "sec-4-1"
    "sec-4-1-1"
    "sec-4-1-2"
    "sec-4-1-3"
    "sec-5"
    "sec-5-1"
    "sec-5-2"
    "sec-5-3")))

