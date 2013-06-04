module SimpleSI

  def self.alert(args = {})
    args.kind_of?(String) ? build({ message: args }) : build(args)
  end

  def self.build(args)
    @message = args[:message] || "No message"
    @title = args[:title] || nil
    @transition = args[:transition] || SIAlertViewTransitionStyleSlideFromBottom
    @buttons = args[:buttons] || [{title: "OK", type: SIAlertViewButtonTypeDefault, action: nil}]

    alert = SIAlertView.alloc.initWithTitle(@title, andMessage:@message)
    alert.transitionStyle = @transition

    @buttons.each do |b|
      alert.addButtonWithTitle(b[:title], type: b[:type], handler: b[:action])
    end

    alert.show
  end

end