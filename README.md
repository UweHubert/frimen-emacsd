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


## Some M-x commands

| magit-status | Show Magit buffer |
| visual-line-mode | Switch nice word wrap on/off |
| replace-string | Replace all to end of buffer |
| query-string | Replace all to end of buffer, ask for each |
| shell | Create buffer with terminal |


## Shortcuts

```
File/buffer/window commands
C-x C-c     Exit Emacs
C-x C-f     Find file
C-x C-s     Save buffer
C-x C-w     Write buffer to other file
C-x b       Switch buffer
C-x k       Kill buffer
C-x o       Jump to next buffer
C-x 1       Delete other windows
C-x 0       Delete current window
C-x 2       Split window horizontally
C-x 3       Split window vertically

General edit commands
C-z         Undo
C-k         Kill line
C-d         Kill character
M-d         Kill word
M-delete    Kill word backwards
C-c         Copy
C-x         Cut
C-v         Paste
C-x h       Mark whole buffer

Misc commands
C-g         Cancel command in minibuffer
q           Dismiss a temporary buffer that has appeared
M-g M-g     Goto line
C-s         Regex search forwards
C-r         Regex search backwards
M-%         Query replace
C-x C-+     Increase font size in buffer
C-x C--     Decrease font size in buffer
C-x C-0     Reset font size in buffer

Markdown 
C-c C-c p   Preview in browser

Magit (for more see [cheatsheet](http://daemianmack.com/magit-cheatsheet.html))
C-x g       Magit status
s           Stage one
S           Stage all
u           Unstage one
U           Unstage all
c c         Prepare commit
C-c C-c     Commit
P P         Push

Paredit (for more see [cheatsheet](https://github.com/joelittlejohn/paredit-cheatsheet))
TAB         Reindent
C-M-d       Jump down to start of enclosed S-expr 
C-M-u       Jump up to start of enclosing S-expr
C-M-f       Jump forward to next S-expr
C-M-b       Jump backward to beginning of previous S-expr
C-M-Space   Mark current S-expr 
C-k         Kill S-expr or rest until S-expr ends
C-right     Forward slurp (closing bracket to the right)
C-left      Forward barf (closing bracket to the left)
ESC C-right Backward slurp (opening bracket to the left)
ESC C-left  Backward barf (opening bracket to the right)
M-(         Wrap round
M-s         Splice (unwrap)
M-S         Split S-exprs
M-J         Join S-exprs
M-r         Raise S-expr

Clojure-Mode specific (for more see [Cider shortcuts](https://github.com/clojure-emacs/cider#keyboard-shortcuts))
C-c ,       Run tests
C-c '       View test failure messages
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

Cider-Mode specific (in REPL)
C-c C-c     Cancel current evaluation
C-c C-o     Clear REPL buffer
M-p         Back through REPL history
```