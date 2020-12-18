Pros & Cons of Coo
==================

Pros
----

* ``Eazy documentation`` supports many markups out of the box:

  - docx
  - epub
  - man
  - markdown
  - md
  - mediawiki
  - odt
  - opml
  - org
  - rst
  - tex
  - texi
  - texinfo
  - text
  - textile
  - txt
  - wiki

* By default, ``Markdown`` is used for docstrings.
* And the system is able to do proper deindentation for docstrings.
* It automatically discovers README and files in ``doc`` folder.
* All lisp files are processed as documents and presented in the resulting
  ``HTML`` file as sections.
* It is able to process docstrins in forms other than standard functions,
  macros, classes, etc.
* ``Eazy documentation`` uses `CommonDoc <https://github.com/CommonDoc/common-doc>`_
  for internal document representation and theoretically you can write your own
  post-processing.
* There is default color-theme.
* ``Eazy documentation`` generates links to the source of every section. This way
  typos or small errors can be easily fixed on the GitHub. I really like this feature!
* It generates a single HTML file which can be easily searched through in the browser.

Cons
----

* There is only one way to control the order of files in the doc - to add a numberic
  prefix.
* There is no cross-referencing is semi-automatic - you have to write links manually.
* And there is not autocheck if all links are correct.
* You have to install ``pandoc`` and ``texinfo`` into the system :(
* It will be hard to add additional markup to ``rst`` or ``markdown``, because
  they are processed by ``pandoc``.
* I don't like default color theme, but you can redefine it.
* Also I don't like how the document is rendered. Side-bar with files is OK, but
  different sizes of HTML headers in the main site's section looks ugly. Probably
  it is possible to use some header level normalization.
* Seems package-inferred systems style is not supported fully, because I don't see
  ``EXAMPLE/APP`` and ``EXAMPLE/UTILS`` packages description in this document.
* It generates a single HTML file which can be pretty large if your system is big.
