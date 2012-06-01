## underoos

Base styles, component and layout structures for a projects foundation.

1. Crafted in [Sass](http://sass-lang.com/) - the actual `.sass` version
- Tuned for responsiveness with `ems` and `percentages` instead of pixel measurements
- Structured, consistent markup allowing a common language between front and back end development teams
- Minimal styles for quick prototypes, and allowing development teams to move forward while still in design phase
- Built to work with [Compass](http://compass-style.org/) or [Bourbon](http://thoughtbot.com/bourbon/) out of the box (though not a requirement by any means)

Underoos is meant as the starting point for an application. All of the `.sass` files are meant to be tweaked to the design, the important part is maintaining the structure of the markup as close as possible. This allows back end developers, front end developers and design teams to work simultaneously across an application. Underoos is the fancy stuff under the pants.

For more details around Underoos and how it works, take a look at the [interactive docs](http://underoos.modeset.com/docs/style.html).

Underoos is still under continuous development. It's stable, but is subject to some changes.

### Browser support

- Modern browsers (Chrome, Safari, Firefox, Internet Explorer 9+)
- Mobile/Tablet browsers (The Webkits)
- Internet Explorer 8
- Internet Explorer 7 (This needs to be enabled)

### Requirements

- Sass 3.1+ (files can easily be converted to `scss` by using the `sass-convert` tool)

### Installation

Within a Rails environment:

Include underoos in your Gemfile

    gem 'underoos'

Then run the generator

    rails g underoos:assets

Currently in other environments, it's a manual operation, but it's on our short list to automate this.

1. Clone or download the repository
- Copy over the `.sass` files from within `underoos/app/assets/stylesheets/`
- Copy over the `javascripts` files from within `underoos/app/assets/javascripts/`
- Copy over the `javascripts` files from within `underoos/vendor/assets/javascripts/`
- Optionally copy over the `./script/javascripts` for pulling down the latest vendor javascripts

We know this sort of sucks ATM, but we'll get something better in place, promise.


### What's with all the comments?

Underoos utilizes [sherpa](https://github.com/modeset/sherpa) for documentation generation. This means the comments actually generate a [living styleguide](http://underoos.modeset.com/docs/style.html). As long as the structure doesn't change, the styleguide will be updated as you change style configurations. This allows documentation to be portable across applications. If you're like us, you hate documenting, so creating an automated task is a bonus all around. We will most likely move the inline documentation to external files in the very near future. Stay tuned.

See the [sherpa](https://github.com/modeset/sherpa) project for more details. 

### Inspirations

Underoos is heavily inspired by the fabulous [Twitter Bootstrap](http://twitter.github.com/bootstrap/) library. In fact, we are using most of the JavaScript files contained within Bootstrap. We literally built underoos and it's documentation on the backs of giants. Let us give credit where credit is due. There are some key differences between underoos and bootstrap, so don't think of it as a pure clone.

If you don't mind dealing with the [less library](http://lesscss.org/), you should be using Twitter's Bootstrap.

### Road Map

Feature updates are currently being run through a [Pivotal Tracker project](https://www.pivotaltracker.com/projects/485221).


### Contributing

We are happy to take pull requests and bug fixes, but please follow these simple rules.

1. Needs to pass in all supported browsers (ie7 doesn't necessarily need to be perfect!)
- Documentation needs to reflect changes or additions

Feel free to check in with us before working on anything just to make sure we haven't started down the path already.

To work with the repository, clone and run the following:

    bundle
    rake sherpa:html

Anytime you alter documentation, you'll need to run `rake sherpa:html` to regenerate it. If you are only tweaking styles, there is no need to rerun this command, just hit refresh.


### Licensing

Underoos is [MIT licensed](https://raw.github.com/modeset/underoos/master/LICENSE), so do what you want with these files. We built them for us, but hopefully this makes somebody's life easier too. If you use underoos in a project, like us on Facebook... just kidding, don't do that, that is just lame. Seriously though, let us know how it goes.

