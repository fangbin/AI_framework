let help_msg = "output a warm welcome message to the user"
module Self = Plugin.Register
  ( struct
      let name = "hello world"
      let shortname = "hello"
      let help = help_msg
    end)
