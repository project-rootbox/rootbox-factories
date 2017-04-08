rootbox-factories
=================

A set of "standard" factory scripts for use with Rootbox. PRs to add more scripts
are welcome!

How to use
**********

.. code-block:: shell

  #:DEPENDS git:project-rootbox/rootbox-factories///SCRIPT_NAME.sh
  #:DEPENDS git:project-rootbox/rootbox-factories///OTHER_SCRIPT_NAME.sh
  # Rest of your factory script here...

or::

  rootbox new mybox -f git:project-rootbox/rootbox-factories///SCRIPT_NAME.sh

Scripts
*******

General-purpose
^^^^^^^^^^^^^^^

- *libc-compat.sh* - Handy for "portable", dynamically-linked Linux binaries.
  Install ``ld-linux-x86-64.so.2`` in ``/lib64``.
- *ncurses-compat.sh* - Sets up ``libtinfo.so.5`` as an alias for
  ``libncurses.so.5``.

Programming tools
^^^^^^^^^^^^^^^^^

- *nim.sh* - Installs `Nim <https://nim-lang.org/>`_.
- *haskell.sh* - Installs the minimal
  `Haskell Platform <https://www.haskell.org/platform/>`_.
