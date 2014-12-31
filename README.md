# Info Deck

This is a simple project to try and create a modern pipeline for the creation and editing of
[infodecks](http://martinfowler.com/bliki/Infodeck.html) using
[markdown](http://whatismarkdown.com/), [grunt](http://gruntjs.com/) and a suitable JavaScript library
like [deck.js](http://imakewebthings.com/deck.js/) or [impress.js](http://bartaz.github.io/impress.js).

It is currently a **work in progress**.

## Requirements

* [nodejs](http://nodejs.org/)

## Getting Started...
Run `npm install` followed by `./node_modules/bower/bin/bower install` and `./node_modules/grunt-cli/bin/grunt`. Grunt
will then watch the *slides* directory and run the *md2slides* task every time a new .md file is added or an existing
one changes. The files are concatenated into a single target html file.

Have fun!
		

