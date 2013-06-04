SimpleSI for RubyMotion
====================

I wanted a dead simple way to call SIAlertView (https://github.com/Sumi-Interactive/SIAlertView) in one line, similar to BubbleWrap's `App.alert()`.

## Setup

Add simple_si to your Gemfile, and run `bundle install`:
```ruby
gem 'motion-cocoapods'
gem 'simple_si'
```

Edit the Rakefile of your RubyMotion project and add the following require line:
```ruby
# After the line that require Rubymotion
require 'bundler'
Bundler.require
```

Then add SIAlertView to your pods list in your Rakefile:
```ruby
app.pods do
  pod 'SIAlertView'
end
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
  transition: "drop down", # or "slide from down", "slide from up", "fade" or "bounce"
  buttons: [
    {title: "Destroy", action: :destroy}, # no type specify become default styling
    {title: "Cancel", type: "cancel"} # action is secondary
  ],
  delegate: self # Needed if you want to call method of a class with your button
})
```

## Transition

Here's the string you can pass to the transition property of the constructor (secondary). The default value is `"slide from bottom"`.

* `"drop down"`
* `"slide from down"`
* `"slide from up"`
* `"fade"`
* `"bounce"`

## Buttons

You have 3 types of styling for buttons (secondary). The default value is `"default"` (that's original).

* `"default"`
* `"destructive"`
* `"cancel"`

## To-do

* Write specs

## Contributions

Fork, improve, submit a pull request.
