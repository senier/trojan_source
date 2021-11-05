# Content

Demonstration of the [Trojan Source attack](https://www.trojansource.codes/) on the Ada language.

# Files

## `stretched_string_original.adb`

Unmodified string example.

## `stretched_string_string.adb`

Stretched string attack using type `String`.

## `stretched_string_wide_string.adb`

Stretched string attack using type `Wide_String`.  See `stretched_string_wide_string.adb.svg` for hex dump of offending code points.

## `stretched_string_wide_string_gs.adb`

Stretched string attack against GNAT Studio using type `Wide_String`.

## `commenting_out.adb`

Commenting out attack. See `commenting_out.adb.svg` for hex dump of offending code points.

## `homoglyphs.adb`

Homoglyphs attack.

# Encoding of the offending code points

Abbreviation  Code Point  UTF Encoding
LRE           U+202a      e2 80 aa
RLE           U+202b      e2 80 ab
LRO           U+202d      e2 80 ad
RLO           U+202e      e2 80 ae
LRI           U+2066      e2 81 a6
RLI           U+2067      e2 81 a7
FSI           U+2068      e2 81 a8
PDF           U+202C      e2 80 ac
PDI           U+2069      e2 81 a9

Bytes:
e2, 80, 81, a6, a7, a8, a9, aa, ab, ac, ad, ae
