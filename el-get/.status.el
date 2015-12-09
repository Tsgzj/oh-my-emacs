((ac-geiser status "installed" recipe
            (:name ac-geiser :description "Emacs auto-complete backend for geiser" :type github :pkgname "xiaohanyu/ac-geiser" :depends
                   (auto-complete geiser)))
 (ac-nrepl status "installed" recipe
           (:name ac-nrepl :description "Nrepl completion source for Emacs auto-complete package" :type github :pkgname "clojure-emacs/ac-nrepl" :depends
                  (auto-complete cider)
                  :features ac-nrepl))
 (ac-slime status "installed" recipe
           (:name ac-slime :website "https://github.com/purcell/ac-slime" :description "Emacs auto-complete plugin for Slime symbols" :type github :depends
                  (slime)
                  :pkgname "purcell/ac-slime"))
 (ace-jump-mode status "installed" recipe
                (:name ace-jump-mode :website "https://github.com/winterTTr/ace-jump-mode/wiki" :description "A quick cursor location minor mode for emacs." :type github :pkgname "winterTTr/ace-jump-mode" :prepare
                       (eval-after-load "ace-jump-mode"
                         '(ace-jump-mode-enable-mark-sync))))
 (ag status "installed" recipe
     (:name ag :description "A simple ag frontend, loosely based on ack-and-half.el." :type github :pkgname "Wilfred/ag.el" :depends
            (dash s)))
 (apel status "installed" recipe
       (:name apel :website "http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/APEL/" :description "APEL (A Portable Emacs Library) is a library to support to write portable Emacs Lisp programs." :type github :pkgname "wanderlust/apel" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (split-string "-batch -q -no-site-file -l APEL-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-apel" "install-apel"))
              :load-path
              ("site-lisp/apel" "site-lisp/emu")))
 (auctex status "installed" recipe
         (:name auctex :website "http://www.gnu.org/software/auctex/" :description "AUCTeX is an extensible package for writing and formatting TeX files in GNU Emacs and XEmacs. It supports many different TeX macro packages, including AMS-TeX, LaTeX, Texinfo, ConTeXt, and docTeX (dtx files)." :type git :module "auctex" :url "git://git.savannah.gnu.org/auctex.git" :build
                `(("./autogen.sh")
                  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
                  ("make"))
                :build/darwin
                `(("./autogen.sh")
                  ("./configure" "--without-texmf-dir" "--with-packagelispdir=$(pwd)" "--with-packagedatadir=$(pwd)" "--with-lispdir=$(pwd)" ,(concat "--with-emacs=" el-get-emacs))
                  ("make"))
                :load-path
                (".")
                :load
                ("tex-site.el" "preview-latex.el")
                :info "doc"))
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (auto-complete-clang status "installed" recipe
                      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (auto-indent-mode status "installed" recipe
                   (:name auto-indent-mode :description "Automatically Indent when pressing return, pasting, and other customizable features." :type github :pkgname "mlf176f2/auto-indent-mode.el" :prepare
                          (progn
                            (autoload 'auto-indent-delete-char "auto-indent-mode" "" t)
                            (autoload 'auto-indent-kill-line "auto-indent-mode" "" t))))
 (camcorder status "installed" recipe
            (:name camcorder :website "https://github.com/Bruce-Connor/camcorder.el" :description "Tool for capturing screencasts directly from Emacs." :type github :pkgname "Bruce-Connor/camcorder.el" :depends
                   (cl-lib names)))
 (cdlatex status "installed" recipe
          (:name cdlatex :auto-generated t :type elpa :description "Fast input methods for LaTeX environments and math" :repo nil))
 (cdlatex-mode status "installed" recipe
               (:name cdlatex-mode :description "a minor mode which re-implements many features also found in the AUCTeX LaTeX mode." :type http :url "https://staff.fnwi.uva.nl/c.dominik/Tools/cdlatex/cdlatex.el"))
 (cider status "installed" recipe
        (:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
               (dash clojure-mode pkg-info)))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
               (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (cmake-mode status "installed" recipe
             (:name cmake-mode :website "http://www.itk.org/Wiki/CMake/Editors/Emacs" :description "Provides syntax highlighting and indentation for CMakeLists.txt and *.cmake source files." :type http :url "http://cmake.org/gitweb?p=cmake.git;a=blob_plain;hb=master;f=Auxiliary/cmake-mode.el"))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (color-theme-sanityinc-solarized status "installed" recipe
                                  (:name color-theme-sanityinc-solarized :auto-generated t :type elpa :description "A version of Ethan Schoonover's Solarized themes" :repo nil))
 (color-theme-sanityinc-tomorrow status "installed" recipe
                                 (:name color-theme-sanityinc-tomorrow :auto-generated t :type elpa :description "A version of Chris Kempson's various Tomorrow themes" :repo nil))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (csv-mode status "installed" recipe
           (:name csv-mode :website "http://www.emacswiki.org/emacs/CsvMode" :description "Major mode for editing CSV (comma separated value) files." :type elpa :prepare
                  (autoload 'csv-mode "csv-mode" nil t)))
 (ctable status "installed" recipe
         (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (cyberpunk-theme status "installed" recipe
                  (:name cyberpunk-theme :auto-generated t :type elpa :description "Cyberpunk Color Theme" :repo nil))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (dash-at-point status "installed" recipe
                (:name dash-at-point :description "Search the word at point with Dash. Dash is an API Documentation Browser and Code Snippet Manager. dash-at-point make it easy to search the word at point with Dash." :type github :pkgname "stanaka/dash-at-point"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp." :type github :pkgname "kiwanami/emacs-deferred"))
 (diminish status "installed" recipe
           (:name diminish :description "An Emacs package that diminishes the amount of space taken on the mode line by the names of minor modes." :type http :url "http://www.eskimo.com/~seldon/diminish.el" :features diminish))
 (dockerfile-mode status "installed" recipe
                  (:name dockerfile-mode :description "An emacs mode for handling Dockerfiles." :type github :pkgname "spotify/dockerfile-mode" :prepare
                         (progn
                           (add-to-list 'auto-mode-alist
                                        '("Dockerfile\\'" . dockerfile-mode)))))
 (eclim status "installed" recipe
        (:name eclim :website "https://github.com/senny/emacs-eclim/" :description "This project brings some of the great eclipse features to emacs developers." :type github :pkgname "senny/emacs-eclim" :features eclim :depends
               (s)
               :post-init
               (progn
                 (setq eclim-auto-save t)
                 (global-eclim-mode -1))))
 (editorconfig status "installed" recipe
               (:name editorconfig :website "http://editorconfig.org" :description "Define and maintain consistent coding styles" :type github :branch "master" :pkgname "editorconfig/editorconfig-emacs"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (elisp-slime-nav status "installed" recipe
                  (:name elisp-slime-nav :type github :pkgname "purcell/elisp-slime-nav" :description "Slime-style navigation for Emacs Lisp" :prepare
                         (add-hook 'emacs-lisp-mode-hook 'turn-on-elisp-slime-nav-mode)))
 (elpy status "installed" recipe
       (:name elpy :website "https://github.com/jorgenschaefer/elpy" :description "Emacs Python Development Environment" :type github :pkgname "jorgenschaefer/elpy" :checkout "v1.3.0" :shallow nil :post-init
              (el-get-envpath-prepend "PYTHONPATH" default-directory)
              :depends
              (auto-complete yasnippet highlight-indentation find-file-in-project idomenu iedit nose jedi rope pyvenv)))
 (emacs-neotree status "installed" recipe
                (:name emacs-neotree :description "A emacs tree plugin like NerdTree for Vim." :website "https://github.com/jaypei/emacs-neotree" :type github :pkgname "jaypei/emacs-neotree"))
 (emacs-racer status "installed" recipe
              (:name emacs-racer :description "Racer support for Emacs" :type github :depends
                     (rust-mode company-mode)
                     :pkgname "racer-rust/emacs-racer"))
 (emacs-w3m status "installed" recipe
            (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :website "http://emacs-w3m.namazu.org/" :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
                   `("autoconf"
                     ("./configure" ,(format "--with-emacs=%s" el-get-emacs))
                     "make")
                   :build/windows-nt
                   (("sh" "./autogen.sh")
                    ("sh" "./configure")
                    "make")
                   :info "doc"))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
             (deferred ctable)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (evil status "installed" recipe
       (:name evil :website "http://gitorious.org/evil/pages/Home" :description "Evil is an extensible vi layer for Emacs. It\n       emulates the main features of Vim, and provides facilities\n       for writing custom extensions." :type git :url "git://gitorious.org/evil/evil.git" :features evil :depends
              (undo-tree goto-chg)
              :build
              (("make" "all" "info"))
              :build/berkeley-unix
              (("gmake" "all" "info"))
              :build/darwin
              `(("make" ,(format "EMACS=%s" el-get-emacs)
                 "all" "info"))
              :info "doc"))
 (evil-leader status "installed" recipe
              (:name evil-leader :website "http://github.com/cofi/evil-leader" :description "Add <leader> shortcuts to Evil, the extensible vim\n       emulation layer" :type github :pkgname "cofi/evil-leader" :features evil-leader :depends evil))
 (evil-surround status "installed" recipe
                (:name evil-surround :website "http://github.com/timcharper/evil-surround" :description "Emulate Tim Pope's surround.vim in evil, the extensible vim\n       emulation layer for emacs" :type github :pkgname "timcharper/evil-surround" :features evil-surround :post-init
                       (global-evil-surround-mode 1)
                       :depends evil))
 (exec-path-from-shell status "installed" recipe
                       (:name exec-path-from-shell :website "https://github.com/purcell/exec-path-from-shell" :description "Emacs plugin for dynamic PATH loading" :type github :pkgname "purcell/exec-path-from-shell"))
 (expand-region status "installed" recipe
                (:name expand-region :type github :pkgname "magnars/expand-region.el" :description "Expand region increases the selected region by semantic units. Just keep pressing the key until it selects what you want." :website "https://github.com/magnars/expand-region.el#readme"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
           (s dash)
           :type github :pkgname "rejeep/f.el"))
 (fill-column-indicator status "installed" recipe
                        (:name fill-column-indicator :type github :website "https://github.com/alpaker/Fill-Column-Indicator#readme" :description "An Emacs minor mode that graphically indicates the fill column." :pkgname "alpaker/Fill-Column-Indicator"))
 (find-file-in-project status "installed" recipe
                       (:name find-file-in-project :type github :pkgname "technomancy/find-file-in-project" :description "Quick access to project files in Emacs"))
 (flim status "installed" recipe
       (:name flim :description "A library to provide basic features about message representation or encoding" :depends apel :type github :branch "flim-1_14-wl" :pkgname "wanderlust/flim" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (mapcar
                        (lambda
                          (pkg)
                          (mapcar
                           (lambda
                             (d)
                             `("-L" ,d))
                           (el-get-load-path pkg)))
                        '("apel"))
                       (split-string "-batch -q -no-site-file -l FLIM-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-flim" "install-flim"))
              :load-path
              ("site-lisp/flim")))
 (flycheck status "installed" recipe
           (:name flycheck :type github :pkgname "flycheck/flycheck" :description "On-the-fly syntax checking extension" :build
                  '(("makeinfo" "-o" "doc/flycheck.info" "doc/flycheck.texi"))
                  :info "./doc" :depends
                  (dash pkg-info let-alist cl-lib)))
 (flymake status "installed" recipe
          (:name flymake :description "Continuous syntax checking for Emacs." :type github :pkgname "illusori/emacs-flymake"))
 (flymake-easy status "installed" recipe
               (:name flymake-easy :type github :description "Helpers for easily building flymake checkers" :pkgname "purcell/flymake-easy" :website "http://github.com/purcell/flymake-easy"))
 (flymake-ruby status "installed" recipe
               (:name flymake-ruby :type github :description "A flymake handler for ruby-mode files" :pkgname "purcell/flymake-ruby" :website "http://github.com/purcell/flymake-ruby" :depends
                      (flymake-easy)
                      :features flymake-ruby :post-init
                      (add-hook 'ruby-mode-hook 'flymake-ruby-load)))
 (flymake-rust status "installed" recipe
               (:name flymake-rust :auto-generated t :type elpa :description "A flymake handler for rust-mode files" :repo nil :depends
                      (flymake-easy)))
 (fringe-helper status "installed" recipe
                (:name fringe-helper :description "Helper functions for fringe bitmaps." :type github :pkgname "nschum/fringe-helper.el"))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (geiser status "installed" recipe
         (:name geiser :website "http://www.nongnu.org/geiser/" :description "Geiser is a collection of Emacs major and minor modes that conspire with one or more Scheme interpreters to keep the Lisp Machine Spirit alive. It draws inspiration (and a bit more) from environments such as Common Lisp's Slime, Factor's FUEL, Squeak or Emacs itself, and does its best to make Scheme hacking inside Emacs (even more) fun." :type git :url "git://git.sv.gnu.org/geiser.git" :load-path
                ("./elisp")
                :build
                `("./autogen.sh" "./configure"
                  ("make" ,(format "EMACS=%s" el-get-emacs))
                  ("make" ,(format "EMACS=%s" el-get-emacs)
                   "info-recursive"))
                :build/windows-nt
                `(("sh" "./autogen.sh")
                  ("sh" "./configure")
                  "make" ,(concat "cd doc & " el-get-install-info " --dir-file=./dir *.info"))
                :info "doc" :autoloads nil :features geiser-load))
 (git-gutter status "installed" recipe
             (:name git-gutter :description "Emacs port of GitGutter Sublime Text 2 Plugin" :website "https://github.com/syohex/emacs-git-gutter" :type github :pkgname "syohex/emacs-git-gutter"))
 (git-gutter-fringe status "installed" recipe
                    (:name git-gutter-fringe :type github :pkgname "syohex/emacs-git-gutter-fringe" :description "Fringe version of git-gutter.el" :depends
                           (git-gutter fringe-helper)))
 (git-modes status "installed" recipe
            (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (goto-chg status "installed" recipe
           (:name goto-chg :description "Goto the point of the most recent edit in the buffer." :type emacswiki :features goto-chg))
 (hackernews status "installed" recipe
             (:name hackernews :auto-generated t :type elpa :description "Access the hackernews aggregator from Emacs" :repo nil :depends
                    (json)))
 (haskell-mode status "installed" recipe
               (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :info "." :build
                      `(("make" ,(format "EMACS=%s" el-get-emacs)
                         "all"))
                      :post-init
                      (progn
                        (require 'haskell-mode-autoloads)
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
                        (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (helm status "installed" recipe
       (:name helm :after
              (progn
                (ome-helm-setup))
              :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
              ("make")
              :build/darwin
              `(("make" ,(format "EMACS_COMMAND=%s" el-get-emacs)))
              :build/windows-nt
              (let
                  ((generated-autoload-file
                    (expand-file-name "helm-autoloads.el"))
                   \
                   (backup-inhibited t))
              (update-directory-autoloads default-directory)
              nil)))
(helm-ag status "installed" recipe
(:name helm-ag :description "The silver search with helm interface." :type github :pkgname "syohex/emacs-helm-ag" :depends
(helm)))
(helm-dash status "installed" recipe
(:name "helm-dash" :description "Browse Dash docsets inside emacs" :depends helm :type github :pkgname "areina/helm-dash"))
(helm-descbinds status "installed" recipe
(:name helm-descbinds :type github :pkgname "emacs-helm/helm-descbinds" :description "Yet Another `describe-bindings' with `helm'." :depends
(helm)
:prepare
(progn
(autoload 'helm-descbinds-install "helm-descbinds"))))
(helm-project status "installed" recipe
(:name helm-project :type github :pkgname "shishi/helm-project" :description "finding any resource of a project with helm" :depends
(helm)))
(helm-projectile status "installed" recipe
(:name helm-projectile :auto-generated t :type elpa :description "Helm integration for Projectile" :repo nil :depends
(helm projectile cl-lib)))
(highlight-indentation status "installed" recipe
(:name highlight-indentation :description "Function for highlighting indentation" :type git :url "https://github.com/antonj/Highlight-Indentation-for-Emacs"))
(htmlize status "installed" recipe
(:name htmlize :website "http://www.emacswiki.org/emacs/Htmlize" :description "Convert buffer text and decorations to HTML." :type http :url "http://fly.srk.fer.hr/~hniksic/emacs/htmlize.el.cgi" :localname "htmlize.el"))
(idomenu status "installed" recipe
(:name idomenu :type emacswiki :description "imenu tag selection a la ido" :load-path "."))
(iedit status "installed" recipe
(:name iedit :description "Edit multiple regions with the same content simultaneously." :type emacswiki :features iedit))
(indent-guide status "installed" recipe
(:name indent-guide :description "show vertical lines to guide indentation." :website "https://github.com/zk-phi/indent-guide" :type github :pkgname "zk-phi/indent-guide"))
(inf-ruby status "installed" recipe
(:name inf-ruby :description "Inferior Ruby Mode - ruby process in a buffer." :type github :pkgname "nonsequitur/inf-ruby"))
(jedi status "installed" recipe
(:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :submodule nil :depends
(epc auto-complete python-environment)))
(js2-highlight-vars status "installed" recipe
(:name js2-highlight-vars :description "Variable occurrencies (of the variable under cursor) highlighting for js2 mode" :type http :url "http://mihai.bazon.net/projects/editing-javascript-with-emacs-js2-mode/js2-highlight-vars-mode/js2-highlight-vars.el" :depends js2-mode))
(js2-mode status "installed" recipe
(:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
(autoload 'js2-mode "js2-mode" nil t)))
(json status "installed" recipe
(:name json :description "JavaScript Object Notation parser / generator" :type http :builtin "23" :url "http://edward.oconnor.cx/elisp/json.el"))
(key-chord status "installed" recipe
(:name key-chord :description "Map pairs of simultaneously pressed keys to commands." :type emacswiki :features "key-chord"))
(let-alist status "installed" recipe
(:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.1" :type http :url "http://git.savannah.gnu.org/cgit/emacs.git/plain/lisp/let-alist.el"))
(linum-relative status "installed" recipe
(:name linum-relative :type emacswiki :description "Display relative line number in the left margin" :features linum-relative))
(magit status "installed" recipe
(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
(cl-lib git-modes)
:info "." :build
(if
(version<= "24.3" emacs-version)
`(("make" ,(format "EMACS=%s" el-get-emacs)
"all"))
`(("make" ,(format "EMACS=%s" el-get-emacs)
"docs")))
:build/berkeley-unix
(("touch" "`find . -name Makefile`")
("gmake"))))
(markdown-mode status "installed" recipe
(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
(add-to-list 'auto-mode-alist
'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
(names status "installed" recipe
(:name names :description "A Namespace implementation for Emacs-Lisp" :website "https://github.com/Bruce-Connor/names" :type github :depends cl-lib :pkgname "Bruce-Connor/names"))
(nose status "installed" recipe
(:type github :pkgname "emacsmirror/nose" :name nose :website "https://bitbucket.org/durin42/nosemacs" :description "Emacs extension to provide easy nosetest integration." :type emacsmirror :pkgname nose))
(org-mode status "installed" recipe
(:name org-mode :website "http://orgmode.org/" :description "Org-mode is for keeping notes, maintaining ToDo lists, doing project planning, and authoring with a fast and effective plain-text system." :type git :url "git://orgmode.org/org-mode.git" :info "doc" :build/berkeley-unix `,(mapcar
(lambda
(target)
(list "gmake" target
(concat "EMACS="
(shell-quote-argument el-get-emacs))))
'("oldorg"))
:build `,(mapcar
(lambda
(target)
(list "make" target
(concat "EMACS="
(shell-quote-argument el-get-emacs))))
'("oldorg"))
:load-path
("." "contrib/lisp" "lisp")
:load
("lisp/org-loaddefs.el")))
(package status "installed" recipe
(:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
(progn
(let
((old-package-user-dir
(expand-file-name
(convert-standard-filename
(concat
(file-name-as-directory default-directory)
"elpa")))))
(when
(file-directory-p old-package-user-dir)
(add-to-list 'package-directory-list old-package-user-dir)))
(setq package-archives
(bound-and-true-p package-archives))
(mapc
(lambda
(pa)
(add-to-list 'package-archives pa 'append))
'(("ELPA" . "http://tromey.com/elpa/")
("melpa" . "http://melpa.milkbox.net/packages/")
("gnu" . "http://elpa.gnu.org/packages/")
("marmalade" . "http://marmalade-repo.org/packages/")
("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
(pkg-info status "installed" recipe
(:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
(dash epl)))
(pomodoro status "installed" recipe
(:name pomodoro :type http :description "Pomodoro Technique in Emacs." :url "https://raw.github.com/syohex/emacs-utils/master/pomodoro.el" :autoloads t))
(popup status "installed" recipe
(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
(projectile status "installed" recipe
(:name projectile :description "Project navigation and management library for Emacs." :type github :pkgname "bbatsov/projectile" :depends
(dash s pkg-info)))
(puppet-mode status "installed" recipe
(:name puppet-mode :description "A simple mode for editing puppet manifests" :type github :pkgname "lunaryorn/puppet-mode" :website "https://github.com/lunaryorn/puppet-mode" :prepare
(progn
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
(add-to-list 'auto-mode-alist
'("\\.pp$" . puppet-mode)))))
(python-environment status "installed" recipe
(:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
(deferred)))
(pyvenv status "installed" recipe
(:name pyvenv :website "https://github.com/jorgenschaefer/pyvenv" :description "Python virtual environment interface for Emacs" :type github :pkgname "jorgenschaefer/pyvenv" :post-init
(el-get-envpath-prepend "PYTHONPATH" default-directory)))
(quack status "installed" recipe
(:name quack :description "Enhanced support for editing and running Scheme code." :type http :url "http://www.neilvandyke.org/quack/quack.el" :post-init
(eval-after-load 'scheme
'(require 'quack))))
(queue status "installed" recipe
(:name queue :description "Queue data structure" :type elpa))
(quickrun status "installed" recipe
(:name quickrun :description "Run commands quickly" :website "https://github.com/syohex/emacs-quickrun" :type github :pkgname "syohex/emacs-quickrun" :features "quickrun"))
(racket-mode status "installed" recipe
(:name racket-mode :auto-generated t :type elpa :description "Major mode for Racket language." :repo nil))
(rainbow-delimiters status "installed" recipe
(:name rainbow-delimiters :website "https://github.com/jlr/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "jlr/rainbow-delimiters"))
(rainbow-mode status "installed" recipe
(:name rainbow-mode :description "Colorize color names in buffers" :type elpa :prepare
(autoload 'rainbow-turn-on "rainbow-mode")))
(rcodetools status "installed" recipe
(:name rcodetools :description "rcodetools is a collection of Ruby code manipulation tools." :type github :pkgname "tnoda/rcodetools"))
(robe-mode status "installed" recipe
(:name robe-mode :type github :description "Code navigation, documentation lookup and completion for Ruby" :pkgname "dgutov/robe" :website "https://github.com/dgutov/robe" :depends
(inf-ruby)
:post-init
(add-hook 'ruby-mode-hook 'robe-mode)))
(rope status "installed" recipe
(:name rope :description "A python refactoring library" :post-init
(el-get-envpath-prepend "PYTHONPATH" default-directory)
:type git :url "https://github.com/python-rope/rope.git"))
(rust-mode status "installed" recipe
(:name rust-mode :type github :pkgname "rust-lang/rust-mode" :description "Emacs mode for Rust"))
(rusti status "installed" recipe
(:name rusti :description "Rust interactive mode" :type github :pkgname "ruediger/rusti.el"))
(rvm status "installed" recipe
(:name rvm :description "Emacs integration for rvm" :type github :features rvm :pkgname "senny/rvm.el" :compile "rvm.el" :post-init
(rvm-use-default)))
(s status "installed" recipe
(:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
(semi status "installed" recipe
(:name semi :description "SEMI is a library to provide MIME feature for GNU Emacs." :depends flim :type github :branch "semi-1_14-wl" :pkgname "wanderlust/semi" :build
(mapcar
(lambda
(target)
(list el-get-emacs
(mapcar
(lambda
(pkg)
(mapcar
(lambda
(d)
`("-L" ,d))
(el-get-load-path pkg)))
'("apel" "flim"))
(split-string "-batch -q -no-site-file -l SEMI-MK -f")
target "prefix" "site-lisp" "site-lisp"))
'("compile-semi" "install-semi"))
:load-path
("site-lisp/semi/")))
(seq status "installed" recipe
(:name seq :description "Sequence manipulation library for Emacs" :builtin "25" :type github :pkgname "NicolasPetton/seq.el"))
(simple-httpd status "installed" recipe
(:name simple-httpd :description "A simple Emacs web server" :type github :pkgname "skeeto/emacs-http-server"))
(skewer-mode status "installed" recipe
(:name skewer-mode :description "Provides live interaction with JavaScript, CSS, and HTML in a web browser" :type github :pkgname "skeeto/skewer-mode" :depends
(js2-mode simple-httpd)
:features skewer-setup :post-init
(skewer-setup)))
(slime status "installed" recipe
(:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :autoloads "slime-autoloads" :info "doc" :pkgname "slime/slime" :depends cl-lib :load-path
("." "contrib")
:build
'(("sed" "-i" "s/@itemx INIT-FUNCTION/@item INIT-FUNCTION/" "doc/slime.texi")
("make" "-C" "doc" "slime.info"))
:build/darwin
'(("make" "-C" "doc" "slime.info"))
:build/berkeley-unix
'(("gmake" "-C" "doc" "slime.info"))
:post-init
(slime-setup)))
(smartparens status "installed" recipe
(:name smartparens :description "Autoinsert pairs of defined brackets and wrap regions" :type github :pkgname "Fuco1/smartparens" :depends dash))
(sml-mode status "installed" recipe
(:name sml-mode :after
(progn
(ome-sml-mode-setup))
:description "SML-mode is a major Emacs mode for editing Standard ML source code." :type http-tar :options
("xzf")
:url "http://www.iro.umontreal.ca/~monnier/elisp/sml-mode.tar.gz" :build `,(mapcar
(lambda
(target)
(list "make" target
(format "EMACS=%s" el-get-emacs)))
'("clean" "default"))
:load-path
(".")
:load
("sml-mode-startup.el")))
(smooth-scrolling status "installed" recipe
(:name smooth-scrolling :description "Make emacs scroll smoothly, keeping the point away from the top and bottom of the current buffer's window in order to keep lines of context around the point visible as much as possible, whilst avoiding sudden scroll jumps which are visually confusing." :type github :pkgname "aspiers/smooth-scrolling" :features smooth-scrolling))
(solarized-emacs status "installed" recipe
(:name solarized-emacs :description "Solarized for Emacs is an Emacs port of the Solarized theme for vim, developed by Ethan Schoonover." :website "https://github.com/bbatsov/solarized-emacs" :minimum-emacs-version "24" :type github :pkgname "bbatsov/solarized-emacs" :depends dash :prepare
(add-to-list 'custom-theme-load-path default-directory)))
(solarized-theme status "installed" recipe
(:name solarized-theme :type github :pkgname "sellout/emacs-color-theme-solarized" :description "Solarized themes for Emacs" :prepare
(add-to-list 'custom-theme-load-path default-directory)))
(spinner status "installed" recipe
(:name spinner :description "Emacs mode-line spinner for operations in progress." :type github :pkgname "Bruce-Connor/spinner.el"))
(swift-mode status "installed" recipe
(:name swift-mode :description "Major-mode for Apple's Swift programming language" :type github :pkgname "chrisbarrett/swift-mode"))
(tabbar status "installed" recipe
(:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
(undo-tree status "installed" recipe
(:name undo-tree :description "Treat undo history as a tree" :website "http://www.dr-qubit.org/emacs.php" :type git :url "http://www.dr-qubit.org/git/undo-tree.git/"))
(wanderlust status "installed" recipe
(:name wanderlust :description "Wanderlust bootstrap." :depends semi :type github :pkgname "wanderlust/wanderlust" :build
(mapcar
(lambda
(target-and-dirs)
(list el-get-emacs
(mapcar
(lambda
(pkg)
(mapcar
(lambda
(d)
`("-L" ,d))
(el-get-load-path pkg)))
(append
'("apel" "flim" "semi")
(when
(el-get-package-exists-p "bbdb")
(list "bbdb"))))
"--eval"
(el-get-print-to-string
'(progn
(setq wl-install-utils t)
(setq wl-info-lang "en")
(setq wl-news-lang "en")))
(split-string "-batch -q -no-site-file -l WL-MK -f")
target-and-dirs))
'(("wl-texinfo-format" "doc")
("compile-wl-package" "site-lisp" "icons")
("install-wl-package" "site-lisp" "icons")))
:info "doc/wl.info" :load-path
("site-lisp/wl" "utils")
:post-init
(progn
(setq wl-icon-directory
(expand-file-name "etc/icons" default-directory)))))
(web-mode status "installed" recipe
(:name web-mode :description "emacs major mode for editing PHP/JSP/ASP HTML templates (with embedded CSS and JS blocks)" :type github :pkgname "fxbois/web-mode"))
(wikipedia-mode status "installed" recipe
(:name wikipedia-mode :description "Mode for editing Wikipedia articles off-line" :type emacswiki :features wikipedia-mode :prepare
(add-to-list 'auto-mode-alist
'("\\.wiki\\.txt\\'" . wikipedia-mode))))
(window-numbering status "installed" recipe
(:name window-numbering :website "http://nschum.de/src/emacs/window-numbering-mode/" :description "Assigns numbers to Emacs windows to allow easy window navigation." :type github :pkgname "nschum/window-numbering.el"))
(xcscope status "installed" recipe
(:name xcscope :description "Cscope interface for (X)Emacs" :type github :pkgname "dkogan/xcscope.el" :prepare
(progn
(add-hook 'c-mode-hook #'cscope-minor-mode)
(add-hook 'c++-mode-hook #'cscope-minor-mode)
(add-hook 'dired-mode-hook #'cscope-minor-mode))))
(yafolding status "installed" recipe
(:name yafolding :auto-generated t :type elpa :description "Yet another folding extension for Emacs" :repo nil))
(yaml-mode status "installed" recipe
(:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
(yard-mode status "installed" recipe
(:name yard-mode :description "Yet another Ruby Documentation mode" :type github :pkgname "pd/yard-mode.el"))
(yascroll status "installed" recipe
(:name yascroll :description "Yet Another Scroll Bar Mode" :website "https://github.com/m2ym/yascroll-el" :type github :pkgname "m2ym/yascroll-el" :features "yascroll"))
(yasnippet status "installed" recipe
(:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
(("git" "submodule" "update" "--init" "--" "snippets")))))
