# Litterae

This is an example project of [Litterae](https://github.com/stefandevai/litterae) Common Lisp documentation system.

This repository is part of the <https://github.com/cl-doc-systems> organization, created to compare different Common Lisp documentation systems.

The goal is make it easier for CL software developers to choose proper documentation system and to improve docs in their software!

Resulting documentation can be viewed here:

<https://cl-doc-systems.github.io/litterae/>

## About this example

This is a small library which includes a few functions with docstrings and a documentation
for the system and all included packages.

The purpose is to demonstrate core features of the
[Litterae](https://github.com/stefandevai/litterae) library.

The repository can be used as a template for new libraries if you've choosen `Litterae`
for documenting your library.

Let's review features, provided by `Litterae`.


## Pros & Cons

### Pros

* ``Litterae`` is pretty forward and uses README.md as the source.
* Generated documentation looks really nice.
* It autogenerates API reference.

## Cons

* It is not suited for large projects with lengthy documentation.
* You have to copy CSS and other assets manually from LItterae's `assets/` folder.
  Right now page's style is not so cool like it was when I've added `style.css`
  to the Teddy's documentation.
* There is no cross-referencing is semi-automatic - you have to write links manually.
* And there is not autocheck if all links are correct.
* You have to install `Pygments` Python library.
* Table of contents does not show sections from the README file, only API reference.
* It is impossible to reference HTML chapters because there is no HTML anchors for them.


## Handwritten documentation

I think the ability to write a large pieces of documentation which aren't bound to
a function, class or module is an important feature. This way you can tell the user
about some toplevel abstractions and give a bird eye view on the library or system.

For example, handwritten parts of the documentation can provide some code snippets
to demonstrate the ways, how to use the library:

```lisp
(loop repeat 42
      collect (foo "bar" 100500))
```

And when you are talking about some function or class, you can reference it.
For example, if I'm talking about `foo` function.

`Litterae` does not provides an eazy way to refer symbols. It would be
nice to have `EXAMPLE/APP:FOO` autolinked, but this does not work.

But the system generates HTML ids for symbols and you can refer them manually.
For example we can reference `FOO` like this ```[`FOO`](#example-app:foo-10)```
and it will appear in the code as the link [`FOO`](#example-app:foo-10).
This is very inconvenient :(
