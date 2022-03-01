

About info-beamer
=================

info-beamer allows you to develop interactive information displays using
the Lua programming language. Read more about it on the [main website](http://info-beamer.org/)

Documentation
-------------

The complete documentation is available on [info-beamer.com](https://info-beamer.com/doc/info-beamer)

Installation
------------

See the [documentation](https://info-beamer.com/doc/info-beamer#installing-info-beamer) for more information.

Please note that *this version won't run on the Raspberry PI*, since it only provides OpenGLES2.0, which this
version doesn't support. To use info-beamer on the PI, visit https://info-beamer.com/pi


info-beamer(1) -- An interactive multimedia presenter
=====================================================

## SYNOPSIS

`info-beamer` <root>

## DESCRIPTION

**info-beamer** uses the files and subdirectories in the specified 
directory <root> and displays them according to the Lua script `node.lua`.
**info-beamer** provides a simple yet powerful API to display fonts, images,
videos and more. The full documentation is available on http://info-beamer.org/doc/

## ENVIRONMENT

 * `INFOBEAMER_FULLSCREEN`:
   If set to 1, **info-beamer** will start in fullscreen mode.

 * `INFOBEAMER_ADDR`:
   If specified, only binds to this address. Defaults to `0.0.0.0`.

 * `INFOBEAMER_PORT`:
   Specifies a port for both the TCP and UDP interface. Defaults to `4444`.
 
 * `INFOBEAMER_PRECOMPILED`:
   If set to `1`, **info-beamer** will also load precompiled Lua files. 
   Only use this option if you trust the files being loaded, as precompiled
   Lua files should be considered unsafe.

 * `INFOBEAMER_FULLSCALE`:
   If set to `1`, **info-beamer** will ignore the aspect ratio of the screen
   and scale the root content to the complete size of the screen.

 * `INFOBEAMER_WIDTH`:
   Sets the width of the initial screen. Useful when using the fullscreen
   option above. Defaults to 1024.

 * `INFOBEAMER_HEIGHT`:
   Sets the height of the initial screen. Useful when using the fullscreen
   option above. Defaults to 768.

## SECURITY CONSIDERATIONS

By default, **info-beamer** will bind to `0.0.0.0`. Use `INFOBEAMER_ADDR` to
bind to another address.

## AUTHOR

Written by Florian Wesch

## COPYRIGHT

**info-beamer** is Copyright (c) 2013, Florian Wesch <fw@dividuum.de>.
The code is licensed under the BSD 2-Clause License.

## SEE ALSO

lua(1)
