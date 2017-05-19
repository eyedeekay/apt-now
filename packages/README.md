static page generation helper scripts
=====================================

These are a set of scripts to aid in generating markdown and static HTML
fragments with information about various kinds of files. They all take the same
options and are intended to be configured primarily by setting variables in the
parent environment. There are also some scripts that wrap them into standalone
pieces.

help
----

  * -p: Output an HTML page instead of a Markdown document
  * -f: Use this file as the basis for the desired page
  * -t: Override the title(tag) of the HTML output.

        hdpage : Output a formatted HTML page header. Will always fail if the
            -p option is not passed. -f option not implemented yet.
        ftpage : Output a formatted HTML page footer. Will always fail if the
            -p option is not passed. -f option not implemented yet.
        pkpage : Output a Markdown document or an HTML fragment which displays
            details about a .deb package. Discards -t option.
        scpage : Output a Markdown document or an HTML fragment which displays
            details about a .dsc package. Discards -t option.
        ptpage : Output a Markdown document or an HTML fragment which displays
            details about a .patch file.
        kypage : Output a Markdown document or an HTML fragment which displays
            details about a key/key owner.

helperhelp
----------

It'll probably be useful to have a short script that extracts a "default" title
from all the files I generate pages with, so I can add it to hdpage without
making hdpage longer.

wrapper help
------------

        pkpage-wrap : Output a full HTML page based on the details about a
            .deb package.
        scpage-wrap : Output a full HTML page based on the details about a
            .dsc package.
        divwrap : Output a Markdown document or an HTML fragment which displays
            it's contents wrapped in div elements.
