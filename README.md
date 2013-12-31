# ibus-ancient

ibus-compatible input methods and keyboards for ancient languages.
Prerelease.  Batteries not included.  Some assembly required.

## ibus setup

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

## ibus-ancient setup

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

## Other languages

I have data files for quite a few runic futharks, plus Ogham, Gothic and
the Old Italic alphabets.  I'd be happy to convert these to m17n keyboards
if there's interest.

## License

The file `Unicode-MdC-Mapping-v1.utf8` is covered by the Unicode license,
as are the portions of `egyptian-hieroglyphs-table.txt` derived from that
file.  The rest of this software is provided under the terms of the
`UNLICENSE.txt`.

[xkcd]: http://xkcd.com/349/
[ibus-el]: http://www.emacswiki.org/emacs/IBusMode
