I store metadata for my package.

Metadata regarding which style faux pas are deliberate or unavoidable is used
by tools such as the critics browser.

## Rationale

The defaults protocol suggests methods whose purpose is to allow a subclass to
override behavior.  After these methods have been overridden in a concrete
subclass, their purpose is to help implement some other protocol.  That
protocol is therefore where the overidden methods belong.  In this case,
 - BLAPIIDocumentation class>>builder -> building

Ironically, the auto-generated methods in the code-critics protocol on my class
side do not meet the critics browser's standards.  As they are auto-generated
elsewhere, criticism of these methods is noise for the authors of my package.
 - We assume my methods are used.
 - We are aware that the behavior of array literal construction has changed,
   and we assume the authors of the critics browser are, too.
Blanket muting of all such criticisms of my class should be revisited if
handwritten methods are added to me.