module SimpleSI

  module_function

  def alert(args = {})
    args.kind_of?(String) ? build({ message: args }) : build(args)
  end

  def build(args)
    @message = args[:message] || "No message"
    @title = args[:title] || nil
    @delegate = args[:delegate] || self

    @transition = transitionBuild args[:transition]
    @buttons = buttonsBuild args[:buttons]

    alert = SIAlertView.alloc.initWithTitle(@title, andMessage:@message)
    alert.transitionStyle = @transition

    @buttons.each do |b|
      alert.addButtonWithTitle(
        b[:title],
        type: b[:type],
        handler: proc {|a| @delegate.send(b[:action]) if b[:action]}
      )
    end

    alert.show
  end

  def transitionBuild(transition)
    return case transition
      when "slide from down" then SIAlertViewTransitionStyleSlideFromBottom
      when "slide from up" then SIAlertViewTransitionStyleSlideFromTop
      when "fade" then SIAlertViewTransitionStyleFade
      when "bounce" then SIAlertViewTransitionStyleBounce
      when "drop down" then SIAlertViewTransitionStyleDropDown
      else SIAlertViewTransitionStyleSlideFromBottom
    end
  end

  def buttonsBuild(buttons)
    build = buttons || [{title: "OK", type: "default"}]
    build.each do |b|
      if b[:action] && @delegate==self
        b[:action] = :warning_delegate
      end

      b[:type] = case b[:type]
        when "default" then SIAlertViewButtonTypeDefault
        when "destructive" then SIAlertViewButtonTypeDestructive
        when "cancel" then SIAlertViewButtonTypeCancel
        else SIAlertViewButtonTypeDefault
      end
    end
    build
  end

  def warning_delegate
    warn "SimpleSI [WARNING] : You need to specify a delegate in the constructor to call action on your buttons."
  end
end