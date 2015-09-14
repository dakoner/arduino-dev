ifneq (,$(wildcard /Applications/Arduino.app))
  # OSX application
  ARDUINO_DIR        = /Applications/Arduino.app/Contents/Java
else ifneq (,$(wildcard $(HOME)/Applications/Arduino.app))
  # OSX application installed via homebrew-cask
  ARDUINO_DIR        = $(HOME)/Applications/Arduino.app/Contents/Java
else ifneq (,$(wildcard $(HOME)/arduino-1.6.5))
  # check if user has it installed in their homedirectory
  ARDUINO_DIR        = $(HOME)/arduino-1.6.5
else ifneq (,$(wildcard /usr/share/arduino))
  # fall back to system installation
  ARDUINO_DIR        = /usr/share/arduino
else
  $(error Unable to find Arduino Installation.)
endif
