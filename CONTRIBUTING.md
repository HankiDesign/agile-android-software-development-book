# Contributing

## Git Conventions

The Agile Software Development book repository uses a light version of the [git-flow](http://nvie.com/posts/a-successful-git-branching-model/) process to track changes.

We use only 3 types of branches: develop, releases, and master.


### Master branch (publish)

The master branch should be used only for publishing new content that have been copy edited in a release branch.


### Releases branch (edit)

The releases branches are spanned from the develop branch when the content is ready to by copy-edited. No big changes (i.e.: new section or chapter) should happen in this branch, only fixes to grammar, syntax, typos, and such. When the text is ready to be published, you should merge your changes to the master branch and apply a tag corresponding to the version you worked on. You must also synchronize the develop branch so you have the latest source code.


### Develop branch (draft)

Most of the writing efforts should happen in this branch. All releases branches should be created from this branch and not from the master branch.

![Agile Android Software Development flow](doc/agiledroid-flow.png)


## Sending a Pull Request

* Be careful to use UTF-8 encoding in your files.
* Do not mix changes to the original English with translations in a single pull request.
* If your pull request changes a translation, prefix your pull request and commits' messages with the ISO 639 code, e.g. [de] Update chapter 2.
* Make sure the translation changes can be automatically merged. The maintainers can not make the merge manually if there are some conflicts (we are not polyglot yet).
* Make as sure as possible that the changes work correctly for publishing to PDF, ebooks and the book website.