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

General-purpose (inside the general folder)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

usage::

  git:project-rootbox/rootbox-factories///general/SCRIPT.sh

- *libc-compat.sh* - Handy for "portable", dynamically-linked Linux binaries.
  Install ``ld-linux-x86-64.so.2`` in ``/lib64``.
- *ncurses-compat.sh* - Sets up ``libtinfo.so.5`` as an alias for
  ``libncurses.so.5``.

Programming tools (inside the dev folder)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

usage::

  git:project-rootbox/rootbox-factories///dev/SCRIPT.sh

- *fakessp.sh* - Installs
  `fakessp <https://github.com/project-rootbox/fakessp>`_. If you're having
  linking issues due to missing ``_chk`` calls, try installing this and passing
  ``-lfakessp`` to your linker.
- *haskell-core.sh* - Installs the minimal/core
  `Haskell Platform <https://www.haskell.org/platform/>`_.
- *haskell-full.sh* - Installs the full
  `Haskell Platform <https://www.haskell.org/platform/>`_.
- *nim.sh* - Installs `Nim <https://nim-lang.org/>`_.

The contents of the **priv** directory are used internally and are NOT intended
to be used by others!!
