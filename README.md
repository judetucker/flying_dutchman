# The Flying Dutchman [![Gem Version](https://badge.fury.io/rb/flying_dutchman.svg)](https://badge.fury.io/rb/flying_dutchman)

![](http://imgur.com/NOMG07U.png)

The Flying Dutchman helps users jump-start their Ruby on Rails projects by installing a basic SCSS framework that is made to be extended. Simply choose your basecoat and start customizing. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisities

For this gem we are assuming that you have a Ruby on Rails project that is Rails >= 3.1 and your file structure contains the following files/folders at a minimum.

```
|-- app
|   |-- assets
|   |   |-- javascripts
|   |   |   `-- application.js
|   |   `-- stylesheets
|   |       `-- application.css(or .scss)
`-- vendor
	`-- assets
	    |-- javascripts
	    `-- stylesheets
```

### Installing

Here are the steps to jumpstart you. 

In your Gemfile, add this line:

```
gem 'flying_dutchman'
```

Run bundle install from your app directory:

```
bundle install
```

Now the Dutchman is installed, but not set up.

## Choose a Captain & Set Up Your Dutchman

"The Dutchman must always have a captain" - Davy Jones

Select a captain, or base-coat framework, that you will start with and customize / extend the functionality out from there. 

Options for Captain are:

### Normalize

This is the most minimal of the setup options. This simply loads the normalize.css project into you app to set you on the right track for customization. Use this option if you fully intend to build everything yourself and need no framework or base-coat of any kind. Currently using v4.0.0.

[Normalize Docs](http://necolas.github.io/normalize.css/)

Credit for Normalize goes to Nicolas Gallagher ([@necolas](https://github.com/necolas))

To install with Normalize, run:

```
rails generate dutchman:install --captain=normalize
```

### Skeleton

This option is for users who need some framework such as a basic grid, typography and some components. This framework is made to be extremely lightweight and no frills. Use this if you have a small project that doesn't need much or you want to do most of the work yourself. Currently using v2.0.4.

[Skeleton Docs](http://getskeleton.com/)

Credit for Skeleton goes to Dave Gamache ([@dhg](https://github.com/dhg))

To install with Skeleton, run:

```
rails generate dutchman:install --captain=skeleton
```

### Bootstrap

Installing with Bootstrap gives users a completely full featured front-end framework ready for customization or extending. Use this if you have a large project that needs lots of classes and components. Currently using v4.0.0-alpha3.

[Bootstrap Docs](http://v4-alpha.getbootstrap.com/)

Credit for Bootstrap goes to Mark Otto ([@mdo](https://github.com/mdo)), Jacob Thornton ([@fat](https://github.com/fat)), and the [Bootstrap Core Team](https://github.com/orgs/twbs/people) 

To install with Bootstrap, run:

```
rails generate dutchman:install --captain=bootstrap
```
**Note: Running the `dutchman:install` command multiple times can result in unwanted effects. Try to avoid doing this.**

## Customization

TODO

## Contributing

We welcome commits that would improve or fix the project. Thank you in advance!

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/judetucker/flying_dutchman/releases). 

## Authors

* [Jude Tucker](https://github.com/judetucker)

See also the list of [contributors](https://github.com/judetucker/flying_dutchman/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

This project includes multiple complete projects, whose individual licenses are listed here:
[Normalize License](https://github.com/necolas/normalize.css/blob/master/LICENSE.md)
[Skeleton License](https://github.com/dhg/Skeleton/blob/master/LICENSE.md)
[Bootstrap License](https://github.com/twbs/bootstrap/blob/master/LICENSE)

## Acknowledgments

* Mark Otto ([@mdo](https://github.com/mdo)), Jacob Thornton ([@fat](https://github.com/fat)), and the [Bootstrap Core Team](https://github.com/orgs/twbs/people) for [Bootstrap](http://getbootstrap.com/) 
* Dave Gamache ([@dhg](https://github.com/dhg)) for [Skeleton](http://getskeleton.com/) 
* Seth Coelen ([@WhatsNewSaes](https://github.com/WhatsNewSaes)) for [Skeleton-Sass](https://github.com/WhatsNewSaes/Skeleton-Sass)
* Nicolas Gallagher ([@necolas](https://github.com/necolas)) and Jonathan Neal ([@jonathantneal](https://github.com/jonathantneal)) for [Normalize](http://necolas.github.io/normalize.css/)
* Richard Cordero from the Noun Project for the [Pirate Ship](https://thenounproject.com/term/pirate/302655/) icon.
* [Tracking Board Core Team](https://github.com/orgs/trackingboard/people) for the help, love, and support. 

## Why Flying Dutchman

1. Because the Pirates Of The Caribbean movies are the best. [Evidence](https://www.youtube.com/watch?v=GI6CfKcMhjY)
2. Because The Dutchman is just the ship you need to give a ride to '[Bootstrap](http://getbootstrap.com/)' Bill and a bunch of [Skeleton](http://getskeleton.com/)s who wish they could [Normalize](http://necolas.github.io/normalize.css/) themselves. 
