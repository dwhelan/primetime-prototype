primetime-prototype
===================

This is a working example of using the Page Object pattern to support Automated Acceptance Tests of browser functionality.

The examples provide some minimal tests of [www.synacor.net](http://www.synacor.net) to show how to use the Page Object pattern
for automated acceptance tests.

This uses the following main gems:

* [cucumber](https://github.com/cucumber/cucumber) => BDD that talks to domain experts first and code second
* [capybara](https://github.com/jnicklas/capybara) => Acceptance test framework for web applications
* [site_prism](https://github.com/natritmeyer/site_prism) => A Page Object Model DSL for Capybara

See also:

* [LeanDog's Jeff Morgan (aka Cheezy) page-object gem](https://github.com/cheezy/page-object)
* [Joseph Wilk post](http://blog.josephwilk.net/cucumber/page-object-pattern.html)

Installation (Mac)
==================

Download to a local folder

    bundle install
    cucumber

Configuration
=============

It is currently configured for headless testing using PhantomJS. To run using a real browser edit features/support/env.rb and set:

    config.default_driver = :chrome

or

    config.default_driver = :firefox

or

    config.default_driver = :safari

