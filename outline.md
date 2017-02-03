# CS 51 Code Reviews

## 2/3

### Logistics
- Any questions on logistical matters?

### Text Editor
- command line (primarily, also available as GUI)
  - vim
    - super fast movement, using keystrokes strung together
    - use `vimtutor` and run through the tutorial four or five times if you want to learn how to use it
    - I like this a lot, but if you haven't used this before, you'll have to learn how to use it in addition to learning ocaml
    - just use Sublime to minimize headaches
  - emacs
    - a great operating system; if only it had a decent editor
- GUI
  - TextEdit
    - messes up quotes sometimes
    - no syntax highlighting
  - Sublime
    - I use this 95% of the time
    - extensible and customizable with lots of packages
    - I personally vouch for this
    - staff-endorsed editor
  - Atom
    - open sourced by GitHub, decent plugins
    - I don't use it but it seems to be pretty popular

### Git
- [interactive tutorial](https://bitbucket.org/leeek/cs51-git-tutorial)
- GitHub has an
  [awesome in browser example!](https://try.github.io/levels/1/challenges/1)
- `.gitignore` to ignore certain files. Theres on in the base of this repo,
  that ignore OCaml build artifacts

### Abstract Syntax Tree

![euclidean algorithm](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Abstract_syntax_tree_for_Euclidean_algorithm.svg/1147px-Abstract_syntax_tree_for_Euclidean_algorithm.svg.png){width : 30% ;}

### Lab1 review
See `1/cr1_code_examples.ml`. My comments are in `(** *)`,
notice the double asterisk

### Other notes:
- Options
  - C malloc returns NULL on failure or an address on success
  - OCaml malloc would return `None` on failure, or `Some address` on success
  - Enforces checking for these error conditions in type system
  ```
  match x with
  | Some v -> do_whatever
  | None -> do_something_else
  ```
- Lists

  ```
  match lst with
  | hd :: hd2 :: tl -> do_something
  ```
  - if you use it you need to include a case that looks like hd :: [],
    to handle 2 element lists
- matching on multiple values:

  ```
  match x, y with
  | [], [] -> ...
  | hdx :: tlx, [] -> ..
  ```
- Tuples
  - assume x has type (`int list * int list`)
  - `a,b = x` (now a is the first `int list`, and b is the second)
- Compiling and Running
  - from the command line, run `make` (in your directory with `ps1.ml`)
    to compile your work
  - run `./ps1.byte` to run it
  - Then run `./ps1_tests.byte` to run the tests (that you should be writing!)
