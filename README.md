# Emacs Resources

## .emacs.d contents

My personal configuration of Emacs 24.x for Clojure development.

To install Emacs 24 on Debian based distros:
 1. Add PPA https://launchpad.net/~cassou/+archive/emacs
 1. Execute `sudo apt-get install emacs24 emacs24-el emacs24-common-non-dfsg`.

To use this configuration:
 1. In case you have an existing configuration you don't want to loose make a backup of your `~/.emacs` and `~/.emacs.d`.
 1. Remove `~/.emacs.d`. 
 1. Clone this repo using `git clone https://github.com/friemen/emacsd.git ~/.emacs.d`.
 1. Start Emacs, get something to drink.
 1. Restart Emacs.

Clojure nREPL integration is provided by
[CIDER](https://github.com/clojure-emacs/cider). To make full use of
it, the [Leiningen](http://leiningen.org/) cider-nrepl plugin must be
present, either in project.clj or ~/.lein/profiles.clj. Here's my
[profiles.clj](https://gist.github.com/friemen/5153156d765265fe5c13)
as example.

## Some M-x commands

Command | Description
--- | ---
clojure-cheatsheet | Open cheatsheet
eshell | Create buffer with terminal
httpd-start | Start internal http server
impatient-mode | Enable buffers impatient minor mode
linum-mode | Toggle line number display on the left
magit-status | Show Magit buffer
query-string | Replace all to end of buffer, ask for each
replace-string | Replace all to end of buffer
rgrep | Grep for pattern recursively in files
string-rectangle | Insert prefix to every marked line
visual-line-mode | Switch nice word wrap on/off

## Shortcuts


File/buffer/window commands
```
C-x C-c     Exit Emacs
C-x C-f     Find file
C-x C-s     Save buffer
C-x C-w     Write buffer to other file
C-x d       Show directory (dired+)
C-x C-j     Open dired and go to file in current buffer
s-y         Toggle directory bar (sr-speedbar)
C-x b       Switch buffer
C-tab       Switch buffer
C-x C-b     List buffers (ibuffer)
C-x k       Kill buffer
C-escape    Kill buffer
C-x g       Git status (magit)
C-x o       Jump to next window
C-x 1       Delete other windows
C-x 0       Delete current window
C-x 2       Split window horizontally
C-x 3       Split window vertically
C-l         Center buffer to point
M-left      Goto previous tab
M-right     Goto next tab
```

Movement of point
```
C-n         Line down
C-p         Line up
M-f         Word forward
M-b         Word backward
C-a         Line begin
C-e         Line end
M-<         Buffer begin
M->         Buffer end
C-c Space   Ace Jump
```

General edit commands
```
C-z         Undo
C-k         Kill line
C-d         Kill character forward
M-d         Kill word
M-delete    Kill word backwards
M-q         Reformat paragraph
C-c         Copy
C-x         Cut
C-v         Paste
C-x h       Mark whole buffer contents
C-<         Mark previous like this (multiple cursors)
C->         Mark next like this (multiple cursors)
C-M-<       Mark all like this (multiple cursors)
C-Space     Set/end mark
C-Enter     Set/end rectangle mark
```

Misc commands
```
C-g         Cancel command / buffer (or 3x Escape)
q           Dismiss a temporary buffer that has appeared
M-g M-g     Goto line
C-s         Regex search forwards
C-s C-w     Regex search forwards for word under point
C-r         Regex search backwards
C-r C-w     Regex search backwards for word under point
M-%         Query replace
C-x C-+     Increase font size in buffer
C-x C--     Decrease font size in buffer
C-x C-0     Reset font size in buffer
```

Projectile (see also [project page](https://github.com/bbatsov/projectile#interactive-commands))
```
C-c p s     Switch project / select file
C-c p f     Select file in current project
C-c p e     Select within recently visited files in project
C-c p b     Select within open project buffers
C-c p T     Select test file in current project
C-c p D     Open project root dir for current buffer
C-c p c     Compile project
C-c p p     Execute tests for project
C-c p k     Kill all project buffers
```

Dired/Dired+
```
Enter       Select file/dir
^           Goto parent dir
C-x M-o     Toggle hidden file display
g           Refresh
m           Mark
u           Unmark
U           Unmark all
* .         Mark by extension
* %         Mark by regex
C           Copy marked
R           Move/Rename marked
D           Delete marked
F           Visit marked
+           Create new dir
q           Close dired buffer
```

Markdown (see also [cheatsheet](http://ddloeffler.blogspot.de/2013/04/keybindings-for-emacs-markdown-mode.html))
```
C-c C-a l   Insert link
C-c C-c p   Preview in browser
```

Magit (for more see [cheatsheet](http://daemianmack.com/magit-cheatsheet.html))
```
g           Refresh
Tab         Show diff for single file
s           Stage one
S           Stage all
u           Unstage one
U           Unstage all
c c         Prepare commit
C-c C-c     Commit
P P         Push
q           Close Magit buffer
```

Paredit (for more see [cheatsheet](https://github.com/joelittlejohn/paredit-cheatsheet))
```
TAB         Reindent
C-M-d       Jump down to start of enclosed S-expr 
C-M-u       Jump up to start of enclosing S-expr
C-M-f       Jump forward to next S-expr
C-M-b       Jump backward to beginning of previous S-expr
C-M-Space   Mark current S-expr 
C-k         Kill S-expr or rest until S-expr ends
C-Right     Forward slurp (closing bracket to the right)
C-Left      Forward barf (closing bracket to the left)
ESC C-Right Backward slurp (opening bracket to the left)
ESC C-Left  Backward barf (opening bracket to the right)
M-(         Wrap round
M-s         Splice (unwrap)
M-S         Split S-exprs
M-J         Join S-exprs
M-r         Raise S-expr
```

Clojure-Mode specific (for more see [CIDER shortcuts](https://github.com/clojure-emacs/cider#keyboard-shortcuts))
```
C-c ,       Run tests
C-c '       View test failure messages
C-i         Reindent selected sexp
C-c C-e     Evaluate expr preceding point and display result in echo area
C-c C-c     Compile and load current toplevel sexp
C-c C-p     Evaluate preceding sexp and pretty print result
C-c C-k     Compile and load complete buffer
C-c C-z     Jump to REPL buffer
C-c M-p     Copy preceding sexp to REPL buffer
C-c M-n     Switch REPL namespace to buffer
C-c M-m     Macroexpand-1 preceding sexp
M-.         Jump to definition
M-/         Auto-complete word
C-c C-d     Show docs for function
C-c C-j     Show Javadoc in browser
C-c C-x n   Type check namespace (typed-clojure-mode)
C-c C-x f   Type check preceding form (typed-clojure-mode)
```

CIDER-Mode specific (in REPL)
```
Tab         Complete symbol at point
C-Up        Back through REPL history
C-Down      Forward through REPL history
C-c C-c     Cancel current evaluation
C-c C-u     Clear input before point
C-c C-o     Clear previous REPL buffer output
C-c M-o     Clear REPL buffer output
, ha Tab    Kill REPL
```

Web-Mode (see also [project page](http://web-mode.org/))
```
C-7         Close tag
C-c C-i     Indent buffer
M-;         Toggle comment
C-c C-n     Jump to end/begin tag
C-c C-f     Toggle block folding
C-c C-d d   Detect tag mismatch
```

Emacs-Lisp-Mode
```
C-x C-e     Eval Elisp Sexp
```

