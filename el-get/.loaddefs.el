;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "ac-geiser/ac-geiser" "ac-geiser/ac-geiser.el"
;;;;;;  (21647 13248 0 0))
;;; Generated autoloads from ac-geiser/ac-geiser.el

(defvar ac-source-geiser '((candidates . ac-source-geiser-candidates) (symbol . "g") (document . ac-geiser-documentation)) "\
Source for geiser completion")

(autoload 'ac-geiser-setup "ac-geiser/ac-geiser" "\
Add the geiser completion source to the front of `ac-sources'.
This affects only the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ac-nrepl/ac-nrepl" "ac-nrepl/ac-nrepl.el"
;;;;;;  (21757 49612 0 0))
;;; Generated autoloads from ac-nrepl/ac-nrepl.el

(defface ac-nrepl-candidate-face '((t (:inherit ac-candidate-face))) "\
Face for nrepl candidates." :group (quote auto-complete))

(defface ac-nrepl-selection-face '((t (:inherit ac-selection-face))) "\
Face for the nrepl selected candidate." :group (quote auto-complete))

(defconst ac-nrepl-source-defaults '((available . ac-nrepl-available-p) (candidate-face . ac-nrepl-candidate-face) (selection-face . ac-nrepl-selection-face) (prefix . ac-nrepl-symbol-start-pos) (document . ac-nrepl-documentation)) "\
Defaults common to the various completion sources.")

(defvar ac-source-nrepl-ns (append '((candidates . ac-nrepl-candidates-ns) (symbol . "n")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl ns completion.")

(defvar ac-source-nrepl-vars (append '((candidates . ac-nrepl-candidates-vars) (symbol . "v")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl var completion.")

(defvar ac-source-nrepl-ns-classes (append '((candidates . ac-nrepl-candidates-ns-classes) (symbol . "c")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl ns-specific class completion.")

(defvar ac-source-nrepl-all-classes (append '((candidates . ac-nrepl-candidates-all-classes) (symbol . "c")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl all class completion.")

(defvar ac-source-nrepl-java-methods (append '((candidates . ac-nrepl-candidates-java-methods) (symbol . "m")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl java method completion.")

(defvar ac-source-nrepl-static-methods (append '((candidates . ac-nrepl-candidates-static-methods) (symbol . "s")) ac-nrepl-source-defaults) "\
Auto-complete source for nrepl java static method completion.")

(autoload 'ac-nrepl-setup "ac-nrepl/ac-nrepl" "\
Add the nrepl completion source to the front of `ac-sources'.
This affects only the current buffer.

\(fn)" t nil)

(autoload 'ac-nrepl-popup-doc "ac-nrepl/ac-nrepl" "\
A popup alternative to `nrepl-doc'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ac-slime/ac-slime" "ac-slime/ac-slime.el"
;;;;;;  (22072 4874 0 0))
;;; Generated autoloads from ac-slime/ac-slime.el

(defface ac-slime-menu-face '((t (:inherit ac-candidate-face))) "\
Face for slime candidate menu." :group (quote auto-complete))

(defface ac-slime-selection-face '((t (:inherit ac-selection-face))) "\
Face for the slime selected candidate." :group (quote auto-complete))

(defvar ac-source-slime-fuzzy '((init . ac-slime-init) (candidates . ac-source-slime-fuzzy-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (match lambda (prefix candidates) candidates) (document . ac-slime-documentation)) "\
Source for fuzzy slime completion.")

(defvar ac-source-slime-simple '((init . ac-slime-init) (candidates . ac-source-slime-simple-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (document . ac-slime-documentation) (match . ac-source-slime-case-correcting-completions)) "\
Source for slime completion.")

(autoload 'set-up-slime-ac "ac-slime/ac-slime" "\
Add an optionally FUZZY slime completion source to `ac-sources'.

\(fn &optional FUZZY)" t nil)

;;;***

;;;### (autoloads nil "ace-jump-mode/ace-jump-mode" "ace-jump-mode/ace-jump-mode.el"
;;;;;;  (21520 48361 0 0))
;;; Generated autoloads from ace-jump-mode/ace-jump-mode.el

(autoload 'ace-jump-mode-pop-mark "ace-jump-mode/ace-jump-mode" "\
Pop up a postion from `ace-jump-mode-mark-ring', and jump back to that position

\(fn)" t nil)

(autoload 'ace-jump-char-mode "ace-jump-mode/ace-jump-mode" "\
AceJump char mode

\(fn QUERY-CHAR)" t nil)

(autoload 'ace-jump-word-mode "ace-jump-mode/ace-jump-mode" "\
AceJump word mode.
You can set `ace-jump-word-mode-use-query-char' to nil to prevent
asking for a head char, that will mark all the word in current
buffer.

\(fn HEAD-CHAR)" t nil)

(autoload 'ace-jump-line-mode "ace-jump-mode/ace-jump-mode" "\
AceJump line mode.
Marked each no empty line and move there

\(fn)" t nil)

(autoload 'ace-jump-mode "ace-jump-mode/ace-jump-mode" "\
AceJump mode is a minor mode for you to quick jump to a
position in the curret view.
   There is three submode now:
     `ace-jump-char-mode'
     `ace-jump-word-mode'
     `ace-jump-line-mode'

You can specify the sequence about which mode should enter
by customize `ace-jump-mode-submode-list'.

If you do not want to query char for word mode, you can change
`ace-jump-word-mode-use-query-char' to nil.

If you don't like the default move keys, you can change it by
setting `ace-jump-mode-move-keys'.

You can constrol whether use the case sensitive via
`ace-jump-mode-case-fold'.

\(fn &optional PREFIX)" t nil)

;;;***

;;;### (autoloads nil "ag/ag" "ag/ag.el" (22072 4874 0 0))
;;; Generated autoloads from ag/ag.el

(autoload 'ag "ag/ag" "\
Search using ag in a given DIRECTORY for a given search STRING,
with STRING defaulting to the symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-files "ag/ag" "\
Search using ag in a given DIRECTORY for a given search STRING,
limited to files that match FILE-TYPE. STRING defaults to
the symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE DIRECTORY)" t nil)

(autoload 'ag-regexp "ag/ag" "\
Search using ag in a given directory for a given regexp.
The regexp should be in PCRE syntax, not Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING DIRECTORY)" t nil)

(autoload 'ag-project "ag/ag" "\
Guess the root of the current project and search it with ag
for the given string.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING)" t nil)

(autoload 'ag-project-files "ag/ag" "\
Search using ag for a given search STRING,
limited to files that match FILE-TYPE. STRING defaults to the
symbol under point.

If called with a prefix, prompts for flags to pass to ag.

\(fn STRING FILE-TYPE)" t nil)

(autoload 'ag-project-regexp "ag/ag" "\
Guess the root of the current project and search it with ag
for the given regexp. The regexp should be in PCRE syntax, not
Emacs regexp syntax.

If called with a prefix, prompts for flags to pass to ag.

\(fn REGEXP)" t nil)

(defalias 'ag-project-at-point 'ag-project)

(defalias 'ag-regexp-project-at-point 'ag-project-regexp)

(autoload 'ag-dired "ag/ag" "\
Recursively find files in DIR matching PATTERN.

The PATTERN is matched against the full path to the file, not
only against the file name.

The results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `ag-dired-regexp'.

\(fn DIR PATTERN)" t nil)

(autoload 'ag-dired-regexp "ag/ag" "\
Recursively find files in DIR matching REGEXP.
REGEXP should be in PCRE syntax, not Emacs regexp syntax.

The REGEXP is matched against the full path to the file, not
only against the file name.

Results are presented as a `dired-mode' buffer with
`default-directory' being DIR.

See also `find-dired'.

\(fn DIR REGEXP)" t nil)

(autoload 'ag-project-dired "ag/ag" "\
Recursively find files in current project matching PATTERN.

See also `ag-dired'.

\(fn PATTERN)" t nil)

(autoload 'ag-project-dired-regexp "ag/ag" "\
Recursively find files in current project matching REGEXP.

See also `ag-dired-regexp'.

\(fn REGEXP)" t nil)

(autoload 'ag-kill-buffers "ag/ag" "\
Kill all `ag-mode' buffers.

\(fn)" t nil)

(autoload 'ag-kill-other-buffers "ag/ag" "\
Kill all `ag-mode' buffers other than the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "apel/site-lisp/apel/alist" "apel/site-lisp/apel/alist.el"
;;;;;;  (21723 27612 0 0))
;;; Generated autoloads from apel/site-lisp/apel/alist.el

(autoload 'put-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in ALIST to VALUE and return ALIST.
If there is no such element, create a new pair (KEY . VALUE) and
return a new alist whose car is the new pair and cdr is ALIST.

\(fn KEY VALUE ALIST)" nil nil)

(autoload 'del-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from ALIST.
Return the modified ALIST.

\(fn KEY ALIST)" nil nil)

(autoload 'set-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in the alist bound to SYMBOL to VALUE.

\(fn SYMBOL KEY VALUE)" nil nil)

(autoload 'remove-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from the alist bound to SYMBOL.

\(fn SYMBOL KEY)" nil nil)

(autoload 'modify-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in the alist DEFAULT.
Return the modified alist.

\(fn MODIFIER DEFAULT)" nil nil)

(autoload 'set-modified-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in an alist bound to SYMBOL.
If SYMBOL is not bound, set it to nil at first.

\(fn SYMBOL MODIFIER)" nil nil)

(autoload 'vassoc "apel/site-lisp/apel/alist" "\
Search AVLIST for an element whose first element equals KEY.
AVLIST is a list of vectors.
See also `assoc'.

\(fn KEY AVLIST)" nil nil)

;;;***

;;;### (autoloads nil "apel/site-lisp/apel/path-util" "apel/site-lisp/apel/path-util.el"
;;;;;;  (21723 27612 0 0))
;;; Generated autoloads from apel/site-lisp/apel/path-util.el

(autoload 'add-path "apel/site-lisp/apel/path-util" "\
Add PATH to `load-path' if it exists under `default-load-path'
directories and it does not exist in `load-path'.

You can use following PATH styles:
	load-path relative: \"PATH/\"
			(it is searched from `default-load-path')
	home directory relative: \"~/PATH/\" \"~USER/PATH/\"
	absolute path: \"/HOO/BAR/BAZ/\"

You can specify following OPTIONS:
	'all-paths	search from `load-path'
			instead of `default-load-path'
	'append		add PATH to the last of `load-path'

\(fn PATH &rest OPTIONS)" nil nil)

(autoload 'add-latest-path "apel/site-lisp/apel/path-util" "\
Add latest path matched by PATTERN to `load-path'
if it exists under `default-load-path' directories
and it does not exist in `load-path'.

If optional argument ALL-PATHS is specified, it is searched from all
of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'get-latest-path "apel/site-lisp/apel/path-util" "\
Return latest directory in default-load-path
which is matched to regexp PATTERN.
If optional argument ALL-PATHS is specified,
it is searched from all of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'file-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn FILE &optional PATHS)" nil nil)

(defvar exec-suffix-list '("") "\
*List of suffixes for executable.")

(autoload 'exec-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used.

\(fn FILE &optional PATHS SUFFIXES)" nil nil)

(autoload 'module-installed-p "apel/site-lisp/apel/path-util" "\
Return t if module is provided or exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn MODULE &optional PATHS)" nil nil)

;;;***

;;;### (autoloads nil "apel/site-lisp/emu/richtext" "apel/site-lisp/emu/richtext.el"
;;;;;;  (21723 27612 0 0))
;;; Generated autoloads from apel/site-lisp/emu/richtext.el

(autoload 'richtext-encode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

(autoload 'richtext-decode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

;;;***

;;;### (autoloads nil "auctex/bib-cite" "auctex/bib-cite.el" (21757
;;;;;;  49613 0 0))
;;; Generated autoloads from auctex/bib-cite.el

(autoload 'bib-cite-minor-mode "auctex/bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display.

\(fn ARG)" t nil)

(autoload 'turn-on-bib-cite "auctex/bib-cite" "\
Unconditionally turn on Bib Cite mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/context" "auctex/context.el" (22072
;;;;;;  4877 0 0))
;;; Generated autoloads from auctex/context.el

(defalias 'ConTeXt-mode 'context-mode)

(autoload 'context-mode "auctex/context" "\
Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of ConTeXt-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/context-en" "auctex/context-en.el"
;;;;;;  (21520 48361 0 0))
;;; Generated autoloads from auctex/context-en.el

(autoload 'context-en-mode "auctex/context-en" "\
Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/context-nl" "auctex/context-nl.el"
;;;;;;  (22072 4877 0 0))
;;; Generated autoloads from auctex/context-nl.el

(autoload 'context-nl-mode "auctex/context-nl" "\
Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/font-latex" "auctex/font-latex.el"
;;;;;;  (22072 4877 0 0))
;;; Generated autoloads from auctex/font-latex.el

(autoload 'font-latex-setup "auctex/font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/latex" "auctex/latex.el" (22072 4877
;;;;;;  0 0))
;;; Generated autoloads from auctex/latex.el

(autoload 'BibTeX-auto-store "auctex/latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

\(fn)" nil nil)

(add-to-list 'auto-mode-alist '("\\.drv\\'" . latex-mode))

(add-to-list 'auto-mode-alist '("\\.hva\\'" . latex-mode))

(autoload 'TeX-latex-mode "auctex/latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dtx\\'" . doctex-mode))

(autoload 'docTeX-mode "auctex/latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

\(fn)" t nil)

(defalias 'TeX-doctex-mode 'docTeX-mode)

;;;***

;;;### (autoloads nil "auctex/multi-prompt" "auctex/multi-prompt.el"
;;;;;;  (21757 49613 0 0))
;;; Generated autoloads from auctex/multi-prompt.el

(autoload 'multi-prompt "auctex/multi-prompt" "\
Completing prompt for a list of strings.
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

\(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)" nil nil)

(autoload 'multi-prompt-key-value "auctex/multi-prompt" "\
Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.  TABLE is an alist.  The car of each element should
be a string representing a key and the optional cdr should be a
list with strings to be used as values for the key.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

\(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

;;;***

;;;### (autoloads nil "auctex/plain-tex" "auctex/plain-tex.el" (21520
;;;;;;  48361 0 0))
;;; Generated autoloads from auctex/plain-tex.el

(autoload 'TeX-plain-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of plain-TeX-mode-hook.

\(fn)" t nil)

(autoload 'ams-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering AmS-tex-mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/preview" "auctex/preview.el" (22073
;;;;;;  7560 0 0))
;;; Generated autoloads from auctex/preview.el

(autoload 'preview-install-styles "auctex/preview" "\
Installs the TeX style files into a permanent location.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

\(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t nil)

(autoload 'LaTeX-preview-setup "auctex/preview" "\
Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.

\(fn)" nil nil)

(autoload 'preview-report-bug "auctex/preview" "\
Report a bug in the preview-latex package.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex" "auctex/tex.el" (22072 4877 0
;;;;;;  0))
;;; Generated autoloads from auctex/tex.el

(defalias 'TeX-assoc-string (symbol-function (if (featurep 'xemacs) 'assoc 'assoc-string)))

(autoload 'TeX-tex-mode "auctex/tex" "\
Major mode in AUCTeX for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) if the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen
   2) If \\documentstyle or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `latex-mode' is selected.
   3) Otherwise, use `plain-tex-mode'

\(fn)" t nil)

(autoload 'TeX-auto-generate "auctex/tex" "\
Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory.

\(fn TEX AUTO)" t nil)

(autoload 'TeX-auto-generate-global "auctex/tex" "\
Create global auto directory for global TeX macro definitions.

\(fn)" t nil)

(autoload 'TeX-submit-bug-report "auctex/tex" "\
Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-bar" "auctex/tex-bar.el" (21520
;;;;;;  48362 0 0))
;;; Generated autoloads from auctex/tex-bar.el

(autoload 'TeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for TeX mode.

\(fn)" t nil)

(autoload 'LaTeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for LaTeX mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-fold" "auctex/tex-fold.el" (21757
;;;;;;  49613 0 0))
;;; Generated autoloads from auctex/tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias 'tex-fold-mode 'TeX-fold-mode)

;;;***

;;;### (autoloads nil "auctex/tex-font" "auctex/tex-font.el" (21520
;;;;;;  48362 0 0))
;;; Generated autoloads from auctex/tex-font.el

(autoload 'tex-font-setup "auctex/tex-font" "\
Setup font lock support for TeX.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auctex/tex-info" "auctex/tex-info.el" (22072
;;;;;;  4877 0 0))
;;; Generated autoloads from auctex/tex-info.el

(defalias 'Texinfo-mode 'texinfo-mode)

(autoload 'TeX-texinfo-mode "auctex/tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-jp" "auctex/tex-jp.el" (21520 48362
;;;;;;  0 0))
;;; Generated autoloads from auctex/tex-jp.el

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/texmathp" "auctex/texmathp.el" (21757
;;;;;;  49613 0 0))
;;; Generated autoloads from auctex/texmathp.el

(autoload 'texmathp "auctex/texmathp" "\
Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked.

\(fn)" t nil)

(autoload 'texmathp-match-switch "auctex/texmathp" "\
Search backward for any of the math switches.
Limit searched to BOUND.

\(fn BOUND)" nil nil)

;;;***

;;;### (autoloads nil "auctex/toolbar-x" "auctex/toolbar-x.el" (21757
;;;;;;  49613 0 0))
;;; Generated autoloads from auctex/toolbar-x.el
 (autoload 'toolbarx-install-toolbar "toolbar-x")

;;;***

;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (22072 4874 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (21757 49611 0 0))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "auto-indent-mode/auto-indent-mode" "auto-indent-mode/auto-indent-mode.el"
;;;;;;  (21727 28050 0 0))
;;; Generated autoloads from auto-indent-mode/auto-indent-mode.el

(autoload 'auto-indent-eol-newline "auto-indent-mode/auto-indent-mode" "\
Auto-indent function for `end-of-line' and then newline.

\(fn)" t nil)

(autoload 'auto-indent-eol-char-newline "auto-indent-mode/auto-indent-mode" "\
Auto-indent function for `end-of-line', insert `auto-indent-eol-char', and then newline.

\(fn)" t nil)

(autoload 'auto-indent-mode "auto-indent-mode/auto-indent-mode" "\
Auto Indent minor mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

When auto-indent-mode minor mode is enabled, yanking or pasting automatically indents

Fall back to default, non-indented yanking by preceding the yanking commands with C-u.

Based on auto-indentation posts, slightly redefined to allow it to be a minor mode

http://www.emacswiki.org/emacs/AutoIndentation

\(fn &optional ARG)" t nil)

(autoload 'auto-indent-mode-on "auto-indent-mode/auto-indent-mode" "\
Turn on auto-indent minor mode.

\(fn)" t nil)

(defvar auto-indent-global-mode nil "\
Non-nil if Auto-Indent-Global mode is enabled.
See the command `auto-indent-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `auto-indent-global-mode'.")

(custom-autoload 'auto-indent-global-mode "auto-indent-mode/auto-indent-mode" nil)

(autoload 'auto-indent-global-mode "auto-indent-mode/auto-indent-mode" "\
Toggle Auto-Indent mode in all buffers.
With prefix ARG, enable Auto-Indent-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Indent mode is enabled in all buffers where
`auto-indent-mode-on' would do it.
See `auto-indent-mode' for more information on Auto-Indent mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cdlatex-mode/cdlatex" "cdlatex-mode/cdlatex.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cdlatex-mode/cdlatex.el

(autoload 'turn-on-cdlatex "cdlatex-mode/cdlatex" "\
Turn on CDLaTeX minor mode.

\(fn)" nil nil)

(autoload 'cdlatex-mode "cdlatex-mode/cdlatex" "\
Minor mode for editing scientific LaTeX documents.  Here is a
list of features: \\<cdlatex-mode-map>

                           KEYWORD COMMANDS
                           ----------------
Many CDLaTeX commands are activated with an abbrev-like mechanism.
When a keyword is typed followed `\\[cdlatex-tab]', the keyword is deleted
from the buffer and a command is executed.  You can get a full list
of these commands with `\\[cdlatex-command-help]'.
For example, when you type `fr<TAB>', CDLaTeX will insert `\\frac{}{}'.

When inserting templates like '\\frac{}{}', the cursor is positioned
properly.  Use `\\[cdlatex-tab]' to move through templates.  `\\[cdlatex-tab]' also kills
unnecessary braces around subscripts and superscripts at point.

                     MATH CHARACTERS AND ACCENTS
                     ---------------------------
\\[cdlatex-math-symbol]  followed by any character inserts a LaTeX math character
      e.g. \\[cdlatex-math-symbol]e   => \\epsilon
\\[cdlatex-math-symbol]\\[cdlatex-math-symbol] followed by any character inserts other LaTeX math character
      e.g. \\[cdlatex-math-symbol]\\[cdlatex-math-symbol]e  => \\varepsilon
\\[cdlatex-math-modify]  followed by character puts a math accent on a letter or symbol
      e.g. \\[cdlatex-math-symbol]a\\[cdlatex-math-modify]~ => \\tilde{\\alpha}

CDLaTeX is aware of the math environments in LaTeX and modifies the
workings of some functions according to the current status.

                             ONLINE HELP
                             -----------
After pressing \\[cdlatex-math-symbol] or \\[cdlatex-math-modify], CDLaTeX waits for a short time for the second character.
If that does not come, it will pop up a window displaying the available
characters and their meanings.

                             KEY BINDINGS
                             ------------
\\{cdlatex-mode-map}

Under X, many functions will be available also in a menu on the menu bar.

Entering cdlatex-mode calls the hook cdlatex-mode-hook.
------------------------------------------------------------------------------

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cdlatex/cdlatex" "cdlatex/cdlatex.el" (21520
;;;;;;  48362 0 0))
;;; Generated autoloads from cdlatex/cdlatex.el

(autoload 'turn-on-cdlatex "cdlatex/cdlatex" "\
Turn on CDLaTeX minor mode.

\(fn)" nil nil)

(autoload 'cdlatex-mode "cdlatex/cdlatex" "\
Minor mode for editing scientific LaTeX documents.  Here is a
list of features: \\<cdlatex-mode-map>

                           KEYWORD COMMANDS
                           ----------------
Many CDLaTeX commands are activated with an abbrev-like mechanism.
When a keyword is typed followed `\\[cdlatex-tab]', the keyword is deleted
from the buffer and a command is executed.  You can get a full list
of these commands with `\\[cdlatex-command-help]'.
For example, when you type `fr<TAB>', CDLaTeX will insert `\\frac{}{}'.

When inserting templates like '\\frac{}{}', the cursor is positioned
properly.  Use `\\[cdlatex-tab]' to move through templates.  `\\[cdlatex-tab]' also kills
unnecessary braces around subscripts and superscripts at point.

                     MATH CHARACTERS AND ACCENTS
                     ---------------------------
\\[cdlatex-math-symbol]  followed by any character inserts a LaTeX math character
      e.g. \\[cdlatex-math-symbol]e   => \\epsilon
\\[cdlatex-math-symbol]\\[cdlatex-math-symbol] followed by any character inserts other LaTeX math character
      e.g. \\[cdlatex-math-symbol]\\[cdlatex-math-symbol]e  => \\varepsilon
\\[cdlatex-math-modify]  followed by character puts a math accent on a letter or symbol
      e.g. \\[cdlatex-math-symbol]a\\[cdlatex-math-modify]~ => \\tilde{\\alpha}

CDLaTeX is aware of the math environments in LaTeX and modifies the
workings of some functions according to the current status.

                             ONLINE HELP
                             -----------
After pressing \\[cdlatex-math-symbol] or \\[cdlatex-math-modify], CDLaTeX waits for a short time for the second character.
If that does not come, it will pop up a window displaying the available
characters and their meanings.

                             KEY BINDINGS
                             ------------
\\{cdlatex-mode-map}

Under X, many functions will be available also in a menu on the menu bar.

Entering cdlatex-mode calls the hook cdlatex-mode-hook.
------------------------------------------------------------------------------

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider/cider" "cider/cider.el" (22072 4894
;;;;;;  0 0))
;;; Generated autoloads from cider/cider.el

(autoload 'cider-version "cider/cider" "\
Display CIDER's version.

\(fn)" t nil)

(autoload 'cider-jack-in "cider/cider" "\
Start a nREPL server for the current project and connect to it.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.
If CLJS-TOO is non-nil, also start a ClojureScript REPL session with its
own buffer.

\(fn &optional PROMPT-PROJECT CLJS-TOO)" t nil)

(autoload 'cider-jack-in-clojurescript "cider/cider" "\
Start a nREPL server and connect to it both Clojure and ClojureScript REPLs.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.

\(fn &optional PROMPT-PROJECT)" t nil)

(autoload 'cider-connect "cider/cider" "\
Connect to an nREPL server identified by HOST and PORT.
Create REPL buffer and start an nREPL client connection.

When the optional param PROJECT-DIR is present, the connection
gets associated with it.

\(fn HOST PORT &optional PROJECT-DIR)" t nil)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") #'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-J") #'cider-jack-in-clojurescript) (define-key clojure-mode-map (kbd "C-c M-c") #'cider-connect)))

;;;***

;;;### (autoloads nil "cider/cider-apropos" "cider/cider-apropos.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-apropos.el

(autoload 'cider-apropos "cider/cider-apropos" "\
Show all symbols whose names match QUERY, a regular expression.
The search may be limited to the namespace NS, and may optionally search doc
strings, include private vars, and be case sensitive.

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation "cider/cider-apropos" "\
Shortcut for (cider-apropos <query> nil t).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-browse-ns" "cider/cider-browse-ns.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-browse-ns.el

(autoload 'cider-browse-ns "cider/cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.

\(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider/cider-browse-ns" "\
List all loaded namespaces in BUFFER.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-classpath" "cider/cider-classpath.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-classpath.el

(autoload 'cider-classpath "cider/cider-classpath" "\
List all classpath entries.

\(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider/cider-classpath" "\
Open a classpath entry.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-debug" "cider/cider-debug.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-debug.el

(autoload 'cider-debug-defun-at-point "cider/cider-debug" "\
Instrument the \"top-level\" expression at point.
If it is a defn, dispatch the instrumented definition.  Otherwise,
immediately evaluate the instrumented expression.

While debugged code is being evaluated, the user is taken through the
source code and displayed the value of various expressions.  At each step,
a number of keys will be prompted to the user.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-grimoire" "cider/cider-grimoire.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-grimoire.el

(autoload 'cider-grimoire-web "cider/cider-grimoire" "\
Open grimoire documentation in the default web browser.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'. With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

(autoload 'cider-grimoire "cider/cider-grimoire" "\
Open grimoire documentation in a popup buffer.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'. With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-inspector" "cider/cider-inspector.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-inspector.el

(autoload 'cider-inspect "cider/cider-inspector" "\
Eval the string EXPRESSION and inspect the result.

\(fn EXPRESSION)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-macroexpansion" "cider/cider-macroexpansion.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider/cider-macroexpansion" "\
Invoke 'macroexpand-1' on the expression preceding point.
If invoked with a PREFIX argument, use 'macroexpand' instead of
'macroexpand-1'.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider/cider-macroexpansion" "\
Invoke 'clojure.walk/macroexpand-all' on the expression preceding point.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-mode" "cider/cider-mode.el" (22072
;;;;;;  4894 0 0))
;;; Generated autoloads from cider/cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider--modeline-info))) "\
Mode line lighter for `cider-mode'.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how `cider-mode' displays its
status in the mode line.  The default value displays the current connection.
Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'cider-mode-line "cider/cider-mode" t)

(autoload 'cider-mode "cider/cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-scratch" "cider/cider-scratch.el"
;;;;;;  (21868 41943 0 0))
;;; Generated autoloads from cider/cider-scratch.el

(autoload 'cider-scratch "cider/cider-scratch" "\
Create a scratch buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider/cider-selector" "cider/cider-selector.el"
;;;;;;  (22072 4894 0 0))
;;; Generated autoloads from cider/cider-selector.el

(autoload 'cider-selector "cider/cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes then
available methods.  OTHER-WINDOW provides an optional target.

See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil "clojure-mode/clojure-mode" "clojure-mode/clojure-mode.el"
;;;;;;  (22072 4893 0 0))
;;; Generated autoloads from clojure-mode/clojure-mode.el

(autoload 'clojure-mode "clojure-mode/clojure-mode" "\
Major mode for editing Clojure code.

\\{clojure-mode-map}

\(fn)" t nil)

(autoload 'clojurescript-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureScript code.

\\{clojurescript-mode-map}

\(fn)" t nil)

(autoload 'clojurec-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureC code.

\\{clojurec-mode-map}

\(fn)" t nil)

(autoload 'clojurex-mode "clojure-mode/clojure-mode" "\
Major mode for editing ClojureX code.

\\{clojurex-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(clj\\|dtm\\|edn\\)\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.cljc\\'" . clojurec-mode))

(add-to-list 'auto-mode-alist '("\\.cljx\\'" . clojurex-mode))

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojurescript-mode))

(add-to-list 'auto-mode-alist '("\\(?:build\\|profile\\)\\.boot\\'" . clojure-mode))

;;;***

;;;### (autoloads nil "cmake-mode/cmake-mode" "cmake-mode/cmake-mode.el"
;;;;;;  (22072 4897 0 0))
;;; Generated autoloads from cmake-mode/cmake-mode.el

(autoload 'cmake-mode "cmake-mode/cmake-mode" "\
Major mode for editing CMake source files.

\(fn)" t nil)

(autoload 'cmake-command-run "cmake-mode/cmake-mode" "\
Runs the command cmake with the arguments specified.  The
optional argument topic will be appended to the argument list.

\(fn TYPE &optional TOPIC BUFFER)" t nil)

(autoload 'cmake-help-list-commands "cmake-mode/cmake-mode" "\
Prints out a list of the cmake commands.

\(fn)" t nil)

(autoload 'cmake-help-command "cmake-mode/cmake-mode" "\
Prints out the help message for the command the cursor is on.

\(fn)" t nil)

(autoload 'cmake-help-module "cmake-mode/cmake-mode" "\
Prints out the help message for the module the cursor is on.

\(fn)" t nil)

(autoload 'cmake-help-variable "cmake-mode/cmake-mode" "\
Prints out the help message for the variable the cursor is on.

\(fn)" t nil)

(autoload 'cmake-help-property "cmake-mode/cmake-mode" "\
Prints out the help message for the property the cursor is on.

\(fn)" t nil)

(autoload 'cmake-help "cmake-mode/cmake-mode" "\
Queries for any of the four available help topics and prints out the approriate page.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))

(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode))

;;;***

;;;### (autoloads nil "color-theme-sanityinc-solarized/color-theme-sanityinc-solarized"
;;;;;;  "color-theme-sanityinc-solarized/color-theme-sanityinc-solarized.el"
;;;;;;  (21520 48373 0 0))
;;; Generated autoloads from color-theme-sanityinc-solarized/color-theme-sanityinc-solarized.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(autoload 'color-theme-sanityinc-solarized-dark "color-theme-sanityinc-solarized/color-theme-sanityinc-solarized" "\
Apply the dark solarized theme.

\(fn)" t nil)

(autoload 'color-theme-sanityinc-solarized-light "color-theme-sanityinc-solarized/color-theme-sanityinc-solarized" "\
Apply the light solarized theme.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow"
;;;;;;  "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow.el"
;;;;;;  (21520 48362 0 0))
;;; Generated autoloads from color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(autoload 'color-theme-sanityinc-tomorrow-night "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow" "\
Apply the tomorrow night theme.

\(fn)" t nil)

(autoload 'color-theme-sanityinc-tomorrow-day "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow" "\
Apply the tomorrow day theme.

\(fn)" t nil)

(autoload 'color-theme-sanityinc-tomorrow-bright "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow" "\
Apply the tomorrow bright theme.

\(fn)" t nil)

(autoload 'color-theme-sanityinc-tomorrow-eighties "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow" "\
Apply the tomorrow eighties theme.

\(fn)" t nil)

(autoload 'color-theme-sanityinc-tomorrow-blue "color-theme-sanityinc-tomorrow/color-theme-sanityinc-tomorrow" "\
Apply the tomorrow blue theme.

\(fn)" t nil)

;;;***

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

;;;### (autoloads nil "color-theme/color-theme" "color-theme/color-theme.el"
;;;;;;  (17529 41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company" "company-mode/company.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific back-end, call
it interactively or use `company-begin-backend'.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-abbrev" "company-mode/company-abbrev.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion back-end for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion back-end for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion back-end for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev" "company-mode/company-dabbrev.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion back-end.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev-code" "company-mode/company-dabbrev-code.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' back-end for code.
The back-end looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion back-end for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion back-end for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion back-end existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion back-end for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-ispell" "company-mode/company-ispell.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion back-end using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-keywords" "company-mode/company-keywords.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' back-end for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion back-end for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-oddmuse" "company-mode/company-oddmuse.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion back-end for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-semantic" "company-mode/company-semantic.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion back-end using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion back-end for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-xcode" "company-mode/company-xcode.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-xcode.el

(autoload 'company-xcode "company-mode/company-xcode" "\
`company-mode' completion back-end for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-mode/company-yasnippet" "company-mode/company-yasnippet.el"
;;;;;;  (21870 18556 0 0))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' back-end for `yasnippet'.

This back-end should be used with care, because as long as there are
snippets defined for the current major mode, this back-end will always
shadow back-ends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a back-end or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other back-ends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "csv-mode/csv-mode" "csv-mode/csv-mode.el"
;;;;;;  (21946 30018 0 0))
;;; Generated autoloads from csv-mode/csv-mode.el

(autoload 'csv-mode "csv-mode/csv-mode" "\
Major mode for editing files of comma-separated value type.

CSV mode is derived from `text-mode', and runs `text-mode-hook' before
running `csv-mode-hook'.  It turns `auto-fill-mode' off by default.
CSV mode can be customized by user options in the CSV customization
group.  The separators are specified by the value of `csv-separators'.

CSV mode commands ignore blank lines and comment lines beginning with
the value of `csv-comment-start', which delimit \"paragraphs\".
\"Sexp\" is re-interpreted to mean \"field\", so that `forward-sexp'
\(\\[forward-sexp]), `kill-sexp' (\\[kill-sexp]), etc. all apply to fields.
Standard comment commands apply, such as `comment-dwim' (\\[comment-dwim]).

If `font-lock-mode' is enabled then separators, quoted values and
comment lines are highlighted using respectively `csv-separator-face',
`font-lock-string-face' and `font-lock-comment-face'.

The user interface (UI) for CSV mode commands is similar to that of
the standard commands `sort-fields' and `sort-numeric-fields', except
that if there is no prefix argument then the UI prompts for the field
index or indices.  In `transient-mark-mode' only: if the region is not
set then the UI attempts to set it to include all consecutive CSV
records around point, and prompts for confirmation; if there is no
prefix argument then the UI prompts for it, offering as a default the
index of the field containing point if the region was not set
explicitly.  The region set automatically is delimited by blank lines
and comment lines, and the number of header lines at the beginning of
the region given by the value of `csv-header-lines' are skipped.

Sort order is controlled by `csv-descending'.

CSV mode provides the following specific keyboard key bindings:

\\{csv-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))

;;;***

;;;### (autoloads nil "cyberpunk-theme/cyberpunk-theme" "cyberpunk-theme/cyberpunk-theme.el"
;;;;;;  (21757 52651 0 0))
;;; Generated autoloads from cyberpunk-theme/cyberpunk-theme.el

(when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "dash-at-point/dash-at-point" "dash-at-point/dash-at-point.el"
;;;;;;  (21520 48363 0 0))
;;; Generated autoloads from dash-at-point/dash-at-point.el

(let ((loads (get 'dash-at-point 'custom-loads))) (if (member '"dash-at-point/dash-at-point" loads) nil (put 'dash-at-point 'custom-loads (cons '"dash-at-point/dash-at-point" loads))))

(defvar dash-at-point-legacy-mode nil "\
Non-nil means use the legacy mode ('dash://') to invoke Dash.
Nil means use the modern mode ('dash-plugin://').
\(This mode may remove in the future.)")

(custom-autoload 'dash-at-point-legacy-mode "dash-at-point/dash-at-point" t)

(defvar dash-at-point-mode-alist '((actionscript-mode . "actionscript") (arduino-mode . "arduino") (c++-mode . "cpp,net,boost,qt,cvcpp,cocos2dx,c,manpages") (c-mode . "c,glib,gl2,gl3,gl4,manpages") (caml-mode . "ocaml") (clojure-mode . "clojure") (coffee-mode . "coffee") (common-lisp-mode . "lisp") (cperl-mode . "perl") (css-mode . "css,bootstrap,foundation,less,awesome,cordova,phonegap") (dart-mode . "dartlang,polymerdart,angulardart") (elixir-mode . "elixir") (emacs-lisp-mode . "elisp") (enh-ruby-mode . "ruby") (erlang-mode . "erlang") (gfm-mode . "markdown") (go-mode . "go,godoc") (groovy-mode . "groovy") (haml-mode . "haml") (haskell-mode . "haskell") (html-mode . "html,svg,css,bootstrap,foundation,awesome,javascript,jquery,jqueryui,jquerym,angularjs,backbone,marionette,meteor,moo,prototype,ember,lodash,underscore,sencha,extjs,knockout,zepto,cordova,phonegap,yui") (jade-mode . "jade") (java-mode . "java,javafx,grails,groovy,playjava,spring,cvj,processing,javadoc") (js2-mode . "javascript,backbone,angularjs") (js3-mode . "nodejs") (latex-mode . "latex") (less-css-mode . "less") (lua-mode . "lua,corona") (markdown-mode . "markdown") (nginx-mode . "nginx") (objc-mode . "cpp,iphoneos,macosx,appledoc,cocoapods,cocos2dx,cocos2d,cocos3d,kobold2d,sparrow,c,manpages") (perl-mode . "perl,manpages") (php-mode . "php,wordpress,drupal,zend,laravel,yii,joomla,ee,codeigniter,cakephp,phpunit,symfony,typo3,twig,smarty,phpp,html,mysql,sqlite,mongodb,psql,redis") (processing-mode . "processing") (puppet-mode . "puppet") (python-mode . "python3,django,twisted,sphinx,flask,tornado,sqlalchemy,numpy,scipy,saltcvp") (ruby-mode . "ruby,rubygems,rails") (rust-mode . "rust") (sass-mode . "sass,compass,bourbon,neat,css") (scala-mode . "scala,akka,playscala,scaladoc") (stylus-mode . "stylus") (tcl-mode . "tcl") (tuareg-mode . "ocaml") (twig-mode . "twig") (vim-mode . "vim") (yaml-mode . "chef,ansible")) "\
Alist which maps major modes to Dash docset tags.
Each entry is of the form (MAJOR-MODE . DOCSET-TAG) where
MAJOR-MODE is a symbol and DOCSET-TAG is corresponding tags
for one or more docsets in Dash.")

(custom-autoload 'dash-at-point-mode-alist "dash-at-point/dash-at-point" t)

(defvar dash-at-point-mode-alist-legacy '((actionscript-mode . "actionscript") (arduino-mode . "arduino") (c++-mode . "cpp") (c-mode . "c") (caml-mode . "ocaml") (clojure-mode . "clojure") (coffee-mode . "coffee") (common-lisp-mode . "lisp") (cperl-mode . "perl") (css-mode . "css") (elixir-mode . "elixir") (emacs-lisp-mode . "elisp") (enh-ruby-mode . "ruby") (erlang-mode . "erlang") (gfm-mode . "markdown") (go-mode . "go") (groovy-mode . "groovy") (haml-mode . "haml") (haskell-mode . "haskell") (html-mode . "html") (jade-mode . "jade") (java-mode . "java") (js2-mode . "javascript") (js3-mode . "nodejs") (latex-mode . "latex") (less-css-mode . "less") (lua-mode . "lua") (markdown-mode . "markdown") (nginx-mode . "nginx") (objc-mode . "iphoneos") (perl-mode . "perl") (php-mode . "php") (processing-mode . "processing") (puppet-mode . "puppet") (python-mode . "python3") (ruby-mode . "ruby") (rust-mode . "rust") (sass-mode . "sass") (scala-mode . "scala") (stylus-mode . "stylus") (tcl-mode . "tcl") (tuareg-mode . "ocaml") (twig-mode . "twig") (vim-mode . "vim") (yaml-mode . "chef")) "\
Alist which maps major modes to Dash docset tags.
Each entry is of the form (MAJOR-MODE . DOCSET-TAG) where
MAJOR-MODE is a symbol and DOCSET-TAG is a corresponding tag
for one or more docsets in Dash.")

(custom-autoload 'dash-at-point-mode-alist-legacy "dash-at-point/dash-at-point" t)

(defvar dash-at-point-docsets (mapcar #'cdr dash-at-point-mode-alist) "\
Variable used to store all known Dash docsets. The default value
is a collection of all the values from `dash-at-point-mode-alist'.

Setting or appending this variable can be used to add completion
options to `dash-at-point-with-docset'.")

(defvar dash-at-point-docset nil "\
Variable used to specify the docset for the current buffer.
Users can set this to override the default guess made using
`dash-at-point-mode-alist', allowing the docset to be determined
programatically.

For example, Ruby on Rails programmers might add an \"allruby\"
tag to the Rails, Ruby and Rubygems docsets in Dash, and then add
code to `rinari-minor-mode-hook' or `ruby-on-rails-mode-hook'
which sets this variable to \"allruby\" so that Dash will search
the combined docset.")

(autoload 'dash-at-point "dash-at-point/dash-at-point" "\
Search for the word at point in Dash.
If the optional prefix argument EDIT-SEARCH is specified,
the user will be prompted to edit the search string first.

\(fn &optional EDIT-SEARCH)" t nil)

(autoload 'dash-at-point-with-docset "dash-at-point/dash-at-point" "\
Search for the word at point in Dash with a chosen docset.
The docset options are suggested from the variable
`dash-at-point-docsets'.

If the optional prefix argument EDIT-SEARCH is specified,
the user will be prompted to edit the search string after
choosing the docset.

\(fn &optional EDIT-SEARCH)" t nil)

;;;***

;;;### (autoloads nil "diminish/diminish" "diminish/diminish.el"
;;;;;;  (21520 48363 0 0))
;;; Generated autoloads from diminish/diminish.el

(autoload 'diminish "diminish/diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

\(fn MODE &optional TO-WHAT)" t nil)

(autoload 'diminish-undo "diminish/diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked M-x diminish).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

\(fn MODE)" t nil)

(autoload 'diminished-modes "diminish/diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "dockerfile-mode/dockerfile-mode" "dockerfile-mode/dockerfile-mode.el"
;;;;;;  (22090 7946 0 0))
;;; Generated autoloads from dockerfile-mode/dockerfile-mode.el

(autoload 'dockerfile-build-buffer "dockerfile-mode/dockerfile-mode" "\
Build an image based upon the buffer

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-build-no-cache-buffer "dockerfile-mode/dockerfile-mode" "\
Build an image based upon the buffer without cache

\(fn IMAGE-NAME)" t nil)

(autoload 'dockerfile-mode "dockerfile-mode/dockerfile-mode" "\
A major mode to edit Dockerfiles.
\\{dockerfile-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("Dockerfile.*\\'" . dockerfile-mode))

;;;***

;;;### (autoloads nil "eclim/eclim" "eclim/eclim.el" (21870 18807
;;;;;;  0 0))
;;; Generated autoloads from eclim/eclim.el

(autoload 'eclim/workspace-dir "eclim/eclim" "\


\(fn)" nil nil)

(defvar eclim-mode-map (let ((map (make-sparse-keymap))) (define-key map (kbd "M-TAB") 'eclim-complete) map) "\
The keymap used in `eclim-mode'.")

(autoload 'eclim-mode "eclim/eclim" "\
An interface to the Eclipse IDE.

\(fn &optional ARG)" t nil)

(defvar global-eclim-mode nil "\
Non-nil if Global-Eclim mode is enabled.
See the command `global-eclim-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-eclim-mode'.")

(custom-autoload 'global-eclim-mode "eclim/eclim" nil)

(autoload 'global-eclim-mode "eclim/eclim" "\
Toggle Eclim mode in all buffers.
With prefix ARG, enable Global-Eclim mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Eclim mode is enabled in all buffers where
`(lambda nil (if (and buffer-file-name (eclim--accepted-p buffer-file-name) (eclim--project-dir)) (eclim-mode 1)))' would do it.
See `eclim-mode' for more information on Eclim mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "eclim/eclim-project" "eclim/eclim-project.el"
;;;;;;  (21870 18807 0 0))
;;; Generated autoloads from eclim/eclim-project.el

(autoload 'eclim-project-mode "eclim/eclim-project" "\
Manage all your eclim projects in one buffer.

\\{eclim-project-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "editorconfig/editorconfig" "editorconfig/editorconfig.el"
;;;;;;  (21757 53139 0 0))
;;; Generated autoloads from editorconfig/editorconfig.el

(autoload 'edconf-find-file-hook "editorconfig/editorconfig" "\


\(fn)" nil nil)

(add-hook 'find-file-hook 'edconf-find-file-hook)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22072 5193
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (21757 49579 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22072 5193 0 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22072 5193 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "elisp-slime-nav/elisp-slime-nav" "elisp-slime-nav/elisp-slime-nav.el"
;;;;;;  (21520 48366 0 0))
;;; Generated autoloads from elisp-slime-nav/elisp-slime-nav.el

(autoload 'elisp-slime-nav-mode "elisp-slime-nav/elisp-slime-nav" "\
Enable Slime-style navigation of elisp symbols using M-. and M-,

\(fn &optional ARG)" t nil)

(autoload 'turn-on-elisp-slime-nav-mode "elisp-slime-nav/elisp-slime-nav" "\
Explicitly enable `elisp-slime-nav-mode'.

\(fn)" nil nil)

(autoload 'elisp-slime-nav-find-elisp-thing-at-point "elisp-slime-nav/elisp-slime-nav" "\
Find the elisp thing at point, be it a function, variable, library or face.

With a prefix arg, or if there is no thing at point, prompt for
the symbol to jump to.

Argument SYM-NAME is the thing to find.

\(fn SYM-NAME)" t nil)

(autoload 'elisp-slime-nav-describe-elisp-thing-at-point "elisp-slime-nav/elisp-slime-nav" "\
Display the full documentation of the elisp thing at point.

The named subject may be a function, variable, library or face.

With a prefix arg, or if there is not \"thing\" at point, prompt
for the symbol to jump to.

Argument SYM-NAME is the thing to find.

\(fn SYM-NAME)" t nil)

;;;***

;;;### (autoloads nil "elpy/elpy" "elpy/elpy.el" (21520 48366 0 0))
;;; Generated autoloads from elpy/elpy.el

(autoload 'elpy-enable "elpy/elpy" "\
Enable Elpy in all future Python buffers.

When SKIP-INITIALIZE-VARIABLES is non-nil, this will NOT call
`elpy-initialize-variables' to configure various modes in a way
that the Elpy author considers sensible. If you'd rather
configure those modes yourself, pass t here.

\(fn &optional SKIP-INITIALIZE-VARIABLES)" t nil)

(autoload 'elpy-disable "elpy/elpy" "\
Disable Elpy in all future Python buffers.

\(fn)" t nil)

(autoload 'elpy-mode "elpy/elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

See https://github.com/jorgenschaefer/elpy/wiki/Keybindings for a
more structured list.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "emacs-neotree/neotree" "emacs-neotree/neotree.el"
;;;;;;  (21960 58377 0 0))
;;; Generated autoloads from emacs-neotree/neotree.el

(autoload 'neotree-find "emacs-neotree/neotree" "\
Quick select node which specified PATH in NeoTree.
If path is nil and no buffer file name, then use DEFAULT-PATH,

\(fn &optional PATH DEFAULT-PATH)" t nil)

(autoload 'neotree-projectile-action "emacs-neotree/neotree" "\
Integration with `Projectile'.

Usage:
    (setq projectile-switch-project-action 'neotree-projectile-action).

When running `projectile-switch-project' (C-c p p), `neotree' will change root
automatically.

\(fn)" t nil)

(autoload 'neotree-toggle "emacs-neotree/neotree" "\
Toggle show the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-show "emacs-neotree/neotree" "\
Show the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-hide "emacs-neotree/neotree" "\
Close the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-dir "emacs-neotree/neotree" "\
Show the NeoTree window, and change root to PATH.

\(fn PATH)" t nil)

(defalias 'neotree 'neotree-show "\
Show the NeoTree window.")

;;;***

;;;### (autoloads nil "emacs-racer/racer" "emacs-racer/racer.el"
;;;;;;  (22073 11039 0 0))
;;; Generated autoloads from emacs-racer/racer.el

(autoload 'racer-find-definition "emacs-racer/racer" "\
Run the racer find-definition command and process the results.

\(fn)" t nil)

(autoload 'racer-mode "emacs-racer/racer" "\
Minor mode for racer.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/bookmark-w3m" "emacs-w3m/bookmark-w3m.el"
;;;;;;  (21520 48366 0 0))
;;; Generated autoloads from emacs-w3m/bookmark-w3m.el

(autoload 'bookmark-w3m-bookmark-jump "emacs-w3m/bookmark-w3m" "\
Default bookmark handler for w3m buffers.

\(fn BOOKMARK)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/mime-w3m" "emacs-w3m/mime-w3m.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/mime-w3m.el

(autoload 'mime-w3m-preview-text/html "emacs-w3m/mime-w3m" "\


\(fn ENTITY SITUATION)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/octet" "emacs-w3m/octet.el" (21520
;;;;;;  48367 0 0))
;;; Generated autoloads from emacs-w3m/octet.el

(autoload 'octet-buffer "emacs-w3m/octet" "\
View octet-stream content according to `octet-type-filter-alist'.
Optional NAME is the filename.
If optional CONTENT-TYPE is specified, it is used for type guess.

\(fn &optional NAME CONTENT-TYPE)" t nil)

(autoload 'octet-find-file "emacs-w3m/octet" "\
Find FILE with octet-stream decoding.

\(fn FILE)" t nil)

(autoload 'mime-preview-octet "emacs-w3m/octet" "\
A method for mime-view to preview octet message.

\(fn ENTITY SITUATION)" nil nil)

(autoload 'mime-view-octet "emacs-w3m/octet" "\
A method for mime-view to display octet message.

\(fn ENTITY SITUATION)" nil nil)

(autoload 'octet-mime-setup "emacs-w3m/octet" "\
Octet setting for MIME module.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m" "emacs-w3m/w3m.el" (21520 48367
;;;;;;  0 0))
;;; Generated autoloads from emacs-w3m/w3m.el

(autoload 'w3m-retrieve "emacs-w3m/w3m" "\
Retrieve web contents pointed to by URL.
It will put the retrieved contents into the current buffer.

If HANDLER is nil, this function will retrieve web contents, return
the content type of the retrieved data, and then come to an end.  This
behavior is what is called a synchronous operation.  You have to
specify HANDLER in order to make this function show its real ability,
which is called an asynchronous operation.

If HANDLER is a function, this function will come to an end in no time.
In this case, contents will be retrieved by the asynchronous process
after a while.  And after finishing retrieving contents successfully,
HANDLER will be called on the buffer where this function starts.  The
content type of the retrieved data will be passed to HANDLER as a
string argument.

NO-UNCOMPRESS specifies whether this function should not uncompress contents.
NO-CACHE specifies whether this function should not use cached contents.
POST-DATA and REFERER will be sent to the web server with a request.

\(fn URL &optional NO-UNCOMPRESS NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(autoload 'w3m-download "emacs-w3m/w3m" "\
Download contents of URL to a file named FILENAME.
NO-CHACHE (which the prefix argument gives when called interactively)
specifies not using the cached data.

\(fn &optional URL FILENAME NO-CACHE HANDLER POST-DATA)" t nil)

(autoload 'w3m-goto-url "emacs-w3m/w3m" "\
Visit World Wide Web pages.  This is the primitive function of `w3m'.
If the second argument RELOAD is non-nil, reload a content of URL.
Except that if it is 'redisplay, re-display the page without reloading.
The third argument CHARSET specifies a charset to be used for decoding
a content.
The fourth argument POST-DATA should be a string or a cons cell.
If it is a string, it makes this function request a body as if
the content-type is \"x-www-form-urlencoded\".  If it is a cons cell,
the car of a cell is used as the content-type and the cdr of a cell is
used as the body.
If the fifth argument REFERER is specified, it is used for a Referer:
field for this request.
The remaining HANDLER, ELEMENT[1], NO-POPUP, and SAVE-POS[2] are for
the internal operations of emacs-w3m.
You can also use \"quicksearch\" url schemes such as \"gg:emacs\" which
would search for the term \"emacs\" with the Google search engine.
See the `w3m-search' function and the variable `w3m-uri-replace-alist'.

Notes for the developers:
\[1] ELEMENT is a history element which has already been registered in
the `w3m-history-flat' variable.  It is corresponding to URL to be
retrieved at this time, not for the url of the current page.

\[2] SAVE-POS leads this function to save the current emacs-w3m window
configuration; i.e. to run `w3m-history-store-position'.
`w3m-history-store-position' should be called in a w3m-mode buffer, so
this will be convenient if a command that calls this function may be
invoked in other than a w3m-mode buffer.

\(fn URL &optional RELOAD CHARSET POST-DATA REFERER HANDLER ELEMENT NO-POPUP SAVE-POS)" t nil)

(autoload 'w3m-goto-url-new-session "emacs-w3m/w3m" "\
Visit World Wide Web pages in a new session.
If you invoke this command in the emacs-w3m buffer, the new session
will be created by copying the current session.  Otherwise, the new
session will start afresh.

\(fn URL &optional RELOAD CHARSET POST-DATA REFERER)" t nil)

(autoload 'w3m-gohome "emacs-w3m/w3m" "\
Go to the Home page.

\(fn)" t nil)

(autoload 'w3m-create-empty-session "emacs-w3m/w3m" "\
Create an empty page as a new session and visit it.

\(fn)" t nil)

(autoload 'w3m "emacs-w3m/w3m" "\
Visit World Wide Web pages using the external w3m command.

When you invoke this command interactively for the first time, it will
visit a page which is pointed to by a string like url around the
cursor position or the home page specified by the `w3m-home-page'
variable, but you will be prompted for a URL if `w3m-quick-start' is
nil (default t) or `w3m-home-page' is nil.

The variables `w3m-pop-up-windows' and `w3m-pop-up-frames' control
whether this command should pop to a window or a frame up for the
session.

When emacs-w3m sessions have already been opened, this command will
pop to the existing window or frame up, but if `w3m-quick-start' is
nil, (default t), you will be prompted for a URL (which defaults to
`popup' meaning to pop to an existing emacs-w3m buffer up).

In addition, if the prefix argument is given or you enter the empty
string for the prompt, this command will visit a url at the point, or
the home page the `w3m-home-page' variable specifies, or the \"about:\"
page.

You can also run this command in the batch mode as follows:

  emacs -f w3m http://emacs-w3m.namazu.org/ &

In that case, or if this command is called non-interactively, the
variables `w3m-pop-up-windows' and `w3m-pop-up-frames' will be ignored
\(treated as nil) and it will run emacs-w3m at the current (or the
initial) window.

If the optional NEW-SESSION is non-nil, this function makes a new
emacs-w3m buffer.  Besides that, it also makes a new emacs-w3m buffer
if `w3m-make-new-session' is non-nil and a user specifies a url string.

The optional INTERACTIVE-P is for the internal use; it is mainly used
to check whether Emacs 22 or later calls this function as an
interactive command in the batch mode.

\(fn &optional URL NEW-SESSION INTERACTIVE-P)" t nil)

(autoload 'w3m-browse-url "emacs-w3m/w3m" "\
Ask emacs-w3m to browse URL.
NEW-SESSION specifies whether to create a new emacs-w3m session.  URL
defaults to the string looking like a url around the cursor position.
Pop to a window or a frame up according to `w3m-pop-up-windows' and
`w3m-pop-up-frames'.

\(fn URL &optional NEW-SESSION)" t nil)

(autoload 'w3m-find-file "emacs-w3m/w3m" "\
Function used to open FILE whose name is expressed in ordinary format.
The file name will be converted into the file: scheme.

\(fn FILE)" t nil)

(autoload 'w3m-region "emacs-w3m/w3m" "\
Render the region of the current buffer between START and END.
URL specifies the address where the contents come from.  It can be
omitted or nil when the address is not identified.  CHARSET is used
for decoding the contents.  If it is nil, this function attempts to
parse the meta tag to extract the charset.

\(fn START END &optional URL CHARSET)" t nil)

(autoload 'w3m-buffer "emacs-w3m/w3m" "\
Render the current buffer.
See `w3m-region' for the optional arguments.

\(fn &optional URL CHARSET)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-antenna" "emacs-w3m/w3m-antenna.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-antenna.el

(autoload 'w3m-about-antenna "emacs-w3m/w3m-antenna" "\


\(fn URL &optional NO-DECODE NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

(autoload 'w3m-antenna "emacs-w3m/w3m-antenna" "\
Report changes of WEB sites, which is specified in `w3m-antenna-sites'.

\(fn &optional NO-CACHE)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-bookmark" "emacs-w3m/w3m-bookmark.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-bookmark.el

(autoload 'w3m-bookmark-add-this-url "emacs-w3m/w3m-bookmark" "\
Add link under cursor to bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url "emacs-w3m/w3m-bookmark" "\
Add a url of the current page to the bookmark.
With prefix, ask for a new url instead of the present one.

\(fn &optional ARG)" t nil)

(autoload 'w3m-bookmark-add-all-urls "emacs-w3m/w3m-bookmark" "\
Add urls of all pages being visited to the bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-add-current-url-group "emacs-w3m/w3m-bookmark" "\
Add link of the group of current urls to the bookmark.

\(fn)" t nil)

(autoload 'w3m-bookmark-view "emacs-w3m/w3m-bookmark" "\
Display the bookmark.

\(fn &optional RELOAD)" t nil)

(autoload 'w3m-bookmark-view-new-session "emacs-w3m/w3m-bookmark" "\
Display the bookmark on a new session.

\(fn &optional RELOAD)" t nil)

(autoload 'w3m-about-bookmark "emacs-w3m/w3m-bookmark" "\


\(fn &rest ARGS)" nil nil)

(autoload 'w3m-setup-bookmark-menu "emacs-w3m/w3m-bookmark" "\
Setup w3m bookmark items in menubar.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-cookie" "emacs-w3m/w3m-cookie.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-cookie.el

(autoload 'w3m-cookie-shutdown "emacs-w3m/w3m-cookie" "\
Save cookies, and reset cookies' data.

\(fn)" t nil)

(autoload 'w3m-cookie-set "emacs-w3m/w3m-cookie" "\
Register cookies which correspond to URL.
BEG and END should be an HTTP response header region on current buffer.

\(fn URL BEG END)" nil nil)

(autoload 'w3m-cookie-get "emacs-w3m/w3m-cookie" "\
Get a cookie field string which corresponds to the URL.

\(fn URL)" nil nil)

(autoload 'w3m-cookie "emacs-w3m/w3m-cookie" "\
Display cookies and enable you to manage them.

\(fn &optional NO-CACHE)" t nil)

(autoload 'w3m-about-cookie "emacs-w3m/w3m-cookie" "\
Make the html contents to display and to enable you to manage cookies.

\(fn URL &optional NO-DECODE NO-CACHE POST-DATA &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-dtree" "emacs-w3m/w3m-dtree.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-dtree.el

(autoload 'w3m-about-dtree "emacs-w3m/w3m-dtree" "\


\(fn URL &optional NODECODE ALLFILES &rest ARGS)" nil nil)

(autoload 'w3m-dtree "emacs-w3m/w3m-dtree" "\
Display directory tree on local file system.
If called with 'prefix argument', display all directorys and files.

\(fn ALLFILES PATH)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-fb" "emacs-w3m/w3m-fb.el" (21520
;;;;;;  48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-fb.el

(defvar w3m-fb-mode nil "\
Non-nil if W3m-Fb mode is enabled.
See the command `w3m-fb-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `w3m-fb-mode'.")

(custom-autoload 'w3m-fb-mode "emacs-w3m/w3m-fb" nil)

(autoload 'w3m-fb-mode "emacs-w3m/w3m-fb" "\
Toggle W3M Frame Buffer mode.
This allows frame-local lists of buffers (tabs).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-filter" "emacs-w3m/w3m-filter.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-filter.el

(autoload 'w3m-filter "emacs-w3m/w3m-filter" "\
Apply filtering rule of URL against a content in this buffer.

\(fn URL)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-form" "emacs-w3m/w3m-form.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-form.el

(autoload 'w3m-fontify-forms "emacs-w3m/w3m-form" "\
Process half-dumped data and fontify forms in this buffer.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-lnum" "emacs-w3m/w3m-lnum.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-lnum.el

(autoload 'w3m-lnum-mode "emacs-w3m/w3m-lnum" "\
Minor mode to extend point commands by using Conkeror style number selection.
With prefix ARG 0 disable battery included point functions, otherwise
enable them.  With no prefix ARG - toggle.

\(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-goto "emacs-w3m/w3m-lnum" "\
Turn on link, image and form numbers and ask for one to go to.
0 corresponds to location url.

\(fn)" t nil)

(autoload 'w3m-lnum-follow "emacs-w3m/w3m-lnum" "\
Turn on link numbers, ask for one and execute appropriate action on it.
If link - visit it, when button - press, when input - activate it,
If image - toggle it.
With prefix ARG visit link in new session or don't move over
field/button/image on activation/push/toggle.
With `-' ARG, for link image - go to it and toggle it.
With -4 ARG, for link image - toggle it.
With double prefix ARG, prompt for url to visit.
With triple prefix ARG, prompt for url to visit in new session.

\(fn ARG)" t nil)

(autoload 'w3m-lnum-universal "emacs-w3m/w3m-lnum" "\
Turn on link numbers, ask for one and offer actions over it depending on selection type.
Actions may be selected either by hitting corresponding key,
pressing <return> over the action line or left clicking.

\(fn)" t nil)

(autoload 'w3m-lnum-toggle-inline-image "emacs-w3m/w3m-lnum" "\
If image at point, toggle it.
Otherwise turn on link numbers and toggle selected image.
With prefix ARG open url under image in new session.
If no such url, move over image and toggle it.

\(fn &optional ARG)" t nil)

(autoload 'w3m-lnum-view-image "emacs-w3m/w3m-lnum" "\
Display the image under point in the external viewer.
If no image at poing, turn on image numbers and display selected.
The viewer is defined in `w3m-content-type-alist' for every type of an
image.

\(fn)" t nil)

(autoload 'w3m-lnum-save-image "emacs-w3m/w3m-lnum" "\
Save the image under point to a file.
If no image at poing, turn on image numbers and save selected.
The default name will be the original name of the image.

\(fn)" t nil)

(autoload 'w3m-lnum-external-view-this-url "emacs-w3m/w3m-lnum" "\
Launch the external browser and display the link at point.
If no link at point, turn on link numbers and open selected externally.

\(fn)" t nil)

(autoload 'w3m-lnum-edit-this-url "emacs-w3m/w3m-lnum" "\
Edit the page linked from the anchor under the cursor.
If no such, turn on link numbers and edit selected.

\(fn)" t nil)

(autoload 'w3m-lnum-print-this-url "emacs-w3m/w3m-lnum" "\
Display the url under point in the echo area and put it into `kill-ring'.
If no url under point, activate numbering and select one.

\(fn)" t nil)

(autoload 'w3m-lnum-download-this-url "emacs-w3m/w3m-lnum" "\
Download the file or the page pointed to by the link under point.
If no point, activate numbering and select andchor to download.

\(fn)" t nil)

(autoload 'w3m-lnum-bookmark-add-this-url "emacs-w3m/w3m-lnum" "\
Add link under cursor to bookmarks.
If no link under point, activate numbering and ask for one.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-namazu" "emacs-w3m/w3m-namazu.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-namazu.el

(autoload 'w3m-about-namazu "emacs-w3m/w3m-namazu" "\


\(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-namazu "emacs-w3m/w3m-namazu" "\
Search indexed files with Namazu.

\(fn INDEX QUERY &optional RELOAD)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-perldoc" "emacs-w3m/w3m-perldoc.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-perldoc.el

(autoload 'w3m-about-perldoc "emacs-w3m/w3m-perldoc" "\


\(fn URL &optional NO-DECODE NO-CACHE &rest ARGS)" nil nil)

(autoload 'w3m-perldoc "emacs-w3m/w3m-perldoc" "\
View Perl documents.

\(fn DOCNAME)" t nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-search" "emacs-w3m/w3m-search.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-search.el

(autoload 'w3m-search "emacs-w3m/w3m-search" "\
Search QUERY using SEARCH-ENGINE.
When called interactively with a prefix argument, you can choose one of
the search engines defined in `w3m-search-engine-alist'.  Otherwise use
`w3m-search-default-engine'.
If Transient Mark mode, use the region as an initial string of query
and deactivate the mark.

\(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-new-session "emacs-w3m/w3m-search" "\
Like `w3m-search', but do the search in a new session.

\(fn SEARCH-ENGINE QUERY)" t nil)

(autoload 'w3m-search-uri-replace "emacs-w3m/w3m-search" "\
Generate query string for ENGINE from URI matched by last search.

\(fn URI ENGINE)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-session" "emacs-w3m/w3m-session.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-session.el

(autoload 'w3m-session-save "emacs-w3m/w3m-session" "\
Save list of displayed session.

\(fn)" t nil)

(autoload 'w3m-session-crash-recovery-remove "emacs-w3m/w3m-session" "\
Remove crash recovery session set.

\(fn)" nil nil)

(autoload 'w3m-session-select "emacs-w3m/w3m-session" "\
Select session from session list.

\(fn)" t nil)

(autoload 'w3m-setup-session-menu "emacs-w3m/w3m-session" "\
Setup w3m session items in menubar.

\(fn)" nil nil)

(autoload 'w3m-session-last-autosave-session "emacs-w3m/w3m-session" "\


\(fn)" nil nil)

(autoload 'w3m-session-last-crashed-session "emacs-w3m/w3m-session" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-symbol" "emacs-w3m/w3m-symbol.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-symbol.el

(autoload 'w3m-replace-symbol "emacs-w3m/w3m-symbol" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "emacs-w3m/w3m-weather" "emacs-w3m/w3m-weather.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from emacs-w3m/w3m-weather.el

(autoload 'w3m-weather "emacs-w3m/w3m-weather" "\
Display weather report.

\(fn AREA)" t nil)

(autoload 'w3m-about-weather "emacs-w3m/w3m-weather" "\


\(fn URL NO-DECODE NO-CACHE POST-DATA REFERER HANDLER)" nil nil)

;;;***

;;;### (autoloads nil "evil-leader/evil-leader" "evil-leader/evil-leader.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from evil-leader/evil-leader.el

(autoload 'global-evil-leader-mode "evil-leader/evil-leader" "\
Global minor mode for <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader-mode "evil-leader/evil-leader" "\
Minor mode to enable <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader/set-key "evil-leader/evil-leader" "\
Bind `key' to command `def' in `evil-leader/default-map'.

Key has to be readable by `read-kbd-macro' and `def' a command.
Accepts further `key' `def' pairs.

\(fn KEY DEF &rest BINDINGS)" t nil)

(autoload 'evil-leader/set-key-for-mode "evil-leader/evil-leader" "\
Create keybindings for major-mode `mode' with `key' bound to command `def'.

See `evil-leader/set-key'.

\(fn MODE KEY DEF &rest BINDINGS)" t nil)

;;;***

;;;### (autoloads nil "evil-surround/evil-surround" "evil-surround/evil-surround.el"
;;;;;;  (21520 48367 0 0))
;;; Generated autoloads from evil-surround/evil-surround.el

(autoload 'evil-surround-delete "evil-surround/evil-surround" "\
Delete the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with
the overlays OUTER and INNER, where OUTER includes the delimiters
and INNER excludes them. The intersection (i.e., difference)
between these overlays is what is deleted.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-change "evil-surround/evil-surround" "\
Change the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with the
overlays OUTER and INNER, which are passed to `evil-surround-delete'.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'evil-surround-mode "evil-surround/evil-surround" "\
Buffer-local minor mode to emulate surround.vim.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-surround-mode "evil-surround/evil-surround" "\
Enable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-surround-mode "evil-surround/evil-surround" "\
Disable evil-surround-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-surround-mode nil "\
Non-nil if Global-Evil-Surround mode is enabled.
See the command `global-evil-surround-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-surround-mode'.")

(custom-autoload 'global-evil-surround-mode "evil-surround/evil-surround" nil)

(autoload 'global-evil-surround-mode "evil-surround/evil-surround" "\
Toggle Evil-Surround mode in all buffers.
With prefix ARG, enable Global-Evil-Surround mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Surround mode is enabled in all buffers where
`turn-on-evil-surround-mode' would do it.
See `evil-surround-mode' for more information on Evil-Surround mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "evil/evil-core" "evil/evil-core.el" (21520
;;;;;;  48367 0 0))
;;; Generated autoloads from evil/evil-core.el
 (autoload 'evil-mode "evil" "Toggle evil in all buffers" t)

;;;***

;;;### (autoloads nil "exec-path-from-shell/exec-path-from-shell"
;;;;;;  "exec-path-from-shell/exec-path-from-shell.el" (21520 48367
;;;;;;  0 0))
;;; Generated autoloads from exec-path-from-shell/exec-path-from-shell.el

(autoload 'exec-path-from-shell-copy-envs "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variables with NAMES from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  The result is an alist,
as described by `exec-path-from-shell-getenvs'.

\(fn NAMES)" nil nil)

(autoload 'exec-path-from-shell-copy-env "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variable $NAME from the user's shell.

As a special case, if the variable is $PATH, then `exec-path' and
`eshell-path-env' are also set appropriately.  Return the value
of the environment variable.

\(fn NAME)" t nil)

(autoload 'exec-path-from-shell-initialize "exec-path-from-shell/exec-path-from-shell" "\
Initialize environment from the user's shell.

The values of all the environment variables named in
`exec-path-from-shell-variables' are set from the corresponding
values used in the user's shell.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "expand-region/expand-region" "expand-region/expand-region.el"
;;;;;;  (21520 48368 0 0))
;;; Generated autoloads from expand-region/expand-region.el

(autoload 'er/expand-region "expand-region/expand-region" "\
Increase selected region by semantic units.

With prefix argument expands the region that many times.
If prefix argument is negative calls `er/contract-region'.
If prefix argument is 0 it resets point and mark to their state
before calling `er/expand-region' for the first time.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "expand-region/expand-region-custom" "expand-region/expand-region-custom.el"
;;;;;;  (21520 48368 0 0))
;;; Generated autoloads from expand-region/expand-region-custom.el

(let ((loads (get 'expand-region 'custom-loads))) (if (member '"expand-region/expand-region-custom" loads) nil (put 'expand-region 'custom-loads (cons '"expand-region/expand-region-custom" loads))))

(defvar expand-region-preferred-python-mode 'python "\
The name of your preferred python mode")

(custom-autoload 'expand-region-preferred-python-mode "expand-region/expand-region-custom" t)

(defvar expand-region-guess-python-mode t "\
If expand-region should attempt to guess your preferred python mode")

(custom-autoload 'expand-region-guess-python-mode "expand-region/expand-region-custom" t)

(defvar expand-region-autocopy-register "" "\
If set to a string of a single character (try \"e\"), then the
contents of the most recent expand or contract command will
always be copied to the register named after that character.")

(custom-autoload 'expand-region-autocopy-register "expand-region/expand-region-custom" t)

(defvar expand-region-skip-whitespace t "\
If expand-region should skip past whitespace on initial expansion")

(custom-autoload 'expand-region-skip-whitespace "expand-region/expand-region-custom" t)

(defvar expand-region-fast-keys-enabled t "\
If expand-region should bind fast keys after initial expand/contract")

(custom-autoload 'expand-region-fast-keys-enabled "expand-region/expand-region-custom" t)

(defvar expand-region-contract-fast-key "-" "\
Key to use after an initial expand/contract to contract once more.")

(custom-autoload 'expand-region-contract-fast-key "expand-region/expand-region-custom" t)

(defvar expand-region-reset-fast-key "0" "\
Key to use after an initial expand/contract to undo.")

(custom-autoload 'expand-region-reset-fast-key "expand-region/expand-region-custom" t)

(defvar expand-region-exclude-text-mode-expansions '(html-mode nxml-mode) "\
List of modes which derive from `text-mode' for which text mode expansions are not appropriate.")

(custom-autoload 'expand-region-exclude-text-mode-expansions "expand-region/expand-region-custom" t)

;;;***

;;;### (autoloads nil "fill-column-indicator/fill-column-indicator"
;;;;;;  "fill-column-indicator/fill-column-indicator.el" (21648 41400
;;;;;;  0 0))
;;; Generated autoloads from fill-column-indicator/fill-column-indicator.el

(autoload 'fci-mode "fill-column-indicator/fill-column-indicator" "\
Toggle fci-mode on and off.
Fci-mode indicates the location of the fill column by drawing a
thin line (a `rule') at the fill column.

With prefix ARG, turn fci-mode on if and only if ARG is positive.

The following options control the appearance of the fill-column
rule: `fci-rule-column', `fci-rule-width', `fci-rule-color',
`fci-rule-use-dashes', `fci-dash-pattern', `fci-rule-character',
and `fci-rule-character-color'.  For further options, see the
Customization menu or the package file.  (See the latter for tips
on troubleshooting.)

\(fn &optional ARG)" t nil)

(autoload 'turn-on-fci-mode "fill-column-indicator/fill-column-indicator" "\
Turn on fci-mode unconditionally.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (21520 48368
;;;;;;  0 0))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file.  You can override this by locally
setting the variable `ffip-project-root'.

\(fn)" t nil)

(defalias 'ffip 'find-file-in-project)

(put 'ffip-patterns 'safe-local-variable 'listp)

(put 'ffip-find-options 'safe-local-variable 'stringp)

(put 'ffip-project-file 'safe-local-variable 'stringp)

(put 'ffip-project-root 'safe-local-variable 'stringp)

(put 'ffip-project-root-function 'safe-local-variable 'functionp)

(put 'ffip-limit 'safe-local-variable 'integerp)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/eword-decode" "flim/site-lisp/flim/eword-decode.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-decode.el

(autoload 'mime-set-field-decoder "flim/site-lisp/flim/eword-decode" "\
Set decoder of FIELD.
SPECS must be like `MODE1 DECODER1 MODE2 DECODER2 ...'.
Each mode must be `nil', `plain', `wide', `summary' or `nov'.
If mode is `nil', corresponding decoder is set up for every modes.

\(fn FIELD &rest SPECS)" nil nil)

(autoload 'mime-find-field-presentation-method "flim/site-lisp/flim/eword-decode" "\
Return field-presentation-method from NAME.
NAME must be `plain', `wide', `summary' or `nov'.

\(fn NAME)" nil t)

(autoload 'mime-find-field-decoder "flim/site-lisp/flim/eword-decode" "\
Return function to decode field-body of FIELD in MODE.
Optional argument MODE must be object or name of
field-presentation-method.  Name of field-presentation-method must be
`plain', `wide', `summary' or `nov'.
Default value of MODE is `summary'.

\(fn FIELD &optional MODE)" nil nil)

(autoload 'mime-update-field-decoder-cache "flim/site-lisp/flim/eword-decode" "\
Update field decoder cache `mime-field-decoder-cache'.

\(fn FIELD MODE &optional FUNCTION)" nil nil)

(autoload 'mime-decode-field-body "flim/site-lisp/flim/eword-decode" "\
Decode FIELD-BODY as FIELD-NAME in MODE, and return the result.
Optional argument MODE must be `plain', `wide', `summary' or `nov'.
Default mode is `summary'.

If MODE is `wide' and MAX-COLUMN is non-nil, the result is folded with
MAX-COLUMN.

Non MIME encoded-word part in FILED-BODY is decoded with
`default-mime-charset'.

\(fn FIELD-BODY FIELD-NAME &optional MODE MAX-COLUMN)" nil nil)

(autoload 'mime-decode-header-in-region "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in region between START and END.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.

\(fn START END &optional CODE-CONVERSION)" t nil)

(autoload 'mime-decode-header-in-buffer "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in header fields.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.
If SEPARATOR is not nil, it is used as header separator.

\(fn &optional CODE-CONVERSION SEPARATOR)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/eword-encode" "flim/site-lisp/flim/eword-encode.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-encode.el

(autoload 'mime-encode-field-body "flim/site-lisp/flim/eword-encode" "\
Encode FIELD-BODY as FIELD-NAME, and return the result.
A lexical token includes non-ASCII character is encoded as MIME
encoded-word.  ASCII token is not encoded.

\(fn FIELD-BODY FIELD-NAME)" nil nil)

(autoload 'mime-encode-header-in-buffer "flim/site-lisp/flim/eword-encode" "\
Encode header fields to network representation, such as MIME encoded-word.
It refers the `mime-field-encoding-method-alist' variable.

\(fn &optional CODE-CONVERSION)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mel" "flim/site-lisp/flim/mel.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mel.el

(autoload 'mime-encode-region "flim/site-lisp/flim/mel" "\
Encode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-region "flim/site-lisp/flim/mel" "\
Decode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-string "flim/site-lisp/flim/mel" "\
Decode STRING using ENCODING.
ENCODING must be string.  If ENCODING is found in
`mime-string-decoding-method-alist' as its key, this function decodes
the STRING by its value.

\(fn STRING ENCODING)" nil nil)

(autoload 'mime-insert-encoded-file "flim/site-lisp/flim/mel" "\
Insert file FILENAME encoded by ENCODING format.

\(fn FILENAME ENCODING)" t nil)

(autoload 'mime-write-decoded-region "flim/site-lisp/flim/mel" "\
Decode and write current region encoded by ENCODING into FILENAME.
START and END are buffer positions.

\(fn START END FILENAME ENCODING)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mime-conf" "flim/site-lisp/flim/mime-conf.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-conf.el

(autoload 'mime-parse-mailcap-buffer "flim/site-lisp/flim/mime-conf" "\
Parse BUFFER as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional BUFFER ORDER)" nil nil)

(defvar mime-mailcap-file "~/.mailcap" "\
*File name of user's mailcap file.")

(autoload 'mime-parse-mailcap-file "flim/site-lisp/flim/mime-conf" "\
Parse FILENAME as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional FILENAME ORDER)" nil nil)

(autoload 'mime-format-mailcap-command "flim/site-lisp/flim/mime-conf" "\
Return formated command string from MTEXT and SITUATION.

MTEXT is a command text of mailcap specification, such as
view-command.

SITUATION is an association-list about information of entity.  Its key
may be:

	'type		primary media-type
	'subtype	media-subtype
	'filename	filename
	STRING		parameter of Content-Type field

\(fn MTEXT SITUATION)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mime-parse" "flim/site-lisp/flim/mime-parse.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-parse.el

(autoload 'mime-parse-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Type field.
FIELD-BODY is a string.
Return value is a mime-content-type object.
If FIELD-BODY is not a valid Content-Type field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Type field of current-buffer.
Return value is a mime-content-type object.
If Content-Type field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Disposition field.
FIELD-BODY is a string.
Return value is a mime-content-disposition object.
If FIELD-BODY is not a valid Content-Disposition field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Disposition field of current-buffer.
Return value is a mime-content-disposition object.
If Content-Disposition field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Transfer-Encoding field.
FIELD-BODY is a string.
Return value is a string.
If FIELD-BODY is not a valid Content-Transfer-Encoding field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Transfer-Encoding field of current-buffer.
Return value is a string.
If Content-Transfer-Encoding field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-msg-id "flim/site-lisp/flim/mime-parse" "\
Parse TOKENS as msg-id of Content-ID or Message-ID field.

\(fn TOKENS)" nil nil)

(autoload 'mime-uri-parse-cid "flim/site-lisp/flim/mime-parse" "\
Parse STRING as cid URI.

\(fn STRING)" nil nil)

(autoload 'mime-parse-buffer "flim/site-lisp/flim/mime-parse" "\
Parse BUFFER as a MIME message.
If buffer is omitted, it parses current-buffer.

\(fn &optional BUFFER REPRESENTATION-TYPE)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/qmtp" "flim/site-lisp/flim/qmtp.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/qmtp.el

(defvar qmtp-open-connection-function #'open-network-stream)

(autoload 'qmtp-via-qmtp "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'qmtp-send-buffer "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/smtp" "flim/site-lisp/flim/smtp.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/smtp.el

(defvar smtp-open-connection-function #'open-network-stream "\
*Function used for connecting to a SMTP server.
The function will be called with the same four arguments as
`open-network-stream' and should return a process object.
Here is an example:

\(setq smtp-open-connection-function
      #'(lambda (name buffer host service)
	  (let ((process-connection-type nil))
	    (start-process name buffer \"ssh\" \"-C\" host
			   \"nc\" host service))))

It connects to a SMTP server using \"ssh\" before actually connecting
to the SMTP port.  Where the command \"nc\" is the netcat executable;
see http://www.atstake.com/research/tools/index.html#network_utilities
for details.")

(autoload 'smtp-via-smtp "flim/site-lisp/flim/smtp" "\
Like `smtp-send-buffer', but sucks in any errors.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'smtp-send-buffer "flim/site-lisp/flim/smtp" "\
Send a message.
SENDER is an envelope sender address.
RECIPIENTS is a list of envelope recipient addresses.
BUFFER may be a buffer or a buffer name which contains mail message.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/std11" "flim/site-lisp/flim/std11.el"
;;;;;;  (21723 27617 0 0))
;;; Generated autoloads from flim/site-lisp/flim/std11.el

(autoload 'std11-fetch-field "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
The buffer is expected to be narrowed to just the headers of the message.

\(fn NAME)" nil nil)

(autoload 'std11-narrow-to-header "flim/site-lisp/flim/std11" "\
Narrow to the message header.
If BOUNDARY is not nil, it is used as message header separator.

\(fn &optional BOUNDARY)" nil nil)

(autoload 'std11-field-body "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
If BOUNDARY is not nil, it is used as message header separator.

\(fn NAME &optional BOUNDARY)" nil nil)

(autoload 'std11-unfold-string "flim/site-lisp/flim/std11" "\
Unfold STRING as message header field.

\(fn STRING)" nil nil)

(autoload 'std11-lexical-analyze "flim/site-lisp/flim/std11" "\
Analyze STRING as lexical tokens of STD 11.

\(fn STRING &optional ANALYZER START)" nil nil)

(autoload 'std11-address-string "flim/site-lisp/flim/std11" "\
Return string of address part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-full-name-string "flim/site-lisp/flim/std11" "\
Return string of full-name part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-msg-id-string "flim/site-lisp/flim/std11" "\
Return string from parsed MSG-ID of RFC 822.

\(fn MSG-ID)" nil nil)

(autoload 'std11-fill-msg-id-list-string "flim/site-lisp/flim/std11" "\
Fill list of msg-id in STRING, and return the result.

\(fn STRING &optional COLUMN)" nil nil)

(autoload 'std11-parse-address-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address.

\(fn STRING)" nil nil)

(autoload 'std11-parse-addresses-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address list.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-id-string "flim/site-lisp/flim/std11" "\
Parse STRING as msg-id.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-ids-string "flim/site-lisp/flim/std11" "\
Parse STRING as `*(phrase / msg-id)'.

\(fn STRING)" nil nil)

(autoload 'std11-extract-address-components "flim/site-lisp/flim/std11" "\
Extract full name and canonical address from STRING.
Returns a list of the form (FULL-NAME CANONICAL-ADDRESS).
If no name can be extracted, FULL-NAME will be nil.

\(fn STRING)" nil nil)

;;;***

;;;### (autoloads nil "flycheck/flycheck" "flycheck/flycheck.el"
;;;;;;  (21877 61412 0 0))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-info "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global-Flycheck mode is enabled.
See the command `global-flycheck-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global-Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Other useful
     properties for error level categories are `priority' to
     influence the stacking of multiple error level overlays, and
     `help-echo' to define a default error messages for errors
     without messages.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck/flycheck" "\
Define SYMBOL as syntax checker which runs a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, but you should take care to call
`flycheck-verify-command-checker' in a custom `:verify'
function.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(put 'flycheck-define-command-checker 'lisp-indent-function '1)

(put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKER.  INIT-VALUE is
the initial value of the variable, and DOCSTRING is its
docstring.  CUSTOM-ARGS are forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKER DOCSTRING &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-option-var 'lisp-indent-function '3)

(put 'flycheck-def-option-var 'doc-string-elt '4)

;;;***

;;;### (autoloads nil "flymake-ruby/flymake-ruby" "flymake-ruby/flymake-ruby.el"
;;;;;;  (21872 50259 0 0))
;;; Generated autoloads from flymake-ruby/flymake-ruby.el

(autoload 'flymake-ruby-load "flymake-ruby/flymake-ruby" "\
Configure flymake mode to check the current buffer's ruby syntax.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "flymake/flymake" "flymake/flymake.el" (22072
;;;;;;  5292 0 0))
;;; Generated autoloads from flymake/flymake.el

(autoload 'flymake-mode "flymake/flymake" "\
Toggle on-the-fly syntax checking.
With a prefix argument ARG, enable the mode if ARG is positive,
and disable it otherwise.  If called from Lisp, enable the mode
if ARG is omitted or nil.

\(fn &optional ARG)" t nil)

(autoload 'flymake-mode-on "flymake/flymake" "\
Turn flymake mode on.

\(fn)" nil nil)

(autoload 'flymake-mode-off "flymake/flymake" "\
Turn flymake mode off.

\(fn)" nil nil)

(autoload 'flymake-find-file-hook "flymake/flymake" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "git-gutter/git-gutter" "git-gutter/git-gutter.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-gutter/git-gutter.el

(autoload 'git-gutter:linum-setup "git-gutter/git-gutter" "\
Setup for linum-mode.

\(fn)" nil nil)

(autoload 'git-gutter-mode "git-gutter/git-gutter" "\
Git-Gutter mode

\(fn &optional ARG)" t nil)

(defvar global-git-gutter-mode nil "\
Non-nil if Global-Git-Gutter mode is enabled.
See the command `global-git-gutter-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-gutter-mode'.")

(custom-autoload 'global-git-gutter-mode "git-gutter/git-gutter" nil)

(autoload 'global-git-gutter-mode "git-gutter/git-gutter" "\
Toggle Git-Gutter mode in all buffers.
With prefix ARG, enable Global-Git-Gutter mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Git-Gutter mode is enabled in all buffers where
`git-gutter--turn-on' would do it.
See `git-gutter-mode' for more information on Git-Gutter mode.

\(fn &optional ARG)" t nil)

(autoload 'git-gutter:revert-hunk "git-gutter/git-gutter" "\
Revert current hunk.

\(fn)" t nil)

(autoload 'git-gutter:stage-hunk "git-gutter/git-gutter" "\
Stage this hunk like 'git add -p'.

\(fn)" t nil)

(autoload 'git-gutter:popup-hunk "git-gutter/git-gutter" "\
Popup current diff hunk.

\(fn &optional DIFFINFO)" t nil)

(autoload 'git-gutter:next-hunk "git-gutter/git-gutter" "\
Move to next diff hunk

\(fn ARG)" t nil)

(autoload 'git-gutter:previous-hunk "git-gutter/git-gutter" "\
Move to previous diff hunk

\(fn ARG)" t nil)

(autoload 'git-gutter "git-gutter/git-gutter" "\
Show diff information in gutter

\(fn)" t nil)

(autoload 'git-gutter:clear "git-gutter/git-gutter" "\
Clear diff information in gutter.

\(fn)" t nil)

(autoload 'git-gutter:toggle "git-gutter/git-gutter" "\
Toggle to show diff information.

\(fn)" t nil)

(autoload 'git-gutter:set-start-revision "git-gutter/git-gutter" "\
Set start revision. If `start-rev' is nil or empty string then reset
start revision.

\(fn START-REV)" t nil)

;;;***

;;;### (autoloads nil "git-modes/git-commit-mode" "git-modes/git-commit-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-modes/git-commit-mode.el

(autoload 'git-commit-mode "git-modes/git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(dolist (pattern '("/COMMIT_EDITMSG\\'" "/NOTES_EDITMSG\\'" "/MERGE_MSG\\'" "/TAG_EDITMSG\\'" "/PULLREQ_EDITMSG\\'")) (add-to-list 'auto-mode-alist (cons pattern 'git-commit-mode)))

;;;***

;;;### (autoloads nil "git-modes/git-rebase-mode" "git-modes/git-rebase-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-modes/git-rebase-mode.el

(autoload 'git-rebase-mode "git-modes/git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads nil "git-modes/gitattributes-mode" "git-modes/gitattributes-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-modes/gitattributes-mode.el

(autoload 'gitattributes-mode "git-modes/gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads nil "git-modes/gitconfig-mode" "git-modes/gitconfig-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-modes/gitconfig-mode.el

(autoload 'gitconfig-mode "git-modes/gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads nil "git-modes/gitignore-mode" "git-modes/gitignore-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from git-modes/gitignore-mode.el

(autoload 'gitignore-mode "git-modes/gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads nil "goto-chg/goto-chg" "goto-chg/goto-chg.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from goto-chg/goto-chg.el

(autoload 'goto-last-change "goto-chg/goto-chg" "\
Go to the point where the last edit was made in the current buffer.
Repeat the command to go to the second last edit, etc.

To go back to more recent edit, the reverse of this command, use \\[goto-last-change-reverse]
or precede this command with \\[universal-argument] - (minus).

It does not go to the same point twice even if there has been many edits
there. I call the minimal distance between distinguishable edits \"span\".
Set variable `glc-default-span' to control how close is \"the same point\".
Default span is 8.
The span can be changed temporarily with \\[universal-argument] right before \\[goto-last-change]:
\\[universal-argument] <NUMBER> set current span to that number,
\\[universal-argument] (no number) multiplies span by 4, starting with default.
The so set span remains until it is changed again with \\[universal-argument], or the consecutive
repetition of this command is ended by any other command.

When span is zero (i.e. \\[universal-argument] 0) subsequent \\[goto-last-change] visits each and
every point of edit and a message shows what change was made there.
In this case it may go to the same point twice.

This command uses undo information. If undo is disabled, so is this command.
At times, when undo information becomes too large, the oldest information is
discarded. See variable `undo-limit'.

\(fn ARG)" t nil)

(autoload 'goto-last-change-reverse "goto-chg/goto-chg" "\
Go back to more recent changes after \\[goto-last-change] have been used.
See `goto-last-change' for use of prefix argument.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "hackernews/hackernews" "hackernews/hackernews.el"
;;;;;;  (21883 6989 0 0))
;;; Generated autoloads from hackernews/hackernews.el

(autoload 'hackernews "hackernews/hackernews" "\
The entry point of our client

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/ghc-core" "haskell-mode/ghc-core.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/ghc-core.el

(autoload 'ghc-core-create-core "haskell-mode/ghc-core" "\
Compile and load the current buffer as tidy core.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(add-to-list 'auto-mode-alist '("\\.dump-simpl\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "haskell-mode/ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/ghci-script-mode" "haskell-mode/ghci-script-mode.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/ghci-script-mode.el

(autoload 'ghci-script-mode "haskell-mode/ghci-script-mode" "\
Major mode for working with .ghci files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ghci\\'" . ghci-script-mode))

;;;***

;;;### (autoloads nil "haskell-mode/haskell" "haskell-mode/haskell.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell.el

(autoload 'interactive-haskell-mode "haskell-mode/haskell" "\
Minor mode for enabling haskell-process interaction.

\(fn &optional ARG)" t nil)

(autoload 'haskell-interactive-mode-return "haskell-mode/haskell" "\
Handle the return key.

\(fn)" t nil)

(autoload 'haskell-session-kill "haskell-mode/haskell" "\
Kill the session process and buffer, delete the session.
0. Prompt to kill all associated buffers.
1. Kill the process.
2. Kill the interactive buffer.
3. Walk through all the related buffers and set their haskell-session to nil.
4. Remove the session from the sessions list.

\(fn &optional LEAVE-INTERACTIVE-BUFFER)" t nil)

(autoload 'haskell-interactive-kill "haskell-mode/haskell" "\
Kill the buffer and (maybe) the session.

\(fn)" t nil)

(autoload 'haskell-session "haskell-mode/haskell" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-interactive-switch "haskell-mode/haskell" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-session-change "haskell-mode/haskell" "\
Change the session for the current buffer.

\(fn)" t nil)

(autoload 'haskell-kill-session-process "haskell-mode/haskell" "\
Kill the process.

\(fn &optional SESSION)" t nil)

(autoload 'haskell-interactive-mode-visit-error "haskell-mode/haskell" "\
Visit the buffer of the current (or last) error message.

\(fn)" t nil)

(autoload 'haskell-mode-contextual-space "haskell-mode/haskell" "\
Contextually do clever stuff when hitting space.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-tag "haskell-mode/haskell" "\
Jump to the tag of the given identifier.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-after-save-handler "haskell-mode/haskell" "\
Function that will be called after buffer's saving.

\(fn)" nil nil)

(autoload 'haskell-mode-tag-find "haskell-mode/haskell" "\
The tag find function, specific for the particular session.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-interactive-bring "haskell-mode/haskell" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-process-load-file "haskell-mode/haskell" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell-mode/haskell" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-load-or-reload "haskell-mode/haskell" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell-mode/haskell" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell-mode/haskell" "\
Prompts for a Cabal command to run.

\(fn P)" t nil)

(autoload 'haskell-process-minimal-imports "haskell-mode/haskell" "\
Dump minimal imports.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-align-imports" "haskell-mode/haskell-align-imports.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-mode/haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-c" "haskell-mode/haskell-c.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-c.el

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-c-mode))

(autoload 'haskell-c-mode "haskell-mode/haskell-c" "\
Major mode for Haskell FFI files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-cabal" "haskell-mode/haskell-cabal.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-mode/haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-guess-setting "haskell-mode/haskell-cabal" "\
Guess the specified setting of this project.
If there is no valid .cabal file to get the setting from (or
there is no corresponding setting with that name in the .cabal
file), then this function returns nil.

\(fn NAME)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-mode/haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn)" nil nil)

(autoload 'haskell-cabal-visit-file "haskell-mode/haskell-cabal" "\
Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

\(fn OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-commands" "haskell-mode/haskell-commands.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-commands.el

(autoload 'haskell-process-restart "haskell-mode/haskell-commands" "\
Restart the inferior Haskell process.

\(fn)" t nil)

(autoload 'haskell-process-clear "haskell-mode/haskell-commands" "\
Clear the current process.

\(fn)" t nil)

(autoload 'haskell-process-interrupt "haskell-mode/haskell-commands" "\
Interrupt the process (SIGINT).

\(fn)" t nil)

(autoload 'haskell-process-touch-buffer "haskell-mode/haskell-commands" "\
Updates mtime on the file for BUFFER by queing a touch on
PROCESS.

\(fn PROCESS BUFFER)" t nil)

(autoload 'haskell-describe "haskell-mode/haskell-commands" "\
Describe the given identifier.

\(fn IDENT)" t nil)

(autoload 'haskell-rgrep "haskell-mode/haskell-commands" "\
Grep the effective project for the symbol at point. Very
useful for codebase navigation. Prompts for an arbitrary regexp
given a prefix arg.

\(fn &optional PROMPT)" t nil)

(autoload 'haskell-process-do-info "haskell-mode/haskell-commands" "\
Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

\(fn &optional PROMPT-VALUE)" t nil)

(autoload 'haskell-process-do-type "haskell-mode/haskell-commands" "\
Print the type of the given expression.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-mode-jump-to-def-or-tag "haskell-mode/haskell-commands" "\
Jump to the definition (by consulting GHCi), or (fallback)
jump to the tag.

Remember: If GHCi is busy doing something, this will delay, but
it will always be accurate, in contrast to tags, which always
work but are not always accurate.
If the definition or tag is found, the location from which you jumped
will be pushed onto `xref--marker-ring', so you can return to that
position with `xref-pop-marker-stack'.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-goto-loc "haskell-mode/haskell-commands" "\
Go to the location of the thing at point. Requires the :loc-at
command from GHCi.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-def "haskell-mode/haskell-commands" "\
Jump to definition of identifier at point.

\(fn IDENT)" t nil)

(autoload 'haskell-process-cd "haskell-mode/haskell-commands" "\
Change directory.

\(fn &optional NOT-INTERACTIVE)" t nil)

(autoload 'haskell-process-cabal-macros "haskell-mode/haskell-commands" "\
Send the cabal macros string.

\(fn)" t nil)

(autoload 'haskell-mode-show-type-at "haskell-mode/haskell-commands" "\
Show the type of the thing at point.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-process-generate-tags "haskell-mode/haskell-commands" "\
Regenerate the TAGS table.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

(autoload 'haskell-process-unignore "haskell-mode/haskell-commands" "\
Unignore any files that were specified as being ignored by the
  inferior GHCi process.

\(fn)" t nil)

(autoload 'haskell-session-change-target "haskell-mode/haskell-commands" "\
Set the build target for cabal repl

\(fn TARGET)" t nil)

(autoload 'haskell-mode-stylish-buffer "haskell-mode/haskell-commands" "\
Apply stylish-haskell to the current buffer.

\(fn)" t nil)

(autoload 'haskell-mode-find-uses "haskell-mode/haskell-commands" "\
Find uses of the identifier at point, highlight them all.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-compile" "haskell-mode/haskell-compile.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-compile.el

(autoload 'haskell-compile "haskell-mode/haskell-compile" "\
Compile the Haskell program including the current buffer.
Tries to locate the next cabal description in current or parent
folders via `haskell-cabal-find-dir' and if found, invoke
`haskell-compile-cabal-build-command' from the cabal package root
folder. If no cabal package could be detected,
`haskell-compile-command' is used instead.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), `haskell-compile' prompts for custom compile
command.

If EDIT-COMMAND contains the negative prefix argument `-',
`haskell-compile' calls the alternative command defined in
`haskell-compile-cabal-build-alt-command' if a cabal package was
detected.

`haskell-compile' uses `haskell-compilation-mode' which is
derived from `compilation-mode'. See Info
node `(haskell-mode)compilation' for more details.

\(fn &optional EDIT-COMMAND)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-customize" "haskell-mode/haskell-customize.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-customize.el

(autoload 'haskell-customize "haskell-mode/haskell-customize" "\
Browse the haskell customize sub-tree.
This calls 'customize-browse' with haskell as argument and makes
sure all haskell customize definitions have been loaded.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-decl-scan" "haskell-mode/haskell-decl-scan.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-decl-scan.el

(autoload 'haskell-ds-create-imenu-index "haskell-mode/haskell-decl-scan" "\
Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

\(fn)" nil nil)

(autoload 'turn-on-haskell-decl-scan "haskell-mode/haskell-decl-scan" "\
Unconditionally activate `haskell-decl-scan-mode'.

\(fn)" t nil)

(autoload 'haskell-decl-scan-mode "haskell-mode/haskell-decl-scan" "\
Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-doc" "haskell-mode/haskell-doc.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-doc.el

(autoload 'haskell-doc-mode "haskell-mode/haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(defalias 'turn-on-haskell-doc 'haskell-doc-mode)

(autoload 'haskell-doc-current-info "haskell-mode/haskell-doc" "\
Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

\(fn)" nil nil)

(autoload 'haskell-doc-show-type "haskell-mode/haskell-doc" "\
Show the type of the function near point.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-font-lock" "haskell-mode/haskell-font-lock.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-font-lock.el

(autoload 'haskell-font-lock-choose-keywords "haskell-mode/haskell-font-lock" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-indent" "haskell-mode/haskell-indent.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-indent.el

(autoload 'turn-on-haskell-indent "haskell-mode/haskell-indent" "\
Turn on ``intelligent'' Haskell indentation mode.

\(fn)" nil nil)

(autoload 'haskell-indent-mode "haskell-mode/haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-indentation" "haskell-mode/haskell-indentation.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-indentation.el

(autoload 'haskell-indentation-mode "haskell-mode/haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-indentation "haskell-mode/haskell-indentation" "\
Turn on the haskell-indentation minor mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-interactive-mode" "haskell-mode/haskell-interactive-mode.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-interactive-mode.el

(autoload 'haskell-interactive-mode-reset-error "haskell-mode/haskell-interactive-mode" "\
Reset the error cursor position.

\(fn SESSION)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-mode/haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE &optional MODE)" nil nil)

(autoload 'haskell-process-do-simple-echo "haskell-mode/haskell-interactive-mode" "\
Send LINE to the GHCi process and echo the result in some
fashion, such as printing in the minibuffer, or using
haskell-present, depending on configuration.

\(fn LINE &optional MODE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-load" "haskell-mode/haskell-load.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-load.el

(autoload 'haskell-process-reload-devel-main "haskell-mode/haskell-load" "\
Reload the module `DevelMain' and then run
`DevelMain.update'. This is for doing live update of the code of
servers or GUI applications. Put your development version of the
program in `DevelMain', and define `update' to auto-start the
program on a new thread, and use the `foreign-store' package to
access the running context across :load/:reloads in GHCi.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-menu" "haskell-mode/haskell-menu.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-menu.el

(autoload 'haskell-menu "haskell-mode/haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-mode" "haskell-mode/haskell-mode.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-mode.el

(autoload 'haskell-version "haskell-mode/haskell-mode" "\
Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.
When FULL is non-nil, use a verbose version string.
When MESSAGE is non-nil, display a message with the version.

\(fn &optional HERE)" t nil)

(autoload 'haskell-mode-view-news "haskell-mode/haskell-mode" "\
Display information on recent changes to haskell-mode.

\(fn)" t nil)

(defvar haskell-mode-map (let ((map (make-sparse-keymap))) (define-key map (kbd "C-c C-.") 'haskell-mode-format-imports) (define-key map [remap delete-indentation] 'haskell-delete-indentation) (define-key map (kbd "C-c C-l") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-b") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-v") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-t") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-i") 'haskell-mode-enable-process-minor-mode) map) "\
Keymap used in Haskell mode.")

(autoload 'haskell-mode "haskell-mode/haskell-mode" "\
Major mode for editing Haskell programs.

See also Info node `(haskell-mode)Getting Started' for more
information about this mode.

\\<haskell-mode-map>
Literate scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook';
see documentation for that variable for more details.

\(fn)" t nil)

(autoload 'literate-haskell-mode "haskell-mode/haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[gh]s\\'" . haskell-mode))

(add-to-list 'auto-mode-alist '("\\.l[gh]s\\'" . literate-haskell-mode))

(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))

(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(add-to-list 'completion-ignored-extensions ".hi")

(autoload 'haskell-hoogle "haskell-mode/haskell-mode" "\
Do a Hoogle search for QUERY.
When `haskell-hoogle-command' is non-nil, this command runs
that.  Otherwise, it opens a hoogle search result in the browser.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

\(fn QUERY &optional INFO)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'hoogle-lookup-from-local "haskell-mode/haskell-mode" "\
Lookup by local hoogle.

\(fn)" t nil)

(autoload 'haskell-hayoo "haskell-mode/haskell-mode" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-modules" "haskell-mode/haskell-modules.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-modules.el

(autoload 'haskell-session-installed-modules "haskell-mode/haskell-modules" "\
Get the modules installed in the current package set.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-all-modules "haskell-mode/haskell-modules" "\
Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-project-modules "haskell-mode/haskell-modules" "\
Get the modules of the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-move-nested" "haskell-mode/haskell-move-nested.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-mode/haskell-move-nested" "\
Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" nil nil)

(autoload 'haskell-move-nested-right "haskell-mode/haskell-move-nested" "\
Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

(autoload 'haskell-move-nested-left "haskell-mode/haskell-move-nested" "\
Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-navigate-imports" "haskell-mode/haskell-navigate-imports.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-mode/haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-mode/haskell-navigate-imports" "\
Go to the first line of a list of consequtive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-mode/haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-session" "haskell-mode/haskell-session.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-session.el

(autoload 'haskell-session-maybe "haskell-mode/haskell-session" "\
Maybe get the Haskell session, return nil if there isn't one.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-mode/haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-show" "haskell-mode/haskell-show.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-show.el

(autoload 'haskell-show-replace "haskell-mode/haskell-show" "\
Replace the given region containing a Show value with a pretty
  printed collapsible version.

\(fn START END)" nil nil)

(autoload 'haskell-show-parse-and-insert "haskell-mode/haskell-show" "\
Parse a `string' containing a Show instance value and insert
  it pretty printed into the current buffer.

\(fn GIVEN)" nil nil)

(autoload 'haskell-show-parse "haskell-mode/haskell-show" "\
Parse the given input into a tree.

\(fn GIVEN)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-simple-indent" "haskell-mode/haskell-simple-indent.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-simple-indent.el

(autoload 'haskell-simple-indent-mode "haskell-mode/haskell-simple-indent" "\
Simple Haskell indentation mode that uses simple heuristic.
In this minor mode, `indent-for-tab-command' (bound to <tab> by
default) will move the cursor to the next indent point in the
previous nonblank line, whereas `haskell-simple-indent-backtab'
\(bound to <backtab> by default) will move the cursor the
previous indent point.  An indent point is a non-whitespace
character following whitespace.

Runs `haskell-simple-indent-hook' on activation.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-simple-indent "haskell-mode/haskell-simple-indent" "\
Turn on function `haskell-simple-indent-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-sort-imports" "haskell-mode/haskell-sort-imports.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-mode/haskell-sort-imports" "\
Sort the import list at point. It sorts the current group
i.e. an import list separated by blank lines on either side.

If the region is active, it will restrict the imports to sort
within that region.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-string" "haskell-mode/haskell-string.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-string.el

(autoload 'haskell-trim "haskell-mode/haskell-string" "\


\(fn STRING)" nil nil)

(autoload 'haskell-string-take "haskell-mode/haskell-string" "\
Take n chars from string.

\(fn STRING N)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-unicode-input-method"
;;;;;;  "haskell-mode/haskell-unicode-input-method.el" (21757 53168
;;;;;;  0 0))
;;; Generated autoloads from haskell-mode/haskell-unicode-input-method.el

(autoload 'turn-on-haskell-unicode-input-method "haskell-mode/haskell-unicode-input-method" "\
Set input method `haskell-unicode'.
See Info node `Unicode(haskell-mode)' for more details.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-yas" "haskell-mode/haskell-yas.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/haskell-yas.el

(autoload 'haskell-yas-complete "haskell-mode/haskell-yas" "\


\(fn &rest ARGS)" nil nil)

(autoload 'haskell-snippets-initialize "haskell-mode/haskell-yas" "\
Register haskell snippets with yasnippet.

\(fn)" nil nil)

(eval-after-load 'yasnippet '(haskell-snippets-initialize))

;;;***

;;;### (autoloads nil "haskell-mode/highlight-uses-mode" "haskell-mode/highlight-uses-mode.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/highlight-uses-mode.el

(autoload 'highlight-uses-mode "haskell-mode/highlight-uses-mode" "\
Minor mode for highlighting and jumping between uses.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/inf-haskell" "haskell-mode/inf-haskell.el"
;;;;;;  (21757 53168 0 0))
;;; Generated autoloads from haskell-mode/inf-haskell.el

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "haskell-mode/inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn &optional ARG)" t nil)

(autoload 'inferior-haskell-load-file "haskell-mode/inf-haskell" "\
Pass the current buffer's file to the inferior haskell process.
If prefix arg \\[universal-argument] is given, just reload the previous file.

\(fn &optional RELOAD)" t nil)

(autoload 'inferior-haskell-load-and-run "haskell-mode/inf-haskell" "\
Pass the current buffer's file to haskell and then run a COMMAND.

\(fn COMMAND)" t nil)

(autoload 'inferior-haskell-send-decl "haskell-mode/inf-haskell" "\
Send current declaration to inferior-haskell process.

\(fn)" t nil)

(autoload 'inferior-haskell-type "haskell-mode/inf-haskell" "\
Query the haskell process for the type of the given expression.
If optional argument `insert-value' is non-nil, insert the type above point
in the buffer.  This can be done interactively with the \\[universal-argument] prefix.
The returned info is cached for reuse by `haskell-doc-mode'.

\(fn EXPR &optional INSERT-VALUE)" t nil)

(autoload 'inferior-haskell-kind "haskell-mode/inf-haskell" "\
Query the haskell process for the kind of the given expression.

\(fn TYPE)" t nil)

(autoload 'inferior-haskell-info "haskell-mode/inf-haskell" "\
Query the haskell process for the info of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-definition "haskell-mode/inf-haskell" "\
Attempt to locate and jump to the definition of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-haddock "haskell-mode/inf-haskell" "\
Find and open the Haddock documentation of SYM.
Make sure to load the file into GHCi or Hugs first by using C-c C-l.
Only works for functions in a package installed with ghc-pkg, or
whatever the value of `haskell-package-manager-name' is.

This function needs to find which package a given module belongs
to.  In order to do this, it computes a module-to-package lookup
alist, which is expensive to compute (it takes upwards of five
seconds with more than about thirty installed packages).  As a
result, we cache it across sessions using the cache file
referenced by `inferior-haskell-module-alist-file'. We test to
see if this is newer than `haskell-package-conf-file' every time
we load it.

\(fn SYM)" t nil)

(autoload 'inf-haskell-mode "haskell-mode/inf-haskell" "\
Minor mode for enabling inf-haskell process interaction.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "helm-ag/helm-ag" "helm-ag/helm-ag.el" (21897
;;;;;;  62022 0 0))
;;; Generated autoloads from helm-ag/helm-ag.el

(autoload 'helm-ag-pop-stack "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-ag-clear-stack "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-ag-this-file "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-ag-mode "helm-ag/helm-ag" "\
Major mode to provide actions in helm grep saved buffer.

Special commands:
\\{helm-ag-mode-map}

\(fn)" t nil)

(autoload 'helm-ag "helm-ag/helm-ag" "\


\(fn &optional BASEDIR)" t nil)

(autoload 'helm-do-ag-this-file "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-do-ag "helm-ag/helm-ag" "\


\(fn &optional BASEDIR THIS-FILE)" t nil)

(autoload 'helm-ag-project-root "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-do-ag-project-root "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-ag-buffers "helm-ag/helm-ag" "\


\(fn)" t nil)

(autoload 'helm-do-ag-buffers "helm-ag/helm-ag" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-dash/helm-dash" "helm-dash/helm-dash.el"
;;;;;;  (22073 7322 0 0))
;;; Generated autoloads from helm-dash/helm-dash.el

(autoload 'helm-dash-install-user-docset "helm-dash/helm-dash" "\


\(fn DOCSET-NAME)" t nil)

(autoload 'helm-dash-install-docset-from-file "helm-dash/helm-dash" "\


\(fn DOCSET-TMP-PATH)" t nil)

(autoload 'helm-dash-install-docset "helm-dash/helm-dash" "\
Download docset with specified DOCSET-NAME and move its stuff to docsets-path.

\(fn DOCSET-NAME)" t nil)

(autoload 'helm-dash "helm-dash/helm-dash" "\
Bring up a Dash search interface in helm.

\(fn)" t nil)

(autoload 'helm-dash-at-point "helm-dash/helm-dash" "\
Bring up a Dash search interface in helm using the symbol at
point as prefilled search.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "helm-descbinds/helm-descbinds" "helm-descbinds/helm-descbinds.el"
;;;;;;  (21757 53144 0 0))
;;; Generated autoloads from helm-descbinds/helm-descbinds.el

(defvar helm-descbinds-mode nil "\
Non-nil if Helm-Descbinds mode is enabled.
See the command `helm-descbinds-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-descbinds-mode'.")

(custom-autoload 'helm-descbinds-mode "helm-descbinds/helm-descbinds" nil)

(autoload 'helm-descbinds-mode "helm-descbinds/helm-descbinds" "\
Use `helm' for `describe-bindings'

\(fn &optional ARG)" t nil)

(autoload 'helm-descbinds-install "helm-descbinds/helm-descbinds" "\
Use `helm-descbinds' as a replacement of `describe-bindings'.

\(fn)" t nil)

(autoload 'helm-descbinds-uninstall "helm-descbinds/helm-descbinds" "\
Restore original `describe-bindings'.

\(fn)" t nil)

(autoload 'helm-descbinds "helm-descbinds/helm-descbinds" "\
Yet Another `describe-bindings' with `helm'.

\(fn &optional PREFIX BUFFER)" t nil)

;;;***

;;;### (autoloads nil "helm-projectile/helm-projectile" "helm-projectile/helm-projectile.el"
;;;;;;  (21868 42591 0 0))
;;; Generated autoloads from helm-projectile/helm-projectile.el

(defvar helm-projectile-fuzzy-match t "\
Enable fuzzy matching for Helm Projectile commands.
This needs to be set before loading helm-projectile.")

(custom-autoload 'helm-projectile-fuzzy-match "helm-projectile/helm-projectile" t)

(autoload 'helm-projectile-find-file-dwim "helm-projectile/helm-projectile" "\
Find file at point based on context.

\(fn)" t nil)

(autoload 'helm-projectile-find-other-file "helm-projectile/helm-projectile" "\
Switch between files with the same name but different extensions using Helm.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'helm-projectile-on "helm-projectile/helm-projectile" "\
Turn on helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-off "helm-projectile/helm-projectile" "\
Turn off helm-projectile key bindings.

\(fn)" t nil)

(autoload 'helm-projectile-grep "helm-projectile/helm-projectile" "\
Helm version of projectile-grep.

\(fn)" t nil)

(autoload 'helm-projectile-ack "helm-projectile/helm-projectile" "\
Helm version of projectile-ack.

\(fn)" t nil)

(autoload 'helm-projectile-ag "helm-projectile/helm-projectile" "\
Helm version of projectile-ag.

\(fn &optional OPTIONS)" t nil)

(autoload 'helm-projectile "helm-projectile/helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.
If invoked outside of a project, displays a list of known projects to jump.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(progn (define-key projectile-command-map (kbd "h") 'helm-projectile)))

;;;***

;;;### (autoloads nil "highlight-indentation/highlight-indentation"
;;;;;;  "highlight-indentation/highlight-indentation.el" (21520 48369
;;;;;;  0 0))
;;; Generated autoloads from highlight-indentation/highlight-indentation.el

(autoload 'highlight-indentation-mode "highlight-indentation/highlight-indentation" "\
Highlight indentation minor mode highlights indentation based
on spaces

\(fn &optional ARG)" t nil)

(autoload 'highlight-indentation-set-offset "highlight-indentation/highlight-indentation" "\
Set indentation offset localy in buffer, will prevent
highlight-indentation from trying to guess indentation offset
from major mode

\(fn OFFSET)" t nil)

(autoload 'highlight-indentation-current-column-mode "highlight-indentation/highlight-indentation" "\
Hilight Indentation minor mode displays
a vertical bar corresponding to the indentation of the current line

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "htmlize/htmlize" "htmlize/htmlize.el" (21520
;;;;;;  48369 0 0))
;;; Generated autoloads from htmlize/htmlize.el

(autoload 'htmlize-buffer "htmlize/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "htmlize/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "htmlize/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "htmlize/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "htmlize/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "idomenu/idomenu" "idomenu/idomenu.el" (21520
;;;;;;  48369 0 0))
;;; Generated autoloads from idomenu/idomenu.el

(autoload 'idomenu "idomenu/idomenu" "\
Switch to a buffer-local tag from Imenu via Ido.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "iedit/iedit" "iedit/iedit.el" (21520 48369
;;;;;;  0 0))
;;; Generated autoloads from iedit/iedit.el

(autoload 'iedit-mode "iedit/iedit" "\
Toggle Iedit mode.
This command behaves differently, depending on the mark, point,
prefix argument and variable `iedit-transient-mark-sensitive'.

If Iedit mode is off, turn Iedit mode on.

When Iedit mode is turned on, all the occurrences of the current
region are highlighted.  If one occurrence is modified, the
change are propagated to all other occurrences simultaneously.

If region is not active, the current symbol (returns from
`current-word') is used as the occurrence by default.  The
occurrences of the current symbol, but not include occurrences
that are part of other symbols, are highlighted.  If you still
want to match all the occurrences, even though they are parts of
other symbols, you may have to mark the symbol first.

In the above two situations, with digit prefix argument 0, only
occurrences in current function are matched.  This is good for
renaming refactoring in programming.

You can also switch to Iedit mode from isearch mode directly. The
current search string is used as occurrence.  All occurrences of
the current search string are highlighted.

With an universal prefix argument, the occurrence when Iedit mode
is turned off last time in current buffer is used as occurrence.
This is intended to recover last Iedit mode which is turned off.
If region active, Iedit mode is limited within the current
region.

With repeated universal prefix argument, the occurrence when
Iedit mode is turned off last time (might be in other buffer) is used
as occurrence.  If region active, Iedit mode is limited within
the current region.

If Iedit mode is on and region is active, Iedit mode is
restricted in the region, e.g. the occurrences outside of the region
is excluded.

If Iedit mode is on and region is active, with an universal
prefix argument, Iedit mode is restricted outside of the region,
e.g. the occurrences in the region is excluded.

Turn off Iedit mode in other situations.

Commands:
\\{iedit-current-keymap}

\(fn &optional ARG)" t nil)

(autoload 'iedit-mode-on-function "iedit/iedit" "\
Toggle Iedit mode on current function.

\(fn)" t nil)

(autoload 'iedit-rectangle-mode "iedit/iedit" "\
Toggle iedit-RECT mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "indent-guide/indent-guide" "indent-guide/indent-guide.el"
;;;;;;  (21757 53133 0 0))
;;; Generated autoloads from indent-guide/indent-guide.el

(autoload 'indent-guide-mode "indent-guide/indent-guide" "\
show vertical lines to guide indentation

\(fn &optional ARG)" t nil)

(defvar indent-guide-global-mode nil "\
Non-nil if Indent-Guide-Global mode is enabled.
See the command `indent-guide-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `indent-guide-global-mode'.")

(custom-autoload 'indent-guide-global-mode "indent-guide/indent-guide" nil)

(autoload 'indent-guide-global-mode "indent-guide/indent-guide" "\
Toggle Indent-Guide mode in all buffers.
With prefix ARG, enable Indent-Guide-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Indent-Guide mode is enabled in all buffers where
`(lambda nil (unless (cl-some (quote derived-mode-p) indent-guide-inhibit-modes) (indent-guide-mode 1)))' would do it.
See `indent-guide-mode' for more information on Indent-Guide mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "inf-ruby/inf-ruby" "inf-ruby/inf-ruby.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(defvar ruby-source-modes '(ruby-mode enh-ruby-mode) "\
Used to determine if a buffer contains Ruby source code.
If it's loaded into a buffer that is in one of these major modes, it's
considered a ruby source file by `ruby-load-file'.
Used by these commands to determine defaults.")

(autoload 'inf-ruby-setup-keybindings "inf-ruby/inf-ruby" "\
Hook up `inf-ruby-minor-mode' to each of `ruby-source-modes'.

\(fn)" nil nil)

(autoload 'inf-ruby-minor-mode "inf-ruby/inf-ruby" "\
Minor mode for interacting with the inferior process buffer.

The following commands are available:

\\{inf-ruby-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'inf-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use.  Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer `*NAME*'.
If there is a process already running in `*NAME*', switch to that buffer.

NAME defaults to \"ruby\". COMMAND defaults to the default entry
in `inf-ruby-implementations'.

\(Type \\[describe-mode] in the process buffer for the list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(autoload 'inf-ruby-switch-setup "inf-ruby/inf-ruby" "\
Modify `rspec-compilation-mode' and `ruby-compilation-mode'
keymaps to bind `inf-ruby-switch-from-compilation' to `С-x C-q'.

\(fn)" nil nil)

(autoload 'inf-ruby-console-auto "inf-ruby/inf-ruby" "\
Run the appropriate Ruby console command.
The command and and the directory to run it from are detected
automatically.

\(fn)" t nil)

(autoload 'inf-ruby-console-rails "inf-ruby/inf-ruby" "\
Run Rails console in DIR.

\(fn DIR)" t nil)

(autoload 'inf-ruby-console-gem "inf-ruby/inf-ruby" "\
Run IRB console for the gem in DIR.
The main module should be loaded automatically.  If DIR contains a
Gemfile, it should use the `gemspec' instruction.

\(fn DIR)" t nil)

(autoload 'inf-ruby-console-default "inf-ruby/inf-ruby" "\
Run racksh, custom console.rb, or just IRB, in DIR.

\(fn DIR)" t nil)

(autoload 'inf-ruby-file-contents-match "inf-ruby/inf-ruby" "\


\(fn FILE REGEXP &optional MATCH-GROUP)" nil nil)
 (dolist (mode ruby-source-modes) (add-hook (intern (format "%s-hook" mode)) 'inf-ruby-minor-mode))

;;;***

;;;### (autoloads nil "jedi/jedi" "jedi/jedi.el" (21520 48369 0 0))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:start-dedicated-server "jedi/jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "jedi/jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "jedi/jedi" "\
Add Jedi AC sources to `ac-sources'.

If auto-completion is all you need, you can call this function instead
of `jedi:setup', like this::

   (add-hook 'python-mode-hook 'jedi:ac-setup)

Note that this function calls `auto-complete-mode' if it is not
already enabled, for people who don't call `global-auto-complete-mode'
in their Emacs configuration.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi/jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

(autoload 'jedi:install-server "jedi/jedi" "\
This command installs Jedi server script jediepcserver.py in a
Python environment dedicated to Emacs.  By default, the
environment is at ``~/.emacs.d/.python-environments/default/``.
This environment is automatically created by ``virtualenv`` if it
does not exist.

Run this command (i.e., type ``M-x jedi:install-server RET``)
whenever Jedi.el shows a message to do so.  It is a good idea to
run this every time after you update Jedi.el to sync version of
Python modules used by Jedi.el and Jedi.el itself.

You can modify the location of the environment by changing
`jedi:environment-root' and/or `python-environment-directory'.  More
specifically, Jedi.el will install Python modules under the directory
``PYTHON-ENVIRONMENT-DIRECTORY/JEDI:ENVIRONMENT-ROOT``.  Note that you
need command line program ``virtualenv``.  If you have the command in
an unusual location, use `python-environment-virtualenv' to specify the
location.

.. NOTE:: jediepcserver.py is installed in a virtual environment but it
   does not mean Jedi.el cannot recognize the modules in virtual
   environment you are using for your Python development.  Jedi
   EPC server recognize the virtualenv it is in (i.e., the
   environment variable ``VIRTUAL_ENV`` in your Emacs) and then
   add modules in that environment to its ``sys.path``.  You can
   also add ``--virtual-env PATH/TO/ENV`` to `jedi:server-args'
   to include modules of virtual environment even you launch
   Emacs outside of the virtual environment.

.. NOTE:: It is highly recommended to use this command to install
   Python modules for Jedi.el.  You still can install Python
   modules used by Jedi.el manually.  However, you are then
   responsible for keeping Jedi.el and Python modules compatible.

See also:

- https://github.com/tkf/emacs-jedi/pull/72
- https://github.com/tkf/emacs-jedi/issues/140#issuecomment-37358527

\(fn)" t nil)

(autoload 'jedi:install-server-block "jedi/jedi" "\
Blocking version `jedi:install-server'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "js2-highlight-vars/js2-highlight-vars" "js2-highlight-vars/js2-highlight-vars.el"
;;;;;;  (22049 32093 0 0))
;;; Generated autoloads from js2-highlight-vars/js2-highlight-vars.el

(autoload 'js2-highlight-vars-mode "js2-highlight-vars/js2-highlight-vars" "\
Minor mode that highlights occurrences of the variable under
cursor in js2-mode buffers

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (22049 31982 0 0))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (22049 31982 0 0))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-highlight-unused-variables-mode "js2-mode/js2-mode" "\
Toggle highlight of unused variables.

\(fn &optional ARG)" t nil)

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "key-chord/key-chord" "key-chord/key-chord.el"
;;;;;;  (21864 58969 0 0))
;;; Generated autoloads from key-chord/key-chord.el

(autoload 'key-chord-mode "key-chord/key-chord" "\
Toggle key chord mode.
With positive ARG enable the mode. With zero or negative arg disable the mode.
A key chord is two keys that are pressed simultaneously, or one key quickly
pressed twice.

See functions `key-chord-define-global', `key-chord-define-local', and
`key-chord-define' and variables `key-chord-two-keys-delay' and
`key-chord-one-key-delay'.

\(fn ARG)" t nil)

(autoload 'key-chord-define-global "key-chord/key-chord" "\
Define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

Note that KEYS defined locally in the current buffer will have precedence.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define-local "key-chord/key-chord" "\
Locally define a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

The binding goes in the current buffer's local map,
which in most cases is shared with all other buffers in the same major mode.

\(fn KEYS COMMAND)" t nil)

(autoload 'key-chord-define "key-chord/key-chord" "\
Define in KEYMAP, a key-chord of the two keys in KEYS starting a COMMAND.

KEYS can be a string or a vector of two elements. Currently only elements
that corresponds to ascii codes in the range 32 to 126 can be used.

COMMAND can be an interactive function, a string, or nil.
If COMMAND is nil, the key-chord is removed.

\(fn KEYMAP KEYS COMMAND)" nil nil)

;;;***

;;;### (autoloads nil "let-alist/let-alist" "let-alist/let-alist.el"
;;;;;;  (21757 49690 0 0))
;;; Generated autoloads from let-alist/let-alist.el

(autoload 'let-alist "let-alist/let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq 'title alist)))
        (.body  (cdr (assq 'body alist)))
        (.site  (cdr (assq 'site alist)))
        (.site.contents (cdr (assq 'contents (cdr (assq 'site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil "magit/magit" "magit/magit.el" (21520 48369
;;;;;;  0 0))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-git-command "magit/magit" "\
Execute a Git subcommand asynchronously, displaying the output.
With a prefix argument run Git in the root of the current
repository.  Non-interactively run Git in DIRECTORY with ARGS.

\(fn ARGS DIRECTORY)" t nil)

(autoload 'magit-show-commit "magit/magit" "\
Show information about COMMIT.

\(fn COMMIT &optional NOSELECT)" t nil)

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

Depending on option `magit-status-buffer-switch-function' the
status buffer is shown in another window (the default) or the
current window.  Non-interactively optional SWITCH-FUNCTION
can be used to override this.

\(fn DIR &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-stage-all "magit/magit" "\
Add all remaining changes in tracked files to staging area.
With a prefix argument, add remaining untracked files as well.
\('git add [-u] .').

\(fn &optional INCLUDING-UNTRACKED)" t nil)

(autoload 'magit-unstage-all "magit/magit" "\
Remove all changes from staging area.
\('git reset --mixed HEAD').

\(fn)" t nil)

(autoload 'magit-dired-jump "magit/magit" "\
Visit current item in dired.
With a prefix argument, visit in other window.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-show "magit/magit" "\
Display and select a buffer containing FILE as stored in REV.

Insert the contents of FILE as stored in the revision REV into a
buffer.  Then select the buffer using `pop-to-buffer' or with a
prefix argument using `switch-to-buffer'.  Non-interactivity use
SWITCH-FUNCTION to switch to the buffer, if that is nil simply
return the buffer, without displaying it.

\(fn REV FILE &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-merge "magit/magit" "\
Merge REVISION into the current 'HEAD', leaving changes uncommitted.
With a prefix argument, skip editing the log message and commit.
\('git merge [--no-commit] REVISION').

\(fn REVISION &optional DO-COMMIT)" t nil)

(autoload 'magit-merge-abort "magit/magit" "\
Abort the current merge operation.

\(fn)" t nil)

(autoload 'magit-checkout "magit/magit" "\
Switch 'HEAD' to REVISION and update working tree.
Fails if working tree or staging area contain uncommitted changes.
If REVISION is a remote branch, offer to create a local tracking branch.
\('git checkout [-b] REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-create-branch "magit/magit" "\
Switch 'HEAD' to new BRANCH at revision PARENT and update working tree.
Fails if working tree or staging area contain uncommitted changes.
\('git checkout -b BRANCH REVISION').

\(fn BRANCH PARENT)" t nil)

(autoload 'magit-delete-branch "magit/magit" "\
Delete the BRANCH.
If the branch is the current one, offers to switch to `master' first.
With prefix, forces the removal even if it hasn't been merged.
Works with local or remote branches.
\('git branch [-d|-D] BRANCH' or 'git push <remote-part-of-BRANCH> :refs/heads/BRANCH').

\(fn BRANCH &optional FORCE)" t nil)

(autoload 'magit-rename-branch "magit/magit" "\
Rename branch OLD to NEW.
With prefix, forces the rename even if NEW already exists.
\('git branch [-m|-M] OLD NEW').

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-add-remote "magit/magit" "\
Add the REMOTE and fetch it.
\('git remote add REMOTE URL').

\(fn REMOTE URL)" t nil)

(autoload 'magit-remove-remote "magit/magit" "\
Delete the REMOTE.
\('git remote rm REMOTE').

\(fn REMOTE)" t nil)

(autoload 'magit-rename-remote "magit/magit" "\
Rename remote OLD to NEW.
\('git remote rename OLD NEW').

\(fn OLD NEW)" t nil)

(autoload 'magit-interactive-rebase "magit/magit" "\
Start a git rebase -i session, old school-style.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-head "magit/magit" "\
Switch 'HEAD' to REVISION, keeping prior working tree and staging area.
Any differences from REVISION become new changes to be committed.
With prefix argument, all uncommitted changes in working tree
and staging area are lost.
\('git reset [--soft|--hard] REVISION').

\(fn REVISION &optional HARD)" t nil)

(autoload 'magit-reset-head-hard "magit/magit" "\
Switch 'HEAD' to REVISION, losing all changes.
Uncomitted changes in both working tree and staging area are lost.
\('git reset --hard REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-reset-working-tree "magit/magit" "\
Revert working tree and clear changes from staging area.
\('git reset --hard HEAD').

With a prefix arg, also remove untracked files.
With two prefix args, remove ignored files as well.

\(fn &optional ARG)" t nil)

(autoload 'magit-fetch "magit/magit" "\
Fetch from REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-fetch-current "magit/magit" "\
Run fetch for default remote.

If there is no default remote, ask for one.

\(fn)" t nil)

(autoload 'magit-remote-update "magit/magit" "\
Update all remotes.

\(fn)" t nil)

(autoload 'magit-pull "magit/magit" "\
Run git pull.

If there is no default remote, the user is prompted for one and
its values is saved with git config.  If there is no default
merge branch, the user is prompted for one and its values is
saved with git config.  With a prefix argument, the default
remote is not used and the user is prompted for a remote.  With
two prefix arguments, the default merge branch is not used and
the user is prompted for a merge branch.  Values entered by the
user because of prefix arguments are not saved with git config.

\(fn)" t nil)

(autoload 'magit-push-tags "magit/magit" "\
Push tags to a remote repository.

Push tags to the current branch's remote.  If that isn't set push
to \"origin\" or if that remote doesn't exit but only a single
remote is defined use that.  Otherwise or with a prefix argument
ask the user what remote to use.

\(fn)" t nil)

(autoload 'magit-push "magit/magit" "\
Push the current branch to a remote repository.

This command runs the `magit-push-remote' hook.  By default that
means running `magit-push-dwim'.  So unless you have customized
the hook this command behaves like this:

With a single prefix argument ask the user what branch to push
to.  With two or more prefix arguments also ask the user what
remote to push to.  Otherwise use the remote and branch as
configured using the Git variables `branch.<name>.remote' and
`branch.<name>.merge'.  If the former is undefined ask the user.
If the latter is undefined push without specifing the remote
branch explicitly.

Also see option `magit-set-upstream-on-push'.

\(fn)" t nil)

(autoload 'magit-commit "magit/magit" "\
Create a new commit on HEAD.
With a prefix argument amend to the commit at HEAD instead.
\('git commit [--amend]').

\(fn &optional AMENDP)" t nil)

(autoload 'magit-commit-amend "magit/magit" "\
Amend the last commit.
\('git commit --amend').

\(fn)" t nil)

(autoload 'magit-commit-extend "magit/magit" "\
Amend the last commit, without editing the message.
With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-extend-override-date' can be
used to inverse the meaning of the prefix argument.
\('git commit --no-edit --amend [--keep-date]').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit/magit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-rewrite-override-date' can be
used to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\('git commit --only --amend').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit/magit" "\
Create a fixup commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT)" t nil)

(autoload 'magit-commit-squash "magit/magit" "\
Create a squash commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT FIXUP)" t nil)

(autoload 'magit-tag "magit/magit" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.
\('git tag [--annotate] NAME REV').

\(fn NAME REV &optional ANNOTATE)" t nil)

(autoload 'magit-delete-tag "magit/magit" "\
Delete the tag with the given NAME.
\('git tag -d NAME').

\(fn NAME)" t nil)

(autoload 'magit-stash "magit/magit" "\
Create new stash of working tree and staging area named DESCRIPTION.
Working tree and staging area revert to the current 'HEAD'.
With prefix argument, changes in staging area are kept.
\('git stash save [--keep-index] DESCRIPTION')

\(fn DESCRIPTION)" t nil)

(autoload 'magit-stash-snapshot "magit/magit" "\
Create new stash of working tree and staging area; keep changes in place.
\('git stash save \"Snapshot...\"; git stash apply stash@{0}')

\(fn)" t nil)

(autoload 'magit-submodule-update "magit/magit" "\
Update the submodule of the current git repository.
With a prefix arg, do a submodule update --init.

\(fn &optional INIT)" t nil)

(autoload 'magit-submodule-update-init "magit/magit" "\
Update and init the submodule of the current git repository.

\(fn)" t nil)

(autoload 'magit-submodule-init "magit/magit" "\
Initialize the submodules.

\(fn)" t nil)

(autoload 'magit-submodule-sync "magit/magit" "\
Synchronizes submodule's remote URL configuration.

\(fn)" t nil)

(autoload 'magit-bisect-start "magit/magit" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect popup (\\<magit-status-mode-map>\\[magit-key-mode-popup-bisecting]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit/magit" "\
After bisecting cleanup bisection state and return to original HEAD.

\(fn)" t nil)

(autoload 'magit-bisect-good "magit/magit" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-bad "magit/magit" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-skip "magit/magit" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one.

\(fn)" t nil)

(autoload 'magit-bisect-run "magit/magit" "\
Bisect automatically by running commands after each step.

\(fn CMDLINE)" t nil)

(autoload 'magit-log "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-log-long "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-long-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-file-log "magit/magit" "\
Display the log for the currently visited file or another one.
With a prefix argument show the log graph.

\(fn FILE &optional USE-GRAPH)" t nil)

(autoload 'magit-reflog "magit/magit" "\
Display the reflog of the current branch.
With a prefix argument another branch can be chosen.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit/magit" "\
Display the HEAD reflog.

\(fn)" t nil)

(autoload 'magit-cherry "magit/magit" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(autoload 'magit-save-index "magit/magit" "\
Add the content of current file as if it was the index.

\(fn)" t nil)

(autoload 'magit-interactive-resolve "magit/magit" "\
Resolve a merge conflict using Ediff.

\(fn FILE)" t nil)

(autoload 'magit-diff "magit/magit" "\
Show differences between two commits.
RANGE should be a range (A..B or A...B) but can also be a single
commit.  If one side of the range is omitted, then it defaults
to HEAD.  If just a commit is given, then changes in the working
tree relative to that commit are shown.

\(fn RANGE &optional WORKING ARGS)" t nil)

(autoload 'magit-diff-working-tree "magit/magit" "\
Show differences between a commit and the current working tree.

\(fn REV)" t nil)

(autoload 'magit-diff-staged "magit/magit" "\
Show differences between the index and the HEAD commit.

\(fn)" t nil)

(autoload 'magit-diff-unstaged "magit/magit" "\
Show differences between the current working tree and index.

\(fn)" t nil)

(autoload 'magit-diff-stash "magit/magit" "\
Show changes in a stash.
A Stash consist of more than just one commit.  This command uses
a special diff range so that the stashed changes actually were a
single commit.

\(fn STASH &optional NOSELECT)" t nil)

(autoload 'magit-wazzup "magit/magit" "\
Show a list of branches in a dedicated buffer.
Unlike in the buffer created by `magit-branch-manager' each
branch can be expanded to show a list of commits not merged
into the selected branch.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-manager "magit/magit" "\
Show a list of branches in a dedicated buffer.

\(fn)" t nil)

(autoload 'magit-init "magit/magit" "\
Create or reinitialize a Git repository.
Read directory name and initialize it as new Git repository.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside; or when
the directory is the root of the existing repository, whether
it should be reinitialized.

Non-interactively DIRECTORY is always (re-)initialized.

\(fn DIRECTORY)" t nil)

(autoload 'magit-add-change-log-entry "magit/magit" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit/magit" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-run-git-gui "magit/magit" "\
Run `git gui' for the current git repository.

\(fn)" t nil)

(autoload 'magit-run-git-gui-blame "magit/magit" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the HEAD, with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit/magit" "\
Run Gitk for the current git repository.
Without a prefix argument run `gitk --all', with
a prefix argument run gitk without any arguments.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads nil "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "magit/magit-key-mode" "magit/magit-key-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from magit/magit-key-mode.el

(defvar magit-key-mode-groups '((dispatch (actions ("b" "Branching" magit-key-mode-popup-branching) ("B" "Bisecting" magit-key-mode-popup-bisecting) ("c" "Committing" magit-key-mode-popup-committing) ("d" "Diff worktree" magit-diff-working-tree) ("D" "Diff" magit-diff) ("f" "Fetching" magit-key-mode-popup-fetching) ("F" "Pulling" magit-key-mode-popup-pulling) ("g" "Refresh Buffers" magit-refresh-all) ("l" "Logging" magit-key-mode-popup-logging) ("m" "Merging" magit-key-mode-popup-merging) ("M" "Remoting" magit-key-mode-popup-remoting) ("P" "Pushing" magit-key-mode-popup-pushing) ("o" "Submoduling" magit-key-mode-popup-submodule) ("r" "Rewriting" magit-key-mode-popup-rewriting) ("R" "Rebasing" magit-rebase-step) ("s" "Show Status" magit-status) ("S" "Stage all" magit-stage-all) ("t" "Tagging" magit-key-mode-popup-tagging) ("U" "Unstage all" magit-unstage-all) ("v" "Show Commit" magit-show-commit) ("V" "Show File" magit-show) ("w" "Wazzup" magit-wazzup) ("X" "Reset worktree" magit-reset-working-tree) ("y" "Cherry" magit-cherry) ("z" "Stashing" magit-key-mode-popup-stashing) ("!" "Running" magit-key-mode-popup-running) ("$" "Show Process" magit-display-process))) (logging (man-page "git-log") (actions ("l" "Short" magit-log) ("L" "Long" magit-log-long) ("h" "Head Reflog" magit-reflog-head) ("f" "File log" magit-file-log) ("rl" "Ranged short" magit-log-ranged) ("rL" "Ranged long" magit-log-long-ranged) ("rh" "Reflog" magit-reflog)) (switches ("-m" "Only merge commits" "--merges") ("-s" "No merge commits" "--no-merges") ("-do" "Date Order" "--date-order") ("-f" "First parent" "--first-parent") ("-i" "Case insensitive patterns" "-i") ("-pr" "Pickaxe regex" "--pickaxe-regex") ("-g" "Show Graph" "--graph") ("-n" "Name only" "--name-only") ("-am" "All match" "--all-match") ("-al" "All" "--all")) (arguments ("=r" "Relative" "--relative=" read-directory-name) ("=c" "Committer" "--committer=" read-from-minibuffer) ("=>" "Since" "--since=" read-from-minibuffer) ("=<" "Before" "--before=" read-from-minibuffer) ("=a" "Author" "--author=" read-from-minibuffer) ("=g" "Grep messages" "--grep=" read-from-minibuffer) ("=G" "Grep patches" "-G" read-from-minibuffer) ("=L" "Trace evolution of line range [long log only]" "-L" magit-read-file-trace) ("=s" "Pickaxe search" "-S" read-from-minibuffer) ("=b" "Branches" "--branches=" read-from-minibuffer) ("=R" "Remotes" "--remotes=" read-from-minibuffer))) (running (actions ("!" "Git Subcommand (from root)" magit-git-command-topdir) (":" "Git Subcommand (from pwd)" magit-git-command) ("g" "Git Gui" magit-run-git-gui) ("k" "Gitk" magit-run-gitk))) (fetching (man-page "git-fetch") (actions ("f" "Current" magit-fetch-current) ("a" "All" magit-remote-update) ("o" "Other" magit-fetch)) (switches ("-p" "Prune" "--prune"))) (pushing (man-page "git-push") (actions ("P" "Push" magit-push) ("t" "Push tags" magit-push-tags)) (switches ("-f" "Force" "--force") ("-d" "Dry run" "-n") ("-u" "Set upstream" "-u"))) (pulling (man-page "git-pull") (actions ("F" "Pull" magit-pull)) (switches ("-f" "Force" "--force") ("-r" "Rebase" "--rebase"))) (branching (man-page "git-branch") (actions ("v" "Branch manager" magit-branch-manager) ("b" "Checkout" magit-checkout) ("c" "Create" magit-create-branch) ("r" "Rename" magit-rename-branch) ("k" "Delete" magit-delete-branch)) (switches ("-t" "Set upstream configuration" "--track") ("-m" "Merged to HEAD" "--merged") ("-M" "Merged to master" "--merged=master") ("-n" "Not merged to HEAD" "--no-merged") ("-N" "Not merged to master" "--no-merged=master")) (arguments ("=c" "Contains" "--contains=" magit-read-rev-with-default) ("=m" "Merged" "--merged=" magit-read-rev-with-default) ("=n" "Not merged" "--no-merged=" magit-read-rev-with-default))) (remoting (man-page "git-remote") (actions ("v" "Remote manager" magit-branch-manager) ("a" "Add" magit-add-remote) ("r" "Rename" magit-rename-remote) ("k" "Remove" magit-remove-remote))) (tagging (man-page "git-tag") (actions ("t" "Create" magit-tag) ("k" "Delete" magit-delete-tag)) (switches ("-a" "Annotate" "--annotate") ("-f" "Force" "--force") ("-s" "Sign" "--sign"))) (stashing (man-page "git-stash") (actions ("v" "View" magit-diff-stash) ("z" "Save" magit-stash) ("s" "Snapshot" magit-stash-snapshot) ("a" "Apply" magit-stash-apply) ("p" "Pop" magit-stash-pop) ("k" "Drop" magit-stash-drop)) (switches ("-k" "Keep index" "--keep-index") ("-u" "Include untracked files" "--include-untracked") ("-a" "Include all files" "--all"))) (committing (man-page "git-commit") (actions ("c" "Commit" magit-commit) ("a" "Amend" magit-commit-amend) ("e" "Extend" magit-commit-extend) ("r" "Reword" magit-commit-reword) ("f" "Fixup" magit-commit-fixup) ("s" "Squash" magit-commit-squash)) (switches ("-a" "Stage all modified and deleted files" "--all") ("-e" "Allow empty commit" "--allow-empty") ("-v" "Show diff of changes to be committed" "--verbose") ("-n" "Bypass git hooks" "--no-verify") ("-s" "Add Signed-off-by line" "--signoff") ("-R" "Claim authorship and reset author date" "--reset-author")) (arguments ("=A" "Override the author" "--author=" read-from-minibuffer) ("=S" "Sign using gpg" "--gpg-sign=" magit-read-gpg-secret-key))) (merging (man-page "git-merge") (actions ("m" "Merge" magit-merge) ("A" "Abort" magit-merge-abort)) (switches ("-ff" "Fast-forward only" "--ff-only") ("-nf" "No fast-forward" "--no-ff") ("-sq" "Squash" "--squash")) (arguments ("-st" "Strategy" "--strategy=" read-from-minibuffer))) (rewriting (actions ("b" "Begin" magit-rewrite-start) ("s" "Stop" magit-rewrite-stop) ("a" "Abort" magit-rewrite-abort) ("f" "Finish" magit-rewrite-finish) ("d" "Diff pending" magit-rewrite-diff-pending) ("*" "Set unused" magit-rewrite-set-unused) ("." "Set used" magit-rewrite-set-used))) (apply-mailbox (man-page "git-am") (actions ("J" "Apply Mailbox" magit-apply-mailbox)) (switches ("-s" "add a Signed-off-by line to the commit message" "--signoff") ("-3" "allow fall back on 3way merging if needed" "--3way") ("-k" "pass -k flag to git-mailinfo" "--keep") ("-c" "strip everything before a scissors line" "--scissors") ("-p" "pass it through git-apply" "-p") ("-r" "override error message when patch failure occurs" "--resolvemsg") ("-d" "lie about committer date" "--committer-date-is-author-date") ("-D" "use current timestamp for author date" "--ignore-date") ("-b" "pass -b flag to git-mailinfo" "--keep-non-patch")) (arguments ("=p" "format the patch(es) are in" "--patch-format=" read-from-minibuffer))) (submodule (man-page "git-submodule") (actions ("u" "Update" magit-submodule-update) ("b" "Both update and init" magit-submodule-update-init) ("i" "Init" magit-submodule-init) ("s" "Sync" magit-submodule-sync))) (bisecting (man-page "git-bisect") (actions ("b" "Bad" magit-bisect-bad) ("g" "Good" magit-bisect-good) ("k" "Skip" magit-bisect-skip) ("r" "Reset" magit-bisect-reset) ("s" "Start" magit-bisect-start) ("u" "Run" magit-bisect-run))) (diff-options (actions ("s" "Set" magit-set-diff-options) ("d" "Set default" magit-set-default-diff-options) ("c" "Save default" magit-save-default-diff-options) ("r" "Reset to default" magit-reset-diff-options) ("h" "Toggle Hunk Refinement" magit-diff-toggle-refine-hunk)) (switches ("-m" "Show smallest possible diff" "--minimal") ("-p" "Use patience diff algorithm" "--patience") ("-h" "Use histogram diff algorithm" "--histogram") ("-b" "Ignore whitespace changes" "--ignore-space-change") ("-w" "Ignore all whitespace" "--ignore-all-space") ("-W" "Show surrounding functions" "--function-context")))) "\
Holds the key, help, function mapping for the log-mode.
If you modify this make sure you reset `magit-key-mode-keymaps'
to nil.")
 (mapc (lambda (g) (eval `(autoload ',(intern (concat "magit-key-mode-popup-" (symbol-name (car g)))) "magit-key-mode" ,(concat "Key menu for " (symbol-name (car g))) t))) magit-key-mode-groups)

;;;***

;;;### (autoloads nil "magit/magit-stgit" "magit/magit-stgit.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-refresh "magit/magit-stgit" "\
Refresh a StGit patch.

\(fn &optional PATCH)" t nil)

(autoload 'magit-stgit-repair "magit/magit-stgit" "\
Repair StGit metadata if branch was modified with git commands.
In the case of Git commits these will be imported as new patches
into the series.

\(fn)" t nil)

(autoload 'magit-stgit-rebase "magit/magit-stgit" "\
Rebase a StGit patch series.

\(fn)" t nil)

(autoload 'magit-stgit-discard "magit/magit-stgit" "\
Discard a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-goto "magit/magit-stgit" "\
Set PATCH as target of StGit push and pop operations.

\(fn PATCH)" nil nil)

(autoload 'magit-stgit-show "magit/magit-stgit" "\
Show diff of a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "magit/magit-svn" "magit/magit-svn.el" (21520
;;;;;;  48369 0 0))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-find-rev "magit/magit-svn" "\
Find commit for svn REVISION in BRANCH.

\(fn REV &optional BRANCH)" t nil)

(autoload 'magit-svn-create-branch "magit/magit-svn" "\
Create svn branch NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-create-tag "magit/magit-svn" "\
Create svn tag NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-rebase "magit/magit-svn" "\
Run git-svn rebase.

\(fn)" t nil)

(autoload 'magit-svn-dcommit "magit/magit-svn" "\
Run git-svn dcommit.

\(fn)" t nil)

(autoload 'magit-svn-remote-update "magit/magit-svn" "\
Run git-svn fetch.

\(fn)" t nil)

(autoload 'magit-svn-fetch-externals "magit/magit-svn" "\
Loops through all external repos found by `magit-svn-external-directories'
   and runs git svn fetch, and git svn rebase on each of them.

\(fn)" t nil)

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "magit/magit-topgit" "magit/magit-topgit.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "magit/magit-wip" "magit/magit-wip.el" (21520
;;;;;;  48369 0 0))
;;; Generated autoloads from magit/magit-wip.el

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a
writable git repository then it is also committed to a special
work-in-progress ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (21520 48369 0 0))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "names/names" "names/names.el" (22090 56664
;;;;;;  0 0))
;;; Generated autoloads from names/names.el

(defvar names--inside-make-autoload nil "\
Used in `make-autoload' to indicate we're making autoloads.")

(autoload 'define-namespace "names/names" "\
Inside the namespace NAME, execute BODY.
NAME can be any symbol (not quoted), but it's highly recommended
to use some form of separator (such as :, /, or -). For a
complete description of this macro, please visit the frontpage
with \\[names-view-manual].

In summary, this macro has two main effects:

1. Any definitions inside BODY will have NAME prepended to the
symbol given. Ex:

    (define-namespace foo-
    (defvar bar 1 \"docs\")
    )

expands to

    (defvar foo-bar 1 \"docs\")


2. Any function calls and variable names get NAME prepended to
them if such a variable or function exists. Ex:

    (define-namespace foo:
    (defun message (x y) nil)
    (message \"%s\" my-var)
    )

expands to

    (defun foo:message (x y) nil)
    (foo:message \"%s\" my-var)

Note how `message' is expanded to `foo:message' in the second
form, because that function exists. Meanwhile, `bar' is left
untouched because `foo:bar' is not a known variable name.

===============================

AUTOLOAD

In order for `define-namespace' to work with \";;;###autoload\"
comments must replace all instances of \";;;###autoload\" inside
your `define-namespace' with `:autoload'.
Afterwards, add an \";;;###autoload\" comment just above your
`define-namespace'.

===============================

KEYWORDS

Immediately after NAME you may add keywords which customize the
behaviour of `define-namespace'. For a list of possible keywords
and a description of their effects, see the variable
`names--keyword-list'.

\(fn NAME [KEYWORD ...] BODY)" nil t)

(put 'define-namespace 'lisp-indent-function '(lambda (&rest x) 0))

(eval-after-load 'find-func '(defadvice find-function-search-for-symbol (around names-around-find-function-search-for-symbol-advice (symbol type library) activate) "Make sure `find-function-search-for-symbol' understands namespaces." ad-do-it (ignore-errors (unless (cdr ad-return-value) (with-current-buffer (car ad-return-value) (search-forward-regexp "^(define-namespace\\_>") (skip-chars-forward "\n[:blank:]") (let* ((names--regexp (concat "\\`" (regexp-quote (symbol-name (read (current-buffer)))))) (short-symbol (let ((name (symbol-name symbol))) (when (string-match names--regexp name) (intern (replace-match "" nil nil name)))))) (when short-symbol (ad-set-arg 0 short-symbol) ad-do-it)))))))

(defadvice make-autoload (around names-before-make-autoload-advice (form file &optional expansion) activate) "\
Make sure `make-autoload' understands `define-namespace'.
Use the `names--inside-make-autoload' variable to indicate to
`define-namespace' that we're generating autoloads." (require (quote names)) (if (null (eq (car-safe form) (quote define-namespace))) ad-do-it (setq names--inside-make-autoload t) (setq form (macroexpand form)) (setq names--inside-make-autoload nil) (if (version< emacs-version "24.3") (setq ad-return-value (cons (quote progn) (mapcar (lambda (x) (names--make-autoload-compat x file)) (cdr form)))) (ad-set-arg 2 (quote expansion)) (ad-set-arg 0 form) ad-do-it)))

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/htmlize" "org-mode/contrib/lisp/htmlize.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/htmlize.el

(autoload 'htmlize-buffer "org-mode/contrib/lisp/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "org-mode/contrib/lisp/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "org-mode/contrib/lisp/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "org-mode/contrib/lisp/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "org-mode/contrib/lisp/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-annotate-file" "org-mode/contrib/lisp/org-annotate-file.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-annotate-file.el

(autoload 'org-annotate-file "org-mode/contrib/lisp/org-annotate-file" "\
Visit `org-annotate-file-storage-file` and add a new annotation section.
The annotation is opened at the new section which will be referencing
the point in the current file.

\(fn)" t nil)

(autoload 'org-annotate-file-show-section "org-mode/contrib/lisp/org-annotate-file" "\
Add or show annotation entry in STORAGE-FILE and return the buffer.
The annotation will link to ANNOTATED-BUFFER if specified,
  otherwise the current buffer is used.

\(fn STORAGE-FILE &optional ANNOTATED-BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-bullets" "org-mode/contrib/lisp/org-bullets.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-bullets.el

(autoload 'org-bullets-mode "org-mode/contrib/lisp/org-bullets" "\
UTF-8 bullets for `org-mode'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-colview-xemacs"
;;;;;;  "org-mode/contrib/lisp/org-colview-xemacs.el" (21520 48370
;;;;;;  0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-colview-xemacs.el

(autoload 'org-columns-remove-overlays "org-mode/contrib/lisp/org-colview-xemacs" "\
Remove all currently active column overlays.

\(fn)" t nil)

(autoload 'org-columns-get-format-and-top-level "org-mode/contrib/lisp/org-colview-xemacs" "\


\(fn)" nil nil)

(autoload 'org-columns-compute "org-mode/contrib/lisp/org-colview-xemacs" "\
Sum the values of property PROPERTY hierarchically, for the entire buffer.

\(fn PROPERTY)" t nil)

(autoload 'org-columns-number-to-string "org-mode/contrib/lisp/org-colview-xemacs" "\
Convert a computed column number to a string value, according to FMT.

\(fn N FMT &optional PRINTF)" nil nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-contacts" "org-mode/contrib/lisp/org-contacts.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-contacts.el

(autoload 'org-contacts "org-mode/contrib/lisp/org-contacts" "\
Create agenda view for contacts matching NAME.

\(fn NAME)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-registry" "org-mode/contrib/lisp/org-registry.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-registry.el

(autoload 'org-registry-show "org-mode/contrib/lisp/org-registry" "\
Show Org files where there are links pointing to the current
buffer.

\(fn &optional VISIT)" t nil)

(autoload 'org-registry-visit "org-mode/contrib/lisp/org-registry" "\
If an Org file contains a link to the current location, visit
this file.

\(fn)" t nil)

(autoload 'org-registry-initialize "org-mode/contrib/lisp/org-registry" "\
Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

\(fn &optional FROM-SCRATCH)" t nil)

(autoload 'org-registry-insinuate "org-mode/contrib/lisp/org-registry" "\
Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

\(fn)" t nil)

(autoload 'org-registry-update "org-mode/contrib/lisp/org-registry" "\
Update the registry for the current Org file.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-screenshot" "org-mode/contrib/lisp/org-screenshot.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-screenshot.el

(autoload 'org-screenshot-take "org-mode/contrib/lisp/org-screenshot" "\
Take a screenshot and insert link to it at point, if image
display is already on (see \\[org-toggle-inline-images])
screenshot will be displayed as an image

Screen area for the screenshot is selected with the mouse, left
click on a window screenshots that window, while left click and
drag selects a region. Pressing any key cancels the screen shot

With `C-u' universal argument waits one second after target is
selected before taking the screenshot. With double `C-u' wait two
seconds.

With triple `C-u' wait 3 seconds, and also rings the bell when
screenshot is done, any more `C-u' after that increases delay by
2 seconds

\(fn &optional DELAY)" t nil)

(autoload 'org-screenshot-rotate-prev "org-mode/contrib/lisp/org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-rotate-next "org-mode/contrib/lisp/org-screenshot" "\
Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

\(fn DIR)" t nil)

(autoload 'org-screenshot-show-unused "org-mode/contrib/lisp/org-screenshot" "\
Open A Dired buffer with unused screenshots marked

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-toc" "org-mode/contrib/lisp/org-toc.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-toc.el

(autoload 'org-toc-show "org-mode/contrib/lisp/org-toc" "\
Show the table of contents of the current Org-mode buffer.

\(fn &optional DEPTH POSITION)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/org-track" "org-mode/contrib/lisp/org-track.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/org-track.el

(autoload 'org-track-fetch-package "org-mode/contrib/lisp/org-track" "\
Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'org-track-compile-org "org-mode/contrib/lisp/org-track" "\
Compile all *.el files that come with org-mode.
Generate the autoloads file `org-loaddefs.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-freemind" "org-mode/contrib/lisp/ox-freemind.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/ox-freemind.el

(autoload 'org-freemind-export-to-freemind "org-mode/contrib/lisp/ox-freemind" "\
Export current buffer to a Freemind Mindmap file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-koma-letter" "org-mode/contrib/lisp/ox-koma-letter.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/ox-koma-letter.el

(autoload 'org-koma-letter-export-as-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a proeprty list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org KOMA-LETTER Export*\".  It
will be displayed if `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-latex "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-koma-letter-export-to-pdf "org-mode/contrib/lisp/ox-koma-letter" "\
Export current buffer as a KOMA Scrlttr2 letter (pdf).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-rss" "org-mode/contrib/lisp/ox-rss.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/ox-rss.el

(autoload 'org-rss-export-as-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org RSS Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-export-to-rss "org-mode/contrib/lisp/ox-rss" "\
Export current buffer to a RSS file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-rss-publish-to-rss "org-mode/contrib/lisp/ox-rss" "\
Publish an org file to RSS.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

;;;***

;;;### (autoloads nil "org-mode/contrib/lisp/ox-taskjuggler" "org-mode/contrib/lisp/ox-taskjuggler.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/contrib/lisp/ox-taskjuggler.el

(autoload 'org-taskjuggler-export "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-and-process "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file and process it.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return a list of reports.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

(autoload 'org-taskjuggler-export-process-and-open "org-mode/contrib/lisp/ox-taskjuggler" "\
Export current buffer to a TaskJuggler file, process and open it.

Export and process the file using
`org-taskjuggler-export-and-process' and open the generated
reports with a browser.

If you are targeting TaskJuggler 2.4 (see
`org-taskjuggler-target-version') the processing and display of
the reports is done using the TaskJuggler GUI.

\(fn &optional SUBTREEP VISIBLE-ONLY)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org" "org-mode/lisp/org.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org.el

(autoload 'org-babel-do-load-languages "org-mode/lisp/org" "\
Load the languages defined in `org-babel-load-languages'.

\(fn SYM VALUE)" nil nil)

(autoload 'org-babel-load-file "org-mode/lisp/org" "\
Load Emacs Lisp source code blocks in the Org-mode FILE.
This function exports the source code using `org-babel-tangle'
and then loads the resulting file using `load-file'.  With prefix
arg (noninteractively: 2nd arg) COMPILE the tangled Emacs Lisp
file to byte-code before it is loaded.

\(fn FILE &optional COMPILE)" t nil)

(autoload 'org-version "org-mode/lisp/org" "\
Show the org-mode version.
Interactively, or when MESSAGE is non-nil, show it in echo area.
With prefix argument, or when HERE is non-nil, insert it at point.
In non-interactive uses, a reduced version string is output unless
FULL is given.

\(fn &optional HERE FULL MESSAGE)" t nil)

(autoload 'turn-on-orgtbl "org-mode/lisp/org" "\
Unconditionally turn on `orgtbl-mode'.

\(fn)" nil nil)

(autoload 'org-clock-persistence-insinuate "org-mode/lisp/org" "\
Set up hooks for clock persistence.

\(fn)" nil nil)

(autoload 'org-mode "org-mode/lisp/org" "\
Outline-based notes management and organizer, alias
\"Carsten's outline-mode for keeping track of everything.\"

Org-mode develops organizational tasks around a NOTES file which
contains information about projects as plain text.  Org-mode is
implemented on top of outline-mode, which is ideal to keep the content
of large files well structured.  It supports ToDo items, deadlines and
time stamps, which magically appear in the diary listing of the Emacs
calendar.  Tables are easily created with a built-in table editor.
Plain text URL-like links connect to websites, emails (VM), Usenet
messages (Gnus), BBDB entries, and any files related to the project.
For printing and sharing of notes, an Org-mode file (or a part of it)
can be exported as a structured ASCII or HTML file.

The following commands are available:

\\{org-mode-map}

\(fn)" t nil)

(autoload 'org-cycle "org-mode/lisp/org" "\
TAB-action and visibility cycling for Org-mode.

This is the command invoked in Org-mode by the TAB key.  Its main purpose
is outline visibility cycling, but it also invokes other actions
in special contexts.

- When this function is called with a prefix argument, rotate the entire
  buffer through 3 states (global cycling)
  1. OVERVIEW: Show only top-level headlines.
  2. CONTENTS: Show all headlines of all levels, but no body text.
  3. SHOW ALL: Show everything.
  When called with two `C-u C-u' prefixes, switch to the startup visibility,
  determined by the variable `org-startup-folded', and by any VISIBILITY
  properties in the buffer.
  When called with three `C-u C-u C-u' prefixed, show the entire buffer,
  including any drawers.

- When inside a table, re-align the table and move to the next field.

- When point is at the beginning of a headline, rotate the subtree started
  by this line through 3 different states (local cycling)
  1. FOLDED:   Only the main headline is shown.
  2. CHILDREN: The main headline and the direct children are shown.
               From this state, you can move to one of the children
               and zoom in further.
  3. SUBTREE:  Show the entire subtree, including body text.
  If there is no subtree, switch directly from CHILDREN to FOLDED.

- When point is at the beginning of an empty headline and the variable
  `org-cycle-level-after-item/entry-creation' is set, cycle the level
  of the headline by demoting and promoting it to likely levels.  This
  speeds up creation document structure by pressing TAB once or several
  times right after creating a new headline.

- When there is a numeric prefix, go up to a heading with level ARG, do
  a `show-subtree' and return to the previous cursor position.  If ARG
  is negative, go up that many levels.

- When point is not at the beginning of a headline, execute the global
  binding for TAB, which is re-indenting the line.  See the option
  `org-cycle-emulate-tab' for details.

- Special case: if point is at the beginning of the buffer and there is
  no headline in line 1, this function will act as if called with prefix arg
  (C-u TAB, same as S-TAB) also when called without prefix arg.
  But only if also the variable `org-cycle-global-at-bob' is t.

\(fn &optional ARG)" t nil)

(autoload 'org-global-cycle "org-mode/lisp/org" "\
Cycle the global visibility.  For details see `org-cycle'.
With \\[universal-argument] prefix arg, switch to startup visibility.
With a numeric prefix, show all headlines up to that level.

\(fn &optional ARG)" t nil)
(put 'orgstruct-heading-prefix-regexp 'safe-local-variable 'stringp)

(autoload 'orgstruct-mode "org-mode/lisp/org" "\
Toggle the minor mode `orgstruct-mode'.
This mode is for using Org-mode structure commands in other
modes.  The following keys behave as if Org-mode were active, if
the cursor is on a headline, or on a plain list item (both as
defined by Org-mode).

\(fn &optional ARG)" t nil)

(autoload 'turn-on-orgstruct "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct-mode'.

\(fn)" nil nil)

(autoload 'turn-on-orgstruct++ "org-mode/lisp/org" "\
Unconditionally turn on `orgstruct++-mode'.

\(fn)" nil nil)

(autoload 'org-run-like-in-org-mode "org-mode/lisp/org" "\
Run a command, pretending that the current buffer is in Org-mode.
This will temporarily bind local variables that are typically bound in
Org-mode to the values they have in Org-mode, and then interactively
call CMD.

\(fn CMD)" nil nil)

(autoload 'org-store-link "org-mode/lisp/org" "\
\\<org-mode-map>Store an org-link to the current location.
This link is added to `org-stored-links' and can later be inserted
into an org-buffer with \\[org-insert-link].

For some link types, a prefix arg is interpreted.
For links to Usenet articles, arg negates `org-gnus-prefer-web-links'.
For file links, arg negates `org-context-in-file-links'.

A double prefix arg force skipping storing functions that are not
part of Org's core.

A triple prefix arg force storing a link for each line in the
active region.

\(fn ARG)" t nil)

(autoload 'org-insert-link-global "org-mode/lisp/org" "\
Insert a link like Org-mode does.
This command can be called in any mode to insert a link in Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-at-point-global "org-mode/lisp/org" "\
Follow a link like Org-mode does.
This command can be called in any mode to follow a link that has
Org-mode syntax.

\(fn)" t nil)

(autoload 'org-open-link-from-string "org-mode/lisp/org" "\
Open a link in the string S, as if it was in Org-mode.

\(fn S &optional ARG REFERENCE-BUFFER)" t nil)

(autoload 'org-switchb "org-mode/lisp/org" "\
Switch between Org buffers.
With one prefix argument, restrict available buffers to files.
With two prefix arguments, restrict available buffers to agenda files.

Defaults to `iswitchb' for buffer name completion.
Set `org-completion-use-ido' to make it use ido instead.

\(fn &optional ARG)" t nil)

(defalias 'org-ido-switchb 'org-switchb)

(defalias 'org-iswitchb 'org-switchb)

(autoload 'org-cycle-agenda-files "org-mode/lisp/org" "\
Cycle through the files in `org-agenda-files'.
If the current buffer visits an agenda file, find the next one in the list.
If the current buffer does not, find the first agenda file.

\(fn)" t nil)

(autoload 'org-submit-bug-report "org-mode/lisp/org" "\
Submit a bug report on Org-mode via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your Org-mode version and configuration.

\(fn)" t nil)

(autoload 'org-reload "org-mode/lisp/org" "\
Reload all org lisp files.
With prefix arg UNCOMPILED, load the uncompiled versions.

\(fn &optional UNCOMPILED)" t nil)

(autoload 'org-customize "org-mode/lisp/org" "\
Call the customize function with org as argument.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-agenda" "org-mode/lisp/org-agenda.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-agenda.el

(autoload 'org-toggle-sticky-agenda "org-mode/lisp/org-agenda" "\
Toggle `org-agenda-sticky'.

\(fn &optional ARG)" t nil)

(autoload 'org-agenda "org-mode/lisp/org-agenda" "\
Dispatch agenda commands to collect entries to the agenda buffer.
Prompts for a command to execute.  Any prefix arg will be passed
on to the selected command.  The default selections are:

a     Call `org-agenda-list' to display the agenda for current day or week.
t     Call `org-todo-list' to display the global todo list.
T     Call `org-todo-list' to display the global todo list, select only
      entries with a specific TODO keyword (the user gets a prompt).
m     Call `org-tags-view' to display headlines with tags matching
      a condition  (the user is prompted for the condition).
M     Like `m', but select only TODO entries, no ordinary headlines.
L     Create a timeline for the current buffer.
e     Export views to associated files.
s     Search entries for keywords.
S     Search entries for keywords, only with TODO keywords.
/     Multi occur across all agenda files and also files listed
      in `org-agenda-text-search-extra-files'.
<     Restrict agenda commands to buffer, subtree, or region.
      Press several times to get the desired effect.
>     Remove a previous restriction.
#     List \"stuck\" projects.
!     Configure what \"stuck\" means.
C     Configure custom agenda commands.

More commands can be added by configuring the variable
`org-agenda-custom-commands'.  In particular, specific tags and TODO keyword
searches can be pre-defined in this way.

If the current buffer is in Org-mode and visiting a file, you can also
first press `<' once to indicate that the agenda should be temporarily
\(until the next use of \\[org-agenda]) restricted to the current file.
Pressing `<' twice means to restrict to the current subtree or region
\(if active).

\(fn &optional ARG ORG-KEYS RESTRICTION)" t nil)

(autoload 'org-batch-agenda "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-batch-agenda-csv "org-mode/lisp/org-agenda" "\
Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

The output gives a line for each selected agenda item.  Each
item is a list of comma-separated values, like this:

category,head,type,todo,tags,date,time,extra,priority-l,priority-n

category     The category of the item
head         The headline, without TODO kwd, TAGS and PRIORITY
type         The type of the agenda entry, can be
                todo               selected in TODO match
                tagsmatch          selected in tags match
                diary              imported from diary
                deadline           a deadline on given date
                scheduled          scheduled on given date
                timestamp          entry has timestamp on given date
                closed             entry was closed on given date
                upcoming-deadline  warning about deadline
                past-scheduled     forwarded scheduled item
                block              entry has date block including g. date
todo         The todo keyword, if any
tags         All tags including inherited ones, separated by colons
date         The relevant date, like 2007-2-14
time         The time, like 15:00-16:50
extra        Sting with extra planning info
priority-l   The priority letter if any was given
priority-n   The computed numerical priority
agenda-day   The day in the agenda where this is listed

\(fn CMD-KEY &rest PARAMETERS)" nil t)

(autoload 'org-store-agenda-views "org-mode/lisp/org-agenda" "\
Store agenda views.

\(fn &rest PARAMETERS)" t nil)

(autoload 'org-batch-store-agenda-views "org-mode/lisp/org-agenda" "\
Run all custom agenda commands that have a file argument.

\(fn &rest PARAMETERS)" nil t)

(autoload 'org-agenda-list "org-mode/lisp/org-agenda" "\
Produce a daily/weekly view from all files in variable `org-agenda-files'.
The view will be for the current day or week, but from the overview buffer
you will be able to go to other days/weeks.

With a numeric prefix argument in an interactive call, the agenda will
span ARG days.  Lisp programs should instead specify SPAN to change
the number of days.  SPAN defaults to `org-agenda-span'.

START-DAY defaults to TODAY, or to the most recent match for the weekday
given in `org-agenda-start-on-weekday'.

When WITH-HOUR is non-nil, only include scheduled and deadline
items if they have an hour specification like [h]h:mm.

\(fn &optional ARG START-DAY SPAN WITH-HOUR)" t nil)

(autoload 'org-search-view "org-mode/lisp/org-agenda" "\
Show all entries that contain a phrase or words or regular expressions.

With optional prefix argument TODO-ONLY, only consider entries that are
TODO entries.  The argument STRING can be used to pass a default search
string into this function.  If EDIT-AT is non-nil, it means that the
user should get a chance to edit this string, with cursor at position
EDIT-AT.

The search string can be viewed either as a phrase that should be found as
is, or it can be broken into a number of snippets, each of which must match
in a Boolean way to select an entry.  The default depends on the variable
`org-agenda-search-view-always-boolean'.
Even if this is turned off (the default) you can always switch to
Boolean search dynamically by preceding the first word with  \"+\" or \"-\".

The default is a direct search of the whole phrase, where each space in
the search string can expand to an arbitrary amount of whitespace,
including newlines.

If using a Boolean search, the search string is split on whitespace and
each snippet is searched separately, with logical AND to select an entry.
Words prefixed with a minus must *not* occur in the entry.  Words without
a prefix or prefixed with a plus must occur in the entry.  Matching is
case-insensitive.  Words are enclosed by word delimiters (i.e. they must
match whole words, not parts of a word) if
`org-agenda-search-view-force-full-words' is set (default is nil).

Boolean search snippets enclosed by curly braces are interpreted as
regular expressions that must or (when preceded with \"-\") must not
match in the entry.  Snippets enclosed into double quotes will be taken
as a whole, to include whitespace.

- If the search string starts with an asterisk, search only in headlines.
- If (possibly after the leading star) the search string starts with an
  exclamation mark, this also means to look at TODO entries only, an effect
  that can also be achieved with a prefix argument.
- If (possibly after star and exclamation mark) the search string starts
  with a colon, this will mean that the (non-regexp) snippets of the
  Boolean search must match as full words.

This command searches the agenda files, and in addition the files listed
in `org-agenda-text-search-extra-files'.

\(fn &optional TODO-ONLY STRING EDIT-AT)" t nil)

(autoload 'org-todo-list "org-mode/lisp/org-agenda" "\
Show all (not done) TODO entries from all agenda file in a single list.
The prefix arg can be used to select a specific TODO keyword and limit
the list to these.  When using \\[universal-argument], you will be prompted
for a keyword.  A numeric prefix directly selects the Nth keyword in
`org-todo-keywords-1'.

\(fn &optional ARG)" t nil)

(autoload 'org-tags-view "org-mode/lisp/org-agenda" "\
Show all headlines for all `org-agenda-files' matching a TAGS criterion.
The prefix arg TODO-ONLY limits the search to TODO entries.

\(fn &optional TODO-ONLY MATCH)" t nil)

(autoload 'org-agenda-list-stuck-projects "org-mode/lisp/org-agenda" "\
Create agenda view for projects that are stuck.
Stuck projects are project that have no next actions.  For the definitions
of what a project is and how to check if it stuck, customize the variable
`org-stuck-projects'.

\(fn &rest IGNORE)" t nil)

(autoload 'org-diary "org-mode/lisp/org-agenda" "\
Return diary information from org files.
This function can be used in a \"sexp\" diary entry in the Emacs calendar.
It accesses org files and extracts information from those files to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  For a list of arguments allowed here, see the
variable `org-agenda-entry-types'.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.  Or, if you omit the file name,
all files listed in `org-agenda-files' will be checked automatically:

   &%%(org-diary)

If you don't give any arguments (as in the example above), the default value
of `org-agenda-entry-types' is used: (:deadline :scheduled :timestamp :sexp).
So the example above may also be written as

   &%%(org-diary :deadline :timestamp :sexp :scheduled)

The function expects the lisp variables `entry' and `date' to be provided
by the caller, because this is how the calendar works.  Don't use this
function from a program - use `org-agenda-get-day-entries' instead.

\(fn &rest ARGS)" nil nil)

(autoload 'org-agenda-check-for-timestamp-as-reason-to-ignore-todo-item "org-mode/lisp/org-agenda" "\
Do we have a reason to ignore this TODO entry because it has a time stamp?

\(fn &optional END)" nil nil)

(autoload 'org-agenda-set-restriction-lock "org-mode/lisp/org-agenda" "\
Set restriction lock for agenda, to current subtree or file.
Restriction will be the file if TYPE is `file', or if type is the
universal prefix '(4), or if the cursor is before the first headline
in the file.  Otherwise, restriction will be to the current subtree.

\(fn &optional TYPE)" t nil)

(autoload 'org-calendar-goto-agenda "org-mode/lisp/org-agenda" "\
Compute the Org-mode agenda for the calendar date displayed at the cursor.
This is a command that has to be installed in `calendar-mode-map'.

\(fn)" t nil)

(autoload 'org-agenda-to-appt "org-mode/lisp/org-agenda" "\
Activate appointments found in `org-agenda-files'.
With a \\[universal-argument] prefix, refresh the list of
appointments.

If FILTER is t, interactively prompt the user for a regular
expression, and filter out entries that don't match it.

If FILTER is a string, use this string as a regular expression
for filtering entries out.

If FILTER is a function, filter out entries against which
calling the function returns nil.  This function takes one
argument: an entry from `org-agenda-get-day-entries'.

FILTER can also be an alist with the car of each cell being
either 'headline or 'category.  For example:

  '((headline \"IMPORTANT\")
    (category \"Work\"))

will only add headlines containing IMPORTANT or headlines
belonging to the \"Work\" category.

ARGS are symbols indicating what kind of entries to consider.
By default `org-agenda-to-appt' will use :deadline*, :scheduled*
\(i.e., deadlines and scheduled items with a hh:mm specification)
and :timestamp entries.  See the docstring of `org-diary' for
details and examples.

If an entry has a APPT_WARNTIME property, its value will be used
to override `appt-message-warning-time'.

\(fn &optional REFRESH FILTER &rest ARGS)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-capture" "org-mode/lisp/org-capture.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-capture.el

(autoload 'org-capture-string "org-mode/lisp/org-capture" "\
Capture STRING with the template selected by KEYS.

\(fn STRING &optional KEYS)" t nil)

(autoload 'org-capture "org-mode/lisp/org-capture" "\
Capture something.
\\<org-capture-mode-map>
This will let you select a template from `org-capture-templates', and then
file the newly captured information.  The text is immediately inserted
at the target location, and an indirect buffer is shown where you can
edit it.  Pressing \\[org-capture-finalize] brings you back to the previous state
of Emacs, so that you can continue your work.

When called interactively with a \\[universal-argument] prefix argument GOTO, don't capture
anything, just go to the file/headline where the selected template
stores its notes.  With a double prefix argument \\[universal-argument] \\[universal-argument], go to the last note
stored.

When called with a `C-0' (zero) prefix, insert a template at point.

ELisp programs can set KEYS to a string associated with a template
in `org-capture-templates'.  In this case, interactive selection
will be bypassed.

If `org-capture-use-agenda-date' is non-nil, capturing from the
agenda will use the date at point as the default date.  Then, a
`C-1' prefix will tell the capture process to use the HH:MM time
of the day at point (if any) or the current HH:MM time.

\(fn &optional GOTO KEYS)" t nil)

(autoload 'org-capture-import-remember-templates "org-mode/lisp/org-capture" "\
Set `org-capture-templates' to be similar to `org-remember-templates'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-colview" "org-mode/lisp/org-colview.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-colview.el

(autoload 'org-columns-remove-overlays "org-mode/lisp/org-colview" "\
Remove all currently active column overlays.

\(fn)" t nil)

(autoload 'org-columns-get-format-and-top-level "org-mode/lisp/org-colview" "\


\(fn)" nil nil)

(autoload 'org-columns "org-mode/lisp/org-colview" "\
Turn on column view on an org-mode file.
When COLUMNS-FMT-STRING is non-nil, use it as the column format.

\(fn &optional COLUMNS-FMT-STRING)" t nil)

(autoload 'org-columns-compute "org-mode/lisp/org-colview" "\
Sum the values of property PROPERTY hierarchically, for the entire buffer.

\(fn PROPERTY)" t nil)

(autoload 'org-columns-number-to-string "org-mode/lisp/org-colview" "\
Convert a computed column number to a string value, according to FMT.

\(fn N FMT &optional PRINTF)" nil nil)

(autoload 'org-dblock-write:columnview "org-mode/lisp/org-colview" "\
Write the column view table.
PARAMS is a property list of parameters:

:width    enforce same column widths with <N> specifiers.
:id       the :ID: property of the entry where the columns view
	  should be built.  When the symbol `local', call locally.
	  When `global' call column view with the cursor at the beginning
	  of the buffer (usually this means that the whole buffer switches
	  to column view).  When \"file:path/to/file.org\", invoke column
	  view at the start of that file.  Otherwise, the ID is located
	  using `org-id-find'.
:hlines   When t, insert a hline before each item.  When a number, insert
	  a hline before each level <= that number.
:vlines   When t, make each column a colgroup to enforce vertical lines.
:maxlevel When set to a number, don't capture headlines below this level.
:skip-empty-rows
	  When t, skip rows where all specifiers other than ITEM are empty.
:format   When non-nil, specify the column view format to use.

\(fn PARAMS)" nil nil)

(autoload 'org-insert-columns-dblock "org-mode/lisp/org-colview" "\
Create a dynamic block capturing a column view table.

\(fn)" t nil)

(autoload 'org-agenda-columns "org-mode/lisp/org-colview" "\
Turn on or update column view in the agenda.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-compat" "org-mode/lisp/org-compat.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-compat.el

(autoload 'org-check-version "org-mode/lisp/org-compat" "\
Try very hard to provide sensible version strings.

\(fn)" nil t)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-macs" "org-mode/lisp/org-macs.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-macs.el

(autoload 'org-load-noerror-mustsuffix "org-mode/lisp/org-macs" "\
Load FILE with optional arguments NOERROR and MUSTSUFFIX.  Drop the MUSTSUFFIX argument for XEmacs, which doesn't recognize it.

\(fn FILE)" nil t)

;;;***

;;;### (autoloads nil "org-mode/lisp/org-version" "org-mode/lisp/org-version.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from org-mode/lisp/org-version.el

(autoload 'org-release "org-mode/lisp/org-version" "\
The release version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(autoload 'org-git-version "org-mode/lisp/org-version" "\
The Git version of org-mode.
  Inserted by installing org-mode or when a release is made.

\(fn)" nil nil)

(defvar org-odt-data-dir "/usr/share/emacs/etc/org" "\
The location of ODT styles.")

;;;***

;;;### (autoloads nil "pkg-info/pkg-info" "pkg-info/pkg-info.el"
;;;;;;  (21520 48370 0 0))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads nil "pomodoro/pomodoro" "pomodoro/pomodoro.el"
;;;;;;  (21759 48883 0 0))
;;; Generated autoloads from pomodoro/pomodoro.el

(autoload 'pomodoro:start "pomodoro/pomodoro" "\


\(fn MINUTES)" t nil)

;;;***

;;;### (autoloads nil "projectile/helm-projectile" "projectile/helm-projectile.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from projectile/helm-projectile.el

(autoload 'helm-projectile "projectile/helm-projectile" "\
Use projectile with Helm instead of ido.

With a prefix ARG invalidates the cache first.

\(fn &optional ARG)" t nil)

(eval-after-load 'projectile '(define-key projectile-mode-map (kbd "C-c p h") 'helm-projectile))

;;;***

;;;### (autoloads nil "projectile/projectile" "projectile/projectile.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from projectile/projectile.el

(autoload 'projectile-commander "projectile/projectile" "\
Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods.

\(fn)" t nil)

(defvar projectile-mode-line '(" Projectile" (:eval (format "[%s]" (projectile-project-name)))) "\
Mode line ligher for Projectile.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how Projectile displays its
status in the mode line.  The default value displays the project
name.  Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'projectile-mode-line "projectile/projectile" t)

(autoload 'projectile-mode "projectile/projectile" "\
Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(defvar projectile-global-mode nil "\
Non-nil if Projectile-Global mode is enabled.
See the command `projectile-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-global-mode'.")

(custom-autoload 'projectile-global-mode "projectile/projectile" nil)

(autoload 'projectile-global-mode "projectile/projectile" "\
Toggle Projectile mode in all buffers.
With prefix ARG, enable Projectile-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Projectile mode is enabled in all buffers where
`projectile-on' would do it.
See `projectile-mode' for more information on Projectile mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "puppet-mode/puppet-mode" "puppet-mode/puppet-mode.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from puppet-mode/puppet-mode.el

(autoload 'puppet-mode "puppet-mode/puppet-mode" "\


\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))

;;;***

;;;### (autoloads nil "pyvenv/pyvenv" "pyvenv/pyvenv.el" (21520 48371
;;;;;;  0 0))
;;; Generated autoloads from pyvenv/pyvenv.el

(autoload 'pyvenv-activate "pyvenv/pyvenv" "\
Activate the virtual environment in DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'pyvenv-deactivate "pyvenv/pyvenv" "\
Deactivate any current virtual environment.

\(fn)" t nil)

(autoload 'pyvenv-workon "pyvenv/pyvenv" "\
Activate a virtual environment from $WORKON_HOME.

\(fn NAME)" t nil)

(defvar pyvenv-mode nil "\
Non-nil if Pyvenv mode is enabled.
See the command `pyvenv-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-mode'.")

(custom-autoload 'pyvenv-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-mode "pyvenv/pyvenv" "\
Global minor mode for pyvenv.

Will show the current virtual env in the mode line, and respect a
`pyvenv-workon' setting in files.

\(fn &optional ARG)" t nil)

(autoload 'pyvenv-restart-python "pyvenv/pyvenv" "\
Restart Python inferior processes.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "queue/queue" "queue/queue.el" (21757 49609
;;;;;;  0 0))
;;; Generated autoloads from queue/queue.el

(defalias 'make-queue 'queue-create "\
Create an empty queue data structure.")

;;;***

;;;### (autoloads nil "quickrun/quickrun" "quickrun/quickrun.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from quickrun/quickrun.el

(autoload 'quickrun-set-default "quickrun/quickrun" "\
Set `key' as default key in programing language `lang'

\(fn LANG KEY)" nil nil)

(autoload 'quickrun-add-command "quickrun/quickrun" "\


\(fn KEY ALIST &key DEFAULT MODE OVERRIDE)" nil nil)

(autoload 'quickrun "quickrun/quickrun" "\
Run commands quickly for current buffer
   With universal prefix argument(C-u), select command-key,
   With double prefix argument(C-u C-u), run in compile-only-mode

\(fn &rest PLIST)" t nil)

(autoload 'quickrun-with-arg "quickrun/quickrun" "\
Run commands quickly for current buffer with arguments

\(fn ARG)" t nil)

(autoload 'quickrun-region "quickrun/quickrun" "\
Run commands with specified region

\(fn START END)" t nil)

(autoload 'quickrun-replace-region "quickrun/quickrun" "\
Run commands with specified region and replace

\(fn START END)" t nil)

(autoload 'quickrun-compile-only "quickrun/quickrun" "\
Exec only compilation

\(fn)" t nil)

(autoload 'quickrun-shell "quickrun/quickrun" "\
Run commands in shell for interactive programs

\(fn)" t nil)

(autoload 'anything-quickrun "quickrun/quickrun" "\


\(fn)" t nil)

(autoload 'helm-quickrun "quickrun/quickrun" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "racket-mode/racket-edit" "racket-mode/racket-edit.el"
;;;;;;  (21681 39522 0 0))
;;; Generated autoloads from racket-mode/racket-edit.el

(autoload 'racket-describe-mode "racket-mode/racket-edit" "\
Major mode for describing Racket functions.
\\{racket-describe-mode-map}

\(fn)" t nil)

(add-to-list 'hs-special-modes-alist '(racket-mode "(" ")" ";" nil nil))

;;;***

;;;### (autoloads nil "racket-mode/racket-mode" "racket-mode/racket-mode.el"
;;;;;;  (21681 39521 0 0))
;;; Generated autoloads from racket-mode/racket-mode.el

(autoload 'racket-mode "racket-mode/racket-mode" "\
Major mode for editing Racket.
\\{racket-mode-map}

\(fn)" t nil)

(setq auto-mode-alist (append '(("\\.rkt\\'" . racket-mode) ("\\.rktd\\'" . racket-mode)) auto-mode-alist))

;;;***

;;;### (autoloads nil "racket-mode/racket-repl" "racket-mode/racket-repl.el"
;;;;;;  (21681 39522 0 0))
;;; Generated autoloads from racket-mode/racket-repl.el

(autoload 'racket-repl "racket-mode/racket-repl" "\
Run a Racket REPL in a comint buffer.

When starting Racket, `racket--repl-wait-for-prompt'.

The selected window remains the same.

Does not necessarily cause the REPL buffer to be shown in a window.

Runs `comint-mode-hook' and `racket-repl-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "rainbow-delimiters/rainbow-delimiters" "rainbow-delimiters/rainbow-delimiters.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from rainbow-delimiters/rainbow-delimiters.el

(autoload 'rainbow-delimiters-mode "rainbow-delimiters/rainbow-delimiters" "\
Highlight nested parentheses, brackets, and braces according to their depth.

\(fn &optional ARG)" t nil)

(autoload 'rainbow-delimiters-mode-enable "rainbow-delimiters/rainbow-delimiters" "\
Enable `rainbow-delimiters-mode'.

\(fn)" nil nil)

(autoload 'rainbow-delimiters-mode-disable "rainbow-delimiters/rainbow-delimiters" "\
Disable `rainbow-delimiters-mode'.

\(fn)" nil nil)

(defvar global-rainbow-delimiters-mode nil "\
Non-nil if Global-Rainbow-Delimiters mode is enabled.
See the command `global-rainbow-delimiters-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-rainbow-delimiters-mode'.")

(custom-autoload 'global-rainbow-delimiters-mode "rainbow-delimiters/rainbow-delimiters" nil)

(autoload 'global-rainbow-delimiters-mode "rainbow-delimiters/rainbow-delimiters" "\
Toggle Rainbow-Delimiters mode in all buffers.
With prefix ARG, enable Global-Rainbow-Delimiters mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Rainbow-Delimiters mode is enabled in all buffers where
`rainbow-delimiters-mode-enable' would do it.
See `rainbow-delimiters-mode' for more information on Rainbow-Delimiters mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "rainbow-mode/rainbow-mode" "rainbow-mode/rainbow-mode.el"
;;;;;;  (21520 48373 0 0))
;;; Generated autoloads from rainbow-mode/rainbow-mode.el

(autoload 'rainbow-mode "rainbow-mode/rainbow-mode" "\
Colorize strings that represent colors.
This will fontify with colors the string like \"#aabbcc\" or \"blue\".

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "robe-mode/ac-robe" "robe-mode/ac-robe.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from robe-mode/ac-robe.el

(autoload 'ac-robe-available "robe-mode/ac-robe" "\
Return t if `robe-mode' completions are available, otherwise nil.

\(fn)" nil nil)

(autoload 'ac-robe-setup "robe-mode/ac-robe" "\


\(fn)" nil nil)

(defconst ac-source-robe '((available . ac-robe-available) (candidates . ac-robe-candidates) (document . ac-robe-doc) (symbol . "r")) "\
`auto-complete' completion source for Ruby using `robe-mode'.")

;;;***

;;;### (autoloads nil "robe-mode/company-robe" "robe-mode/company-robe.el"
;;;;;;  (21520 48371 0 0))
;;; Generated autoloads from robe-mode/company-robe.el

(autoload 'company-robe "robe-mode/company-robe" "\
A `company-mode' completion back-end for `robe-mode'.

\(fn COMMAND &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "robe-mode/robe" "robe-mode/robe.el" (21520
;;;;;;  48371 0 0))
;;; Generated autoloads from robe-mode/robe.el

(autoload 'robe-mode "robe-mode/robe" "\
Improved navigation for Ruby.

The following commands are available:

\\{robe-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "rust-mode/rust-mode" "rust-mode/rust-mode.el"
;;;;;;  (22072 4967 0 0))
;;; Generated autoloads from rust-mode/rust-mode.el

(autoload 'rust-mode "rust-mode/rust-mode" "\
Major mode for Rust code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;;;***

;;;### (autoloads nil "rusti/rusti" "rusti/rusti.el" (21874 21016
;;;;;;  0 0))
;;; Generated autoloads from rusti/rusti.el

(autoload 'rusti "rusti/rusti" "\
Run rusti.

Unless ARG is non-nil, switch to the buffer.

\(fn &optional ARG)" t nil)

(defalias 'run-rust #'rusti)

(defalias 'inferior-rust #'rusti)

(autoload 'rusti-minor-mode "rusti/rusti" "\
Add keys and a menu to provide easy access to `rusti' support.
Usage:
  (add-hook 'rust-mode-hook #'rusti-minor-mode)

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "rvm/rvm" "rvm/rvm.el" (21872 42313 0 0))
;;; Generated autoloads from rvm/rvm.el

(autoload 'rvm-use-default "rvm/rvm" "\
use the rvm-default ruby as the current ruby version

\(fn)" t nil)

(autoload 'rvm-activate-corresponding-ruby "rvm/rvm" "\
activate the corresponding ruby version for the file in the current buffer.
This function searches for an .rvmrc file and activates the configured ruby.
If no .rvmrc file is found, the default ruby is used insted.

\(fn)" t nil)

(autoload 'rvm-use "rvm/rvm" "\
switch the current ruby version to any ruby, which is installed with rvm

\(fn NEW-RUBY NEW-GEMSET)" t nil)

(autoload 'rvm-open-gem "rvm/rvm" "\


\(fn GEMHOME)" t nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-edit" "semi/site-lisp/semi/mime-edit.el"
;;;;;;  (21723 27623 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-edit.el

(autoload 'mime-edit-mode "semi/site-lisp/semi/mime-edit" "\
MIME minor mode for editing the tagged MIME message.

In this mode, basically, the message is composed in the tagged MIME
format. The message tag looks like:

	--[[text/plain; charset=ISO-2022-JP][7bit]]

The tag specifies the MIME content type, subtype, optional parameters
and transfer encoding of the message following the tag.  Messages
without any tag are treated as `text/plain' by default.  Charset and
transfer encoding are automatically defined unless explicitly
specified.  Binary messages such as audio and image are usually
hidden.  The messages in the tagged MIME format are automatically
translated into a MIME compliant message when exiting this mode.

Available charsets depend on Emacs version being used.  The following
lists the available charsets of each emacs.

Without mule:	US-ASCII and ISO-8859-1 (or other charset) are available.
With mule:	US-ASCII, ISO-8859-* (except for ISO-8859-5), KOI8-R,
		ISO-2022-JP, ISO-2022-JP-2, EUC-KR, CN-GB-2312,
		CN-BIG5 and ISO-2022-INT-1 are available.

ISO-2022-JP-2 and ISO-2022-INT-1 charsets used in mule is expected to
be used to represent multilingual text in intermixed manner.  Any
languages that has no registered charset are represented as either
ISO-2022-JP-2 or ISO-2022-INT-1 in mule.

If you want to use non-ISO-8859-1 charset in Emacs 19 or XEmacs
without mule, please set variable `default-mime-charset'.  This
variable must be symbol of which name is a MIME charset.

If you want to add more charsets in mule, please set variable
`charsets-mime-charset-alist'.  This variable must be alist of which
key is list of charset and value is symbol of MIME charset.  If name
of coding-system is different as MIME charset, please set variable
`mime-charset-coding-system-alist'.  This variable must be alist of
which key is MIME charset and value is coding-system.

Following commands are available in addition to major mode commands:

\[make single part]
\\[mime-edit-insert-text]	insert a text message.
\\[mime-edit-insert-file]	insert a (binary) file.
\\[mime-eidt-insert-file-as-text] insert a text file.
\\[mime-edit-insert-external]	insert a reference to external body.
\\[mime-edit-insert-voice]	insert a voice message.
\\[mime-edit-insert-message]	insert a mail or news message.
\\[mime-edit-insert-mail]	insert a mail message.
\\[mime-edit-insert-signature]	insert a signature file at end.
\\[mime-edit-insert-key]	insert PGP public key.
\\[mime-edit-insert-tag]	insert a new MIME tag.

\[make enclosure (maybe multipart)]
\\[mime-edit-enclose-alternative-region]   enclose as multipart/alternative.
\\[mime-edit-enclose-parallel-region]	   enclose as multipart/parallel.
\\[mime-edit-enclose-mixed-region]	   enclose as multipart/mixed.
\\[mime-edit-enclose-digest-region]	   enclose as multipart/digest.
\\[mime-edit-enclose-pgp-signed-region]	   enclose as PGP signed.
\\[mime-edit-enclose-pgp-encrypted-region] enclose as PGP encrypted.
\\[mime-edit-enclose-quote-region]	   enclose as verbose mode
					   (to avoid to expand tags)

\[other commands]
\\[mime-edit-set-transfer-level-7bit]	set transfer-level as 7.
\\[mime-edit-set-transfer-level-8bit]	set transfer-level as 8.
\\[mime-edit-set-split]			set message splitting mode.
\\[mime-edit-set-sign]			set PGP-sign mode.
\\[mime-edit-set-encrypt]		set PGP-encryption mode.
\\[mime-edit-preview-message]		preview editing MIME message.
\\[mime-edit-exit]			exit and translate into a MIME
					compliant message.
\\[mime-edit-help]			show this help.
\\[mime-edit-maybe-translate]		exit and translate if in MIME mode,
					then split.

Additional commands are available in some major modes:
C-c C-c		exit, translate and run the original command.
C-c C-s		exit, translate and run the original command.

The following is a message example written in the tagged MIME format.
TABs at the beginning of the line are not a part of the message:

	This is a conventional plain text.  It should be translated
	into text/plain.
	--[[text/plain]]
	This is also a plain text.  But, it is explicitly specified as
	is.
	--[[text/plain; charset=ISO-8859-1]]
	This is also a plain text.  But charset is specified as
	iso-8859-1.

	¡Hola!  Buenos días.  ¿Cómo está usted?
	--[[text/enriched]]
	This is a <bold>enriched text</bold>.
	--[[image/gif][base64]]...image encoded in base64 here...
	--[[audio/basic][base64]]...audio encoded in base64 here...

User customizable variables (not documented all of them):
 mime-edit-prefix
    Specifies a key prefix for MIME minor mode commands.

 mime-ignore-preceding-spaces
    Preceding white spaces in a message body are ignored if non-nil.

 mime-ignore-trailing-spaces
    Trailing white spaces in a message body are ignored if non-nil.

 mime-auto-hide-body
    Hide a non-textual body message encoded in base64 after insertion
    if non-nil.

 mime-transfer-level
    A number of network transfer level.  It should be bigger than 7.
    If you are in 8bit-through environment, please set 8.

 mime-edit-voice-recorder
    Specifies a function to record a voice message and encode it.
    The function `mime-edit-voice-recorder-for-sun' is for Sun
    SparcStations.

 mime-edit-mode-hook
    Turning on MIME mode calls the value of mime-edit-mode-hook, if
    it is non-nil.

 mime-edit-translate-hook
    The value of mime-edit-translate-hook is called just before translating
    the tagged MIME format into a MIME compliant message if it is
    non-nil.  If the hook call the function mime-edit-insert-signature,
    the signature file will be inserted automatically.

 mime-edit-exit-hook
    Turning off MIME mode calls the value of mime-edit-exit-hook, if it is
    non-nil.

\(fn)" t nil)

(autoload 'turn-on-mime-edit "semi/site-lisp/semi/mime-edit" "\
Unconditionally turn on MIME-Edit mode.

\(fn)" t nil)

(defalias 'edit-mime 'turn-on-mime-edit)

(autoload 'mime-edit-decode-message-in-buffer "semi/site-lisp/semi/mime-edit" "\


\(fn &optional DEFAULT-CONTENT-TYPE NOT-DECODE-TEXT)" nil nil)

(autoload 'mime-edit-again "semi/site-lisp/semi/mime-edit" "\
Convert current buffer to MIME-Edit buffer and turn on MIME-Edit mode.
Content-Type and Content-Transfer-Encoding header fields will be
converted to MIME-Edit tags.

\(fn &optional NOT-DECODE-TEXT NO-SEPARATOR NOT-TURN-ON)" t nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-play" "semi/site-lisp/semi/mime-play.el"
;;;;;;  (21723 27623 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-play.el

(autoload 'mime-preview-play-current-entity "semi/site-lisp/semi/mime-play" "\
Play current entity.
It decodes current entity to call internal or external method.  The
method is selected from variable `mime-acting-condition'.
If IGNORE-EXAMPLES (C-u prefix) is specified, this function ignores
`mime-acting-situation-example-list'.
If MODE is specified, play as it.  Default MODE is \"play\".

\(fn &optional IGNORE-EXAMPLES MODE)" t nil)

(autoload 'mime-play-entity "semi/site-lisp/semi/mime-play" "\
Play entity specified by ENTITY.
It decodes the entity to call internal or external method.  The method
is selected from variable `mime-acting-condition'.  If MODE is
specified, play as it.  Default MODE is \"play\".

\(fn ENTITY &optional SITUATION IGNORED-METHOD)" nil nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-view" "semi/site-lisp/semi/mime-view.el"
;;;;;;  (21723 27623 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-view.el

(autoload 'mime-display-message "semi/site-lisp/semi/mime-view" "\
View MESSAGE in MIME-View mode.

Optional argument PREVIEW-BUFFER specifies the buffer of the
presentation.  It must be either nil or a name of preview buffer.

Optional argument MOTHER specifies mother-buffer of the preview-buffer.

Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.

Optional argument ORIGINAL-MAJOR-MODE is major-mode of representation
buffer of MESSAGE.  If it is nil, current `major-mode' is used.

Optional argument KEYMAP is keymap of MIME-View mode.  If it is
non-nil, DEFAULT-KEYMAP-OR-FUNCTION is ignored.  If it is nil,
`mime-view-mode-default-map' is used.

\(fn MESSAGE &optional PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION ORIGINAL-MAJOR-MODE KEYMAP)" nil nil)

(autoload 'mime-view-buffer "semi/site-lisp/semi/mime-view" "\
View RAW-BUFFER in MIME-View mode.
Optional argument PREVIEW-BUFFER is either nil or a name of preview
buffer.
Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.
Optional argument REPRESENTATION-TYPE is representation-type of
message.  It must be nil, `binary' or `cooked'.  If it is nil,
`cooked' is used as default.

\(fn &optional RAW-BUFFER PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION REPRESENTATION-TYPE)" t nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/postpet" "semi/site-lisp/semi/postpet.el"
;;;;;;  (21723 27623 0 0))
;;; Generated autoloads from semi/site-lisp/semi/postpet.el

(autoload 'postpet-decode "semi/site-lisp/semi/postpet" "\


\(fn STRING)" nil nil)

(autoload 'mime-display-application/x-postpet "semi/site-lisp/semi/postpet" "\


\(fn ENTITY SITUATION)" nil nil)

;;;***

;;;### (autoloads nil "simple-httpd/simple-httpd" "simple-httpd/simple-httpd.el"
;;;;;;  (22049 37587 0 0))
;;; Generated autoloads from simple-httpd/simple-httpd.el

(autoload 'httpd-start "simple-httpd/simple-httpd" "\
Start the web server process. If the server is already
running, this will restart the server. There is only one server
instance per Emacs instance.

\(fn)" t nil)

(autoload 'httpd-stop "simple-httpd/simple-httpd" "\
Stop the web server if it is currently running, otherwise do nothing.

\(fn)" t nil)

(autoload 'httpd-serve-directory "simple-httpd/simple-httpd" "\
Start the web server with given `directory' as `httpd-root'.

\(fn DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode/skewer-bower" "skewer-mode/skewer-bower.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-bower.el

(autoload 'skewer-bower-refresh "skewer-mode/skewer-bower" "\
Update the package listing and packages synchronously.

\(fn)" t nil)

(autoload 'skewer-bower-load "skewer-mode/skewer-bower" "\
Dynamically load a library from bower into the current page.

\(fn PACKAGE &optional VERSION)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode/skewer-css" "skewer-mode/skewer-css.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-css.el

(autoload 'skewer-css-mode "skewer-mode/skewer-css" "\
Minor mode for interactively loading new CSS rules.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode/skewer-html" "skewer-mode/skewer-html.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-html.el

(autoload 'skewer-html-mode "skewer-mode/skewer-html" "\
Minor mode for interactively loading new HTML.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode/skewer-mode" "skewer-mode/skewer-mode.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-mode.el

(autoload 'list-skewer-clients "skewer-mode/skewer-mode" "\
List the attached browsers in a buffer.

\(fn)" t nil)

(autoload 'skewer-mode "skewer-mode/skewer-mode" "\
Minor mode for interacting with a browser.

\(fn &optional ARG)" t nil)

(autoload 'run-skewer "skewer-mode/skewer-mode" "\
Attach a browser to Emacs for a skewer JavaScript REPL. Uses
`browse-url' to launch a browser.

\(fn)" t nil)

(autoload 'skewer-run-phantomjs "skewer-mode/skewer-mode" "\
Connect an inferior PhantomJS process to Skewer, returning the process.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "skewer-mode/skewer-repl" "skewer-mode/skewer-repl.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-repl.el

(autoload 'skewer-repl--response-hook "skewer-mode/skewer-repl" "\
Catches all browser messages logging some to the REPL.

\(fn RESPONSE)" nil nil)

(autoload 'skewer-repl "skewer-mode/skewer-repl" "\
Start a JavaScript REPL to be evaluated in the visiting browser.

\(fn)" t nil)

(eval-after-load 'skewer-mode '(progn (add-hook 'skewer-response-hook #'skewer-repl--response-hook) (add-hook 'skewer-repl-mode-hook #'skewer-repl-mode-compilation-shell-hook) (define-key skewer-mode-map (kbd "C-c C-z") #'skewer-repl)))

;;;***

;;;### (autoloads nil "skewer-mode/skewer-setup" "skewer-mode/skewer-setup.el"
;;;;;;  (22049 37602 0 0))
;;; Generated autoloads from skewer-mode/skewer-setup.el

(autoload 'skewer-setup "skewer-mode/skewer-setup" "\
Fully integrate Skewer into js2-mode, css-mode, and html-mode buffers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "smartparens/smartparens" "smartparens/smartparens.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from smartparens/smartparens.el

(autoload 'sp-cheat-sheet "smartparens/smartparens" "\
Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use \\[help-go-back].

You can use `beginning-of-defun' and `end-of-defun' to jump to
the previous/next entry.

Examples are fontified using the `font-lock-string-face' for
better orientation.

\(fn &optional ARG)" t nil)

(defvar sp-keymap (make-sparse-keymap) "\
Keymap used for `smartparens-mode'.")

(autoload 'sp-use-paredit-bindings "smartparens/smartparens" "\
Initiate `sp-keymap' with paredit-compatible bindings for
corresponding functions provided by smartparens.  See variable
`sp-paredit-bindings'.

\(fn)" t nil)

(autoload 'sp-use-smartparens-bindings "smartparens/smartparens" "\
Initiate `sp-keymap' with smartparens bindings for navigation functions.
See variable `sp-smartparens-bindings'.

\(fn)" t nil)

(autoload 'smartparens-mode "smartparens/smartparens" "\
Toggle smartparens mode.

You can enable pre-set bindings by customizing
`sp-base-key-bindings' variable.  The current content of
`sp-keymap' is:

 \\{sp-keymap}

\(fn &optional ARG)" t nil)

(autoload 'smartparens-strict-mode "smartparens/smartparens" "\
Toggle the strict smartparens mode.

When strict mode is active, `delete-char', `kill-word' and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as `paredit-mode'
does).  This is accomplished by remapping them to
`sp-delete-char' and `sp-kill-word'.  There is also function
`sp-kill-symbol' that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with \"/s\"
after the smartparens indicator in the mode list.

\(fn &optional ARG)" t nil)

(defvar smartparens-global-strict-mode nil "\
Non-nil if Smartparens-Global-Strict mode is enabled.
See the command `smartparens-global-strict-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-strict-mode'.")

(custom-autoload 'smartparens-global-strict-mode "smartparens/smartparens" nil)

(autoload 'smartparens-global-strict-mode "smartparens/smartparens" "\
Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens-Strict mode is enabled in all buffers where
`turn-on-smartparens-strict-mode' would do it.
See `smartparens-strict-mode' for more information on Smartparens-Strict mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-strict-mode "smartparens/smartparens" "\
Turn on `smartparens-strict-mode'.

\(fn)" t nil)

(defvar smartparens-global-mode nil "\
Non-nil if Smartparens-Global mode is enabled.
See the command `smartparens-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-mode'.")

(custom-autoload 'smartparens-global-mode "smartparens/smartparens" nil)

(autoload 'smartparens-global-mode "smartparens/smartparens" "\
Toggle Smartparens mode in all buffers.
With prefix ARG, enable Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens mode is enabled in all buffers where
`turn-on-smartparens-mode' would do it.
See `smartparens-mode' for more information on Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-mode "smartparens/smartparens" "\
Turn on `smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-smartparens-mode "smartparens/smartparens" "\
Turn off `smartparens-mode'.

\(fn)" t nil)

(autoload 'show-smartparens-mode "smartparens/smartparens" "\
Toggle visualization of matching pairs.  When enabled, any
matching pair is highlighted after `sp-show-pair-delay' seconds
of Emacs idle time if the point is immediately in front or after
a pair.  This mode works similarly to `show-paren-mode', but
support custom pairs.

\(fn &optional ARG)" t nil)

(defvar show-smartparens-global-mode nil "\
Non-nil if Show-Smartparens-Global mode is enabled.
See the command `show-smartparens-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `show-smartparens-global-mode'.")

(custom-autoload 'show-smartparens-global-mode "smartparens/smartparens" nil)

(autoload 'show-smartparens-global-mode "smartparens/smartparens" "\
Toggle Show-Smartparens mode in all buffers.
With prefix ARG, enable Show-Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Show-Smartparens mode is enabled in all buffers where
`turn-on-show-smartparens-mode' would do it.
See `show-smartparens-mode' for more information on Show-Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-show-smartparens-mode "smartparens/smartparens" "\
Turn on `show-smartparens-mode'.

\(fn)" t nil)

(autoload 'turn-off-show-smartparens-mode "smartparens/smartparens" "\
Turn off `show-smartparens-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sml-mode/sml-mode" "sml-mode/sml-mode.el"
;;;;;;  (20358 8148 0 0))
;;; Generated autoloads from sml-mode/sml-mode.el

(add-to-list 'auto-mode-alist '("\\.s\\(ml\\|ig\\)\\'" . sml-mode))

(autoload 'sml-mode "sml-mode/sml-mode" "\
\\<sml-mode-map>Major mode for editing ML code.
This mode runs `sml-mode-hook' just before exiting.
\\{sml-mode-map}

\(fn)" t nil)

(add-to-list 'completion-ignored-extensions ".cm/")

(add-to-list 'auto-mode-alist '("\\.cm\\'" . sml-cm-mode))

(autoload 'sml-cm-mode "sml-mode/sml-mode" "\
Major mode for SML/NJ's Compilation Manager configuration files.

\(fn)" t nil)

(autoload 'sml-lex-mode "sml-mode/sml-mode" "\
Major Mode for editing ML-Lex files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.grm\\'" . sml-yacc-mode))

(autoload 'sml-yacc-mode "sml-mode/sml-mode" "\
Major Mode for editing ML-Yacc files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sml-mode/sml-proc" "sml-mode/sml-proc.el"
;;;;;;  (20358 8148 0 0))
;;; Generated autoloads from sml-mode/sml-proc.el

(autoload 'run-sml "sml-proc" nil t)

;;;***

;;;### (autoloads nil "smooth-scrolling/smooth-scrolling" "smooth-scrolling/smooth-scrolling.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from smooth-scrolling/smooth-scrolling.el

(defvar smooth-scroll-margin 10 "\
Number of lines of visible margin at the top and bottom of a window.
If the point is within these margins, then scrolling will occur
smoothly for `previous-line' at the top of the window, and for
`next-line' at the bottom.

This is very similar in its goal to `scroll-margin'.  However, it
is implemented by activating `smooth-scroll-down' and
`smooth-scroll-up' advise via `defadvice' for `previous-line' and
`next-line' respectively.  As a result it avoids problems
afflicting `scroll-margin', such as a sudden jump and unexpected
highlighting of a region when the mouse is clicked in the margin.

Scrolling only occurs when the point is closer to the window
boundary it is heading for (top or bottom) than the middle of the
window.  This is to intelligently handle the case where the
margins cover the whole buffer (e.g. `smooth-scroll-margin' set
to 5 and `window-height' returning 10 or less).

See also `smooth-scroll-strict-margins'.")

(custom-autoload 'smooth-scroll-margin "smooth-scrolling/smooth-scrolling" t)

(defvar smooth-scroll-strict-margins t "\
If true, the advice code supporting `smooth-scroll-margin'
will use `count-screen-lines' to determine the number of
*visible* lines between the point and the window top/bottom,
rather than `count-lines' which obtains the number of actual
newlines.  This is because there might be extra newlines hidden
by a mode such as folding-mode, outline-mode, org-mode etc., or
fewer due to very long lines being displayed wrapped when
`truncate-lines' is nil.

However, using `count-screen-lines' can supposedly cause
performance issues in buffers with extremely long lines.  Setting
`cache-long-line-scans' may be able to address this;
alternatively you can set this variable to nil so that the advice
code uses `count-lines', and put up with the fact that sometimes
the point will be allowed to stray into the margin.")

(custom-autoload 'smooth-scroll-strict-margins "smooth-scrolling/smooth-scrolling" t)

(autoload 'smooth-scroll-lines-from-window-top "smooth-scrolling/smooth-scrolling" "\
Work out, using the function indicated by
`smooth-scroll-strict-margins', what the current screen line is,
relative to the top of the window.  Counting starts with 1 referring
to the top line in the window.

\(fn)" t nil)

(autoload 'smooth-scroll-lines-from-window-bottom "smooth-scrolling/smooth-scrolling" "\
Work out, using the function indicated by
`smooth-scroll-strict-margins', how many screen lines there are
between the point and the bottom of the window.  Counting starts
with 1 referring to the bottom line in the window.

\(fn)" t nil)

(autoload 'smooth-scroll-down "smooth-scrolling/smooth-scrolling" "\
Scroll down smoothly if cursor is within `smooth-scroll-margin'
lines of the top of the window.

\(fn)" nil nil)

(autoload 'smooth-scroll-up "smooth-scrolling/smooth-scrolling" "\
Scroll up smoothly if cursor is within `smooth-scroll-margin'
lines of the bottom of the window.

\(fn)" nil nil)

(defadvice previous-line (after smooth-scroll-down (&optional arg try-vscroll) activate) (smooth-scroll-down))

(defadvice next-line (after smooth-scroll-up (&optional arg try-vscroll) activate) (smooth-scroll-up))

(defadvice isearch-repeat (after isearch-smooth-scroll (direction) activate) (if (eq direction 'forward) (smooth-scroll-up) (smooth-scroll-down)))

(setq scroll-margin 0)

(setq redisplay-dont-pause t)

;;;***

;;;### (autoloads nil "solarized-emacs/solarized" "solarized-emacs/solarized.el"
;;;;;;  (21757 53152 0 0))
;;; Generated autoloads from solarized-emacs/solarized.el

(when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "solarized-theme/color-theme-solarized" "solarized-theme/color-theme-solarized.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from solarized-theme/color-theme-solarized.el

(autoload 'color-theme-solarized "solarized-theme/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn MODE)" t nil)

(autoload 'color-theme-solarized-dark "solarized-theme/color-theme-solarized" "\


\(fn)" t nil)

(autoload 'color-theme-solarized-light "solarized-theme/color-theme-solarized" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "solarized-theme/solarized-definitions" "solarized-theme/solarized-definitions.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from solarized-theme/solarized-definitions.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "spinner/spinner" "spinner/spinner.el" (22072
;;;;;;  5204 0 0))
;;; Generated autoloads from spinner/spinner.el

(autoload 'spinner-create "spinner/spinner" "\
Create a spinner of the given TYPE.
The possible TYPEs are described in `spinner--type-to-frames'.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

If BUFFER-LOCAL is non-nil, the spinner will be automatically
deactivated if the buffer is killed.  If BUFFER-LOCAL is a
buffer, use that instead of current buffer.

When started, in order to function properly, the spinner runs a
timer which periodically calls `force-mode-line-update' in the
curent buffer.  If BUFFER-LOCAL was set at creation time, then
`force-mode-line-update' is called in that buffer instead.  When
the spinner is stopped, the timer is deactivated.

DELAY, if given, is the number of seconds to wait after starting
the spinner before actually displaying it. It is safe to cancel
the spinner before this time, in which case it won't display at
all.

\(fn &optional TYPE BUFFER-LOCAL FPS DELAY)" nil nil)

(autoload 'spinner-start "spinner/spinner" "\
Start a mode-line spinner of given TYPE-OR-OBJECT.
If TYPE-OR-OBJECT is an object created with `make-spinner',
simply activate it.  This method is designed for minor modes, so
they can use the spinner as part of their lighter by doing:
    '(:eval (spinner-print THE-SPINNER))
To stop this spinner, call `spinner-stop' on it.

If TYPE-OR-OBJECT is anything else, a buffer-local spinner is
created with this type, and it is displayed in the
`mode-line-process' of the buffer it was created it.  Both
TYPE-OR-OBJECT and FPS are passed to `make-spinner' (which see).
To stop this spinner, call `spinner-stop' in the same buffer.

Either way, the return value is a function which can be called
anywhere to stop this spinner.  You can also call `spinner-stop'
in the same buffer where the spinner was created.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

DELAY, if given, is the number of seconds to wait until actually
displaying the spinner. It is safe to cancel the spinner before
this time, in which case it won't display at all.

\(fn &optional TYPE-OR-OBJECT FPS DELAY)" nil nil)

;;;***

;;;### (autoloads nil "swift-mode/swift-mode" "swift-mode/swift-mode.el"
;;;;;;  (22011 4729 0 0))
;;; Generated autoloads from swift-mode/swift-mode.el

(autoload 'swift-mode-run-repl "swift-mode/swift-mode" "\
Run a REPL process, input and output via buffer `*swift-repl*'.
If there is a process already running in `*swift-repl*', switch to that buffer.
With argument CMD allows you to edit the command line (default is value
of `swift-repl-executable').
With DONT-SWITCH-P cursor will stay in current buffer.
Runs the hook `swift-repl-mode-hook' (after the `comint-mode-hook'
is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'swift-mode "swift-mode/swift-mode" "\
Major mode for Apple's Swift programming language.

\\<swift-mode-map>

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

;;;***

;;;### (autoloads nil "tabbar/revive" "tabbar/revive.el" (21520 48372
;;;;;;  0 0))
;;; Generated autoloads from tabbar/revive.el

(autoload 'current-window-configuration-printable "tabbar/revive" "\
Return the printable current-window-configuration.
This configuration will be stored by restore-window-configuration.
Returned configurations are list of:
'(Screen-Width Screen-Height Edge-List Buffer-List)

Edge-List is a return value of revive:all-window-edges, list of all
window-edges whose first member is always of north west window.

Buffer-List is a list of buffer property list of all windows.  This
property lists are stored in order corresponding to Edge-List.  Buffer
property list is formed as
'((buffer-file-name) (buffer-name) (point) (window-start) tabs).

\(fn)" nil nil)

(autoload 'restore-window-configuration "tabbar/revive" "\
Restore the window configuration.
Configuration CONFIG should be created by
current-window-configuration-printable.

\(fn CONFIG)" nil nil)

(autoload 'wipe "tabbar/revive" "\
Wipe Emacs.

\(fn)" t nil)

(autoload 'save-current-configuration "tabbar/revive" "\
Save current window/buffer configuration into configuration file.

\(fn &optional NUM)" t nil)

(autoload 'resume "tabbar/revive" "\
Resume window/buffer configuration.
Configuration should be saved by save-current-configuration.

\(fn &optional NUM)" t nil)

(autoload 'revive-desktop "tabbar/revive" "\
Restores the application state.
Similar to `resume', though using `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

(autoload 'revive-save-desktop "tabbar/revive" "\
Save application state with `desktop' and `revive'.
Similar to `save-current-configuration',
though uses `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

;;;***

;;;### (autoloads nil "tabbar/tabbar" "tabbar/tabbar.el" (21520 48372
;;;;;;  0 0))
;;; Generated autoloads from tabbar/tabbar.el

(autoload 'tabbar-backward "tabbar/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mode "tabbar/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "undo-tree/undo-tree" "undo-tree/undo-tree.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/elmo" "wanderlust/site-lisp/wl/elmo.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/elmo.el

(autoload 'elmo-make-folder "wanderlust/site-lisp/wl/elmo" "\
Make an ELMO folder structure specified by NAME.
If optional argument NON-PERSISTENT is non-nil, the folder msgdb is not saved.
If optional argument MIME-CHARSET is specified, it is used for
encode and decode a multibyte string.

\(fn NAME &optional NON-PERSISTENT MIME-CHARSET)" nil nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/elmo-split" "wanderlust/site-lisp/wl/elmo-split.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/elmo-split.el

(autoload 'elmo-split "wanderlust/site-lisp/wl/elmo-split" "\
Split messages in the `elmo-split-folder' according to `elmo-split-rule'.
If prefix argument ARG is specified, do a reharsal (no harm).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/im-wl" "wanderlust/site-lisp/wl/im-wl.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/im-wl.el

(autoload 'wl-draft-send-with-imput-async "wanderlust/site-lisp/wl/im-wl" "\
Send the message in the current buffer with imput asynchronously.

\(fn EDITING-BUFFER KILL-WHEN-DONE)" nil nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/wl" "wanderlust/site-lisp/wl/wl.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl.el

(autoload 'wl "wanderlust/site-lisp/wl/wl" "\
Start Wanderlust -- Yet Another Message Interface On Emacsen.
If ARG (prefix argument) is specified, folder checkings are skipped.

\(fn &optional ARG)" t nil)

(autoload 'wl-other-frame "wanderlust/site-lisp/wl/wl" "\
Pop up a frame to read messages via Wanderlust.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/wl-addrmgr" "wanderlust/site-lisp/wl/wl-addrmgr.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl-addrmgr.el

(autoload 'wl-addrmgr "wanderlust/site-lisp/wl/wl-addrmgr" "\
Start an Address manager.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "wanderlust/site-lisp/wl/wl-draft" "wanderlust/site-lisp/wl/wl-draft.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl-draft.el

(autoload 'wl-draft "wanderlust/site-lisp/wl/wl-draft" "\
Write and send mail/news message with Wanderlust.

\(fn &optional HEADER-ALIST CONTENT-TYPE CONTENT-TRANSFER-ENCODING BODY EDIT-AGAIN PARENT-FOLDER PARENT-NUMBER)" t nil)

(autoload 'wl-user-agent-compose "wanderlust/site-lisp/wl/wl-draft" "\
Support the `compose-mail' interface for wl.
Only support for TO, SUBJECT, and OTHER-HEADERS has been implemented.
Support for CONTINUE, YANK-ACTION, SEND-ACTIONS and RETURN-ACTION has not
been implemented yet.  Partial support for SWITCH-FUNCTION now supported.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS RETURN-ACTION)" nil nil)

;;;***

;;;### (autoloads nil "wanderlust/utils/bbdb-wl" "wanderlust/utils/bbdb-wl.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/utils/bbdb-wl.el

(autoload 'bbdb-wl-setup "wanderlust/utils/bbdb-wl" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "wanderlust/utils/im-wl" "wanderlust/utils/im-wl.el"
;;;;;;  (21723 27637 0 0))
;;; Generated autoloads from wanderlust/utils/im-wl.el

(autoload 'wl-draft-send-with-imput-async "wanderlust/utils/im-wl" "\
Send the message in the current buffer with imput asynchronously.

\(fn EDITING-BUFFER KILL-WHEN-DONE)" nil nil)

;;;***

;;;### (autoloads nil "web-mode/web-mode" "web-mode/web-mode.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from web-mode/web-mode.el

(autoload 'web-mode "web-mode/web-mode" "\
Major mode for editing web templates.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "wikipedia-mode/wikipedia-mode" "wikipedia-mode/wikipedia-mode.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from wikipedia-mode/wikipedia-mode.el

(autoload 'wikipedia-mode "wikipedia-mode/wikipedia-mode" "\
Major mode for editing articles written in the markup language used by
Wikipedia, the free on-line encyclopedia (http://www.wikipedia.org).

There are several ways to use wikipedia-mode. One is to copy articles
between Emacs and your web browser's text box. However for GNU emacs,
that does not work always smoothly, since copying marked regions into
other X applications is somehow buggy for GNU emacs. Another way is to
use MozEx, a Mozilla/Firefox web browser extension that allows you to
call Emacs from a text box (http://mozex.mozdev.org/). Another way is
to use the PERL script ee-helper, which allows you to up and download
wiki texts.

Wikipedia articles are usually unfilled: newline characters are not
used for breaking paragraphs into lines. Unfortunately, Emacs does not
handle word wrapping yet. As a workaround, wikipedia-mode turns on
longlines-mode automatically. In case something goes wrong, the
following commands may come in handy:

\\[wikipedia-fill-article] fills the buffer.
\\[wikipedia-unfill-article] unfills the buffer.
Be warned that function can be dead  slow, better use wikipedia-unfill-paragraph-or-region.
\\[wikipedia-unfill-paragraph-or-region] unfills the paragraph
\\[wikipedia-unfill-paragraph-simple] doehe same but simpler.



The following commands put in markup structures.

\\[wikipedia-insert-strong-emphasis] inserts italics
\\[wikipedia-insert-bold] inserts bold text
\\[wikipedia-insert-italics] italics
\\[wikipedia-insert-header] header
\\[wikipedia-insert-link] inserts a link

The following commands are also defined:
\\[wikipedia-insert-user] inserts user name
\\[wikipedia-insert-signature] inserts ~~~~
\\[wikipedia-insert-enumerate] inserts enumerate type structures
\\[wikipedia-insert-itemize] inserts itemize type structures
\\[wikipedia-insert-hline] inserts a hline

The draft functionality
\\[wikipedia-draft]
\\[wikipedia-draft-region]
\\[wikipedia-draft-view-draft]
\\[wikipedia-draft-page]
\\[wikipedia-draft-buffer]

Replying and sending functionality
\\[wikipedia-reply-at-point-simple]
\\[wikipedia-draft-reply]
\\[wikipedia-send-draft-to-mozex]


The register functionality
\\[wikipedia-copy-page-to-register]
\\[defun wikipedia-insert-page-to-register]


Some simple editing commands.
\\[wikipedia-enhance-indent]
\\[wikipedia-yank-prefix]
\\[wikipedia-unfill-paragraph-or-region]



\\[wikipedia-terminate-paragraph]     starts a new list item or paragraph in a context-aware manner.
\\[wikipedia-next-header]     moves to the next (sub)section header.
\\[wikipedia-prev-header]     moves to the previous (sub)section header.

\(fn)" t nil)

(autoload 'wikipedia-draft "wikipedia-mode/wikipedia-mode" "\
Open a temporary buffer in wikipedia mode for editing an wikipedia
 draft, which an arbitrary piece of data. After finishing the editing
 either use C-c C-k \\[wikipedia-draft-buffer] to send the data into
 the wikipedia-draft-data-file, or send  the buffer using C-c C-c
\\[wikipedia-draft-send-to-mozex]  and insert it later into a wikipedia article.

\(fn)" t nil)

(autoload 'wikipedia-draft-page "wikipedia-mode/wikipedia-mode" "\


\(fn)" t nil)

(autoload 'wikipedia-draft-buffer "wikipedia-mode/wikipedia-mode" "\
Wikipedia-draft-buffer sends the contents of the current (temporary)
buffer to the wikipedia-draft-buffer, see the variable
wikipedia-draft-data-file.

\(fn)" t nil)

(defvar wikipedia-draft-send-archive t "\
*Archive the reply.")

;;;***

;;;### (autoloads nil "window-numbering/window-numbering" "window-numbering/window-numbering.el"
;;;;;;  (21647 18019 0 0))
;;; Generated autoloads from window-numbering/window-numbering.el

(defvar window-numbering-mode nil "\
Non-nil if Window-Numbering mode is enabled.
See the command `window-numbering-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `window-numbering-mode'.")

(custom-autoload 'window-numbering-mode "window-numbering/window-numbering" nil)

(autoload 'window-numbering-mode "window-numbering/window-numbering" "\
A minor mode that assigns a number to each window.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "xcscope/xcscope" "xcscope/xcscope.el" (21870
;;;;;;  22172 0 0))
;;; Generated autoloads from xcscope/xcscope.el

(autoload 'cscope-minor-mode "xcscope/xcscope" "\
This cscope minor mode maps cscope keybindings to make cscope
functions more accessible.

Key bindings:
\\{cscope-minor-mode-keymap}

\(fn &optional ARG)" t nil)

(autoload 'cscope-setup "xcscope/xcscope" "\
Automatically turns on cscope-minor-mode when editing C and
C++ sources

\(fn)" t nil)

;;;***

;;;### (autoloads nil "yafolding/yafolding" "yafolding/yafolding.el"
;;;;;;  (21681 56742 0 0))
;;; Generated autoloads from yafolding/yafolding.el

(defvar yafolding-mode-map (let ((map (make-sparse-keymap))) (define-key map (kbd "<C-S-return>") #'yafolding-hide-parent-element) (define-key map (kbd "<C-M-return>") #'yafolding-toggle-all) (define-key map (kbd "<C-return>") #'yafolding-toggle-element) map))

(autoload 'yafolding-mode "yafolding/yafolding" "\
Toggle yafolding mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;;;***

;;;### (autoloads nil "yard-mode/yard-mode" "yard-mode/yard-mode.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from yard-mode/yard-mode.el

(autoload 'yard-mode "yard-mode/yard-mode" "\
Font locking and completion for YARD tags and directives

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "yascroll/yascroll" "yascroll/yascroll.el"
;;;;;;  (21520 48372 0 0))
;;; Generated autoloads from yascroll/yascroll.el

(autoload 'yascroll:show-scroll-bar "yascroll/yascroll" "\
Show scroll bar in BUFFER.

\(fn)" t nil)

(autoload 'yascroll:hide-scroll-bar "yascroll/yascroll" "\
Hide scroll bar of BUFFER.

\(fn)" t nil)

(autoload 'yascroll-bar-mode "yascroll/yascroll" "\
Yet Another Scroll Bar Mode.

\(fn &optional ARG)" t nil)

(defvar global-yascroll-bar-mode nil "\
Non-nil if Global-Yascroll-Bar mode is enabled.
See the command `global-yascroll-bar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-yascroll-bar-mode'.")

(custom-autoload 'global-yascroll-bar-mode "yascroll/yascroll" nil)

(autoload 'global-yascroll-bar-mode "yascroll/yascroll" "\
Toggle Yascroll-Bar mode in all buffers.
With prefix ARG, enable Global-Yascroll-Bar mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yascroll-Bar mode is enabled in all buffers where
`yascroll:turn-on' would do it.
See `yascroll-bar-mode' for more information on Yascroll-Bar mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (21520 48373 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
