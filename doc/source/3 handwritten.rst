Handwritten documentation
=========================

I think the ability to write a large pieces of documentation which aren't bound to
a function, class or module is an important feature. This way you can tell the user
about some toplevel abstractions and give a bird eye view on the library or system.

For example, handwritten parts of the documentation can provide some code snippets
to demonstrate the ways, how to use the library:

::

   (loop repeat 42
         collect (foo "bar" 100500))

And when you are talking about some function or class, you can reference it.
For example, if I'm talking about ``foo`` function.

``Eazy documentation`` does not provides an eazy way to refer symbols. It would be
nice to have ``EXAMPLE/APP:FOO`` autolinked, but this does not work.

But the system generates HTML ids for symbols and you can refer them manually.
The syntax will be different depending on file's markup language.
In reStructured text we can reference ``FOO`` like this ```FOO <#EXAMPLE/APP:FOO>`_``
and it will appear in the code as the link `FOO <#EXAMPLE/APP:FOO>`_.
