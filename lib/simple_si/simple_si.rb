class SimpleSI
	
	def self.alert(text, transition_style = SIAlertViewTransitionStyleSlideFromBottom)
    alert = SIAlertView.alloc.initWithTitle(nil, andMessage:text)
    alert.transitionStyle = transition_style
    alert.addButtonWithTitle("OK", type:SIAlertViewButtonTypeDefault, handler:nil)
    alert.show
	end

	def self.alert_with_title(title, text, transition_style = SIAlertViewTransitionStyleSlideFromBottom)
    alert = SIAlertView.alloc.initWithTitle(title, andMessage:text)
    alert.transitionStyle = transition_style
    alert.addButtonWithTitle("OK", type:SIAlertViewButtonTypeDefault, handler:nil)
    alert.show
  end

end