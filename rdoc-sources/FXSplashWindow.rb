module Fox
  #
  # The Splash Window is a window typically shown during startup
  # of an application.  It comprises a large icon, which is also
  # used as the shape of the window if +SPLASH_SHAPED+ is passed;
  # with the +SPLASH_SIMPLE+ option the window will be simply rectangular.
  #
  # === Splash window options
  #
  # +SPLASH_SIMPLE+::		Simple rectangular splash window
  # +SPLASH_SHAPED+::		Shaped splash window
  # +SPLASH_OWNS_ICON+::	Splash window will own the icon and destroy it
  # +SPLASH_DESTROY+::		Splash window will destroy itself when timer expires
  #
  class FXSplashWindow < FXTopWindow
    # The splash window's icon [FXIcon]
    attr_accessor :icon
    
    # The delay before hiding the splash window, in milliseconds [Integer]
    attr_accessor :delay

    #
    # Construct splash window; the window will be automatically hidden (or deleted
    # if SPLASH_DESTROY is passed) after a given delay, specified in nanoseconds).
    # The splash window is free floating.  Use this constructor when the splash window
    # is to be displayed before the main window appears.
    #
    def initialize(app, icon, opts=SPLASH_SIMPLE, ns=2000000000) # :yields: theSplashWindow
    end

    #
    # Construct splash window; the window will be automatically hidden (or deleted
    # if SPLASH_DESTROY is passed) after a given delay, specified in nanoseconds).
    # The splash window stays on top of its owner window, which must already have been
    # created previously.
    #
    def initialize(owner, icon, opts=SPLASH_SIMPLE, ns=2000000000) # :yields: theSplashWindow
    end
  end
end

