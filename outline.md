# CS 51 Code Reviews

## 2/3

### Warm-up: Abstract Syntax Tree
      -
      |
      |
      -
      ^
     / \
    /   \ 
    5    3

What does this above expression mean?

Why should you care about abstract syntax trees (they seem kind of random)? (Think if you had to actually write a compiler -- i.e. translate code into 1's and 0's for the computer to execute. How would you do that?)

![euclidean algorithm](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Abstract_syntax_tree_for_Euclidean_algorithm.svg/400px-Abstract_syntax_tree_for_Euclidean_algorithm.svg.png)

### Warm-up 2
Implement a function `fib` that returns the nth Fibonacci number. `fib 0 = 0`, and `fib 1 = 1`, and `fib n = (fib (n-1)) + (fib (n-2))`. Note: use recursion, not loops.


### Tips and Logistics
Tips:
- Especially for the first few weeks, write as much Ocaml as you can to get used to the language
- The readings and the exercises are great for this -- e.g. set aside a 30 minute slot where you commit yourself to going through this before lecture/lab
- Don't worry if things are confusing -- you'll get the hang of it soon enough

- Any questions on logistics?

### Text Editors
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
  - **Sublime Text 3**
    - I use this 95% of the time
    - extensible and customizable with lots of plugins
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

### Review of higher-order functions:
**Key Idea**: Recursion (understand it, be comfortable with it, use it)

Recall `map`:
`let rec map f lst = 
  match lst with
  | [] -> []
  | hd :: tl -> (f hd) :: (map f tl);;`

What is the type signature of `map`?

- see `code-review-1.ml` file for some examples of code

### Other notes:
- Compiling and Running
  - from the command line, run `make` (in your directory with `ps1.ml`)
    to compile your work
  - run `./ps1.byte` to run it
  - Then run `./ps1_tests.byte` to run the tests (that you should be writing!)
- Tips for pset1
  - write tests
