## ibus-ancient

ibus-compatible input methods and keyboards for ancient languages.
Prerelease.  Batteries not included.  Some assembly required.

### ibus setup

First, you need to ibus installed, configured and working.  Please consult
your favorite search engine and your distribution for details.

Things to check:

* Do you use the X Compose key to type accented letters?  Try `ibus-xkbc`.
* Do you use Emacs?  You'll need to figure out [`ibus-el`][ibus-el] if you
  want to get everything working again.

Now, with any luck, you've got an ibus menu which appears when you log in,
you can type accented letters in Emacs again, and you're otherwise back at
square zero.  If you're unlucky, you may wind up getting [eaten by
sharks][xkcd].

Unfortunately, I can't provide technical support for this part of the
process, because I run an older version of Ubuntu and I got this stuff to
work by hitting it repeatedly with a rock (metaphorically speaking).  Good
luck.

**Update:** On Ubuntu 16.04, my input methods menu on the upper right was
totally broken, and I had to
install [`indicator-systemtray-unity`][indicator-systemtray-unity] and use
the keyboard switch it provided, and I had to use `ibus-setup` to configure
my list of available input methods.  I have no idea what's going on
here—even basic input method functionality on 16.04 is broken for me, even
before installing `ibus-ancient`.

[indicator-systemtray-unity]: https://github.com/GGleb/indicator-systemtray-unity

### ibus-ancient setup

Once that's done:

1. Install ibus-m17n (for the simple keyboards).
2. Install ibus-table (for the hieroglyphic input method).
3. Run `./install.sh`.  This may do something horrible.  If it does, please
   report a bug.

Then you need to go into the ibus preferences and enable the keyboards that
you want, and possibly restart ibus again.  The keyboards and input methods
should appear under "Other".

For the egyptian-transliteration keyboard, just type MdC-style
transliteration characters and everything should show up as Egyptian.  For
the egyptian-hieroglyphs input method, type a transliteration character,
phonetic equivalent or Gardiner code, and hit space to commit.

#### Arch Linux

A package for this project exists in the
[AUR](https://aur.archlinux.org/packages/ibus-ancient-git).

To install it using `yay` run:

```
yay -S ibus-ancient-git
```

### Changing the mappings

If you'd prefer a slightly different mapping, I'd love to hear about it.
I'm happy to support any common version of MdC if it can be done without
breaking something else.

### Other languages

I have data files for quite a few runic futharks, plus Ogham, Gothic and
the Old Italic alphabets.  I'd be happy to convert these to m17n keyboards
if there's interest.  See the file `more-for-later.xml`.  The runic
mappings are the most detailed by far, with support for quite a few
different runic systems used in different counties at different times.

### Other platforms

I have some code to build MacOS keyboard bundles from the material in
`more-for-later.xml` that could be adapted to the various layouts in this
package.  But I don't know whether keyboard bundles even work on newer
versions of the MacOS.

### License

The file `Unicode-MdC-Mapping-v1.utf8` is covered by the Unicode license,
as are the portions of `egyptian-hieroglyphs-table.txt` derived from that
file.  The rest of this software is provided under the terms of the
`UNLICENSE.txt`.

[xkcd]: http://xkcd.com/349/
[ibus-el]: http://www.emacswiki.org/emacs/IBusMode
