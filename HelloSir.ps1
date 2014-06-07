# Set-ExecutionPolicy Restricted
# Set-ExecutionPolicy Unrestricted

# ExecutionPolicy is currently set to Unrestricted in order for the script to work. ExecutionPolicy was set to Restricted originally.

# Set this script to run at startup in the Task Scheduler.

Add-Type -AssemblyName System.Speech

$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

$date = Get-Date

# Hazel is the default voice on my machine.
# $speak.SelectVoice("Microsoft Hazel Desktop")

if ($date.Hour -lt 12) { $timeOfDay = "morning" }
elseif ($date.Hour -lt 18) { $timeOfDay = "afternoon" }
else {$timeOfDay = "evening" }

$speak.Speak("Good $timeofDay, Sir. How are we feeling today? It's $((date).ToShortTimeString()) on $((date).ToShortDateString()). Working on a secret project are we Sir?")

$speak.Dispose()