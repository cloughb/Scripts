# Create a SAPI.SpVoice COM object
$voice = New-Object -ComObject SAPI.SpVoice

# Text to be spoken
$textToSpeak = "Happy holidays from the BSBC IT team. Make sure to tip your local IT manager!"

# Adjust the voice pitch (range: 0 to 20)
$voice.Rate = 2   # You can experiment with different values

# Speak the text
$voice.Speak($textToSpeak)
