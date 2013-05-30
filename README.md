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

Add simple_si to your Gemfile:
```ruby
gem 'simple_si'
```

Usage
==========

Basic:

```ruby
SimpleSI.alert('Hello World!')
```

If you want a title:

```ruby
SimpleSI.alert_with_title('My App', 'Hello World!')
```

You can also leverage the following transitions:
```ruby
# SIAlertViewTransitionStyleSlideFromBottom (default)
# SIAlertViewTransitionStyleSlideFromTop
# SIAlertViewTransitionStyleFade
# SIAlertViewTransitionStyleBounce
# SIAlertViewTransitionStyleDropDown

SimpleSI.alert('Hello World!', SIAlertViewTransitionStyleDropDown)

## To-do

* Write specs

## Contributions

Fork, improve, submit a pull request.