
Each file gets a 6‑digit random number followed by a double underscore (482917__photo.jpg). The original name is left fully intact after the __, so restoring is just a matter of stripping that prefix — nothing is lost, and the __ marker keeps it from ever clipping legitimate leading numbers in your real filenames.

The number is always 6 digits (100000–999999), so every prefix is the same width and Finder sorts them cleanly by name — that's what produces the actual shuffle when you sort the folder by name. Running randomize twice is safe; `isRandomized` skips anything already prefixed, so you won't get double prefixes. It only touches files, not subfolders. And because the original name is preserved verbatim after `__`, the restore is exact even for names that already start with numbers.
