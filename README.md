SimpleSI for RubyMotion
====================

I wanted a dead simple way to call SIAlertView (https://github.com/Sumi-Interactive/SIAlertView) in one line, similar to BubbleWrap's `App.alert()`.


## Installation

```ruby
gem install simple_si
```

## Setup

Edit the `Rakefile` of your RubyMotion project and add the following require line:

```ruby
require 'simple_si'
```
or

Add simple_si to your Gemfile, and run `bundle install`:
```ruby
gem 'simple_si'
```

Usage
==========

Basic:

```ruby
SimpleSI.alert('Hello World!')
```

Custom:
```ruby
SimpleSI.alert({
  title: "My App",
  message: "Are you sure?",
  transition: SIAlertViewTransitionStyleDropDown,
  buttons: [
    {title: "Destroy", type: SIAlertViewButtonTypeDestructive, action: :destroy},
    {title: "Cancel", type: SIAlertViewButtonTypeCancel, action: :cancel}
  ]
})
```

You can leverage the following transitions:
```ruby
# SIAlertViewTransitionStyleSlideFromBottom (default)
# SIAlertViewTransitionStyleSlideFromTop
# SIAlertViewTransitionStyleFade
# SIAlertViewTransitionStyleBounce
# SIAlertViewTransitionStyleDropDown
```

And the following button types:
```ruby
# SIAlertViewButtonTypeDefault
# SIAlertViewButtonTypeDestructive
# SIAlertViewButtonTypeCancel
```

## To-do

* Write specs

## Contributions

Fork, improve, submit a pull request.