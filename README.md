# Agile Android Software Development Book Sources

This is the source code for the book contents of "Agile Android Software Development". It is released under a [Creative Commons Attribution-NonCommercial 4.0](http://creativecommons.org/licenses/by-nc/4.0/).

The book is also available online from the official website at: [https://agiledroid.com](https://agiledroid.com) in various file formats.


# Building the Ebooks

* Clone the repository
* Install the latest version of [PanDoc](http://pandoc.org/installing.html). On Ubuntu :
		sudo apt-get install pandoc
* Then, install 3rd party tools:		
		sudo apt-get install texlive texlive-xetex lmodern texlive-latex-extra fonts-droid texi2html pdftk
* To build the Ebook in all formats:
		make all
* If you want to produce only one format, you could specify it on the command line (supported: epub, mobi, texinfo, html, and pdf) :
		make pdf
* To clean up all the files produced by pandoc:
		make clean


# Errata

If you find anything wrong with the Ebooks, please [open an issue](https://github.com/Agile-Android-Software-Development/agile-android-software-development-book/blob/issues/new) and one of the maintainers will take a look.

If you noticed an error in the text and you are familiar with git and the markdown syntax,  please submit a pull request (see CONTRIBUTING.md) instead of opening an issue.


# Contributing

See [CONTRIBUTING.md](https://github.com/Agile-Android-Software-Development/agile-android-software-development-book/blob/master/CONTRIBUTING.md)