# README

Handbook Demo App

## About


## Startup

Since we have tailwind css installed, we need to use the custom dev server to get hot reloading of css changes:

```shell
  bin/dev
```
(bin/rails s will still work, but css changes will not be hot reloaded)





## Branches

### basis

basis branch is the basic scaffolding of the Handbook Demo App.

### features

Any feature added to the Handbook Demo App will be created in its own branch off of basis.
No merging is done, the repos is just to show and implement features


## Initial Setup

- Ruby 3.4.3
- Rails 8.1.0

```shell
 rails new handbook_rails --css=tailwind
```

To get autoloading during development, added the following gem to Gemfile

```ruby
gem "hotwire-spark"
```

To get support for tailwind in RubyMine:


```shell
npm init -y
npm install -D tailwindcss
```
_Restart RubyMine afterwards_
