"""major gam loop continues 'till user closes program"""
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
#Available Sound Options
$speak.GetInstalledVoices().VoiceInfo #list of Voices available
$speak.SelectVoice('Microsoft Hortense Desktop')
$speak.Speak("êtes-vous prêtes mesdames et messieur,on commence")
$speak.SelectVoice('Microsoft Zira Desktop')
$speak.Speak("Let's look on the basic major notes")
while(1){    
    $speak.SelectVoice('Microsoft Zira Desktop') 
    #C = C D E F G A B C 
    $C=261.63,293.66,329.63,349.23,392.00,440.00,493.88,523.25
    $duration=1000
    for($i=0;$i -lt 8; $i++){
        [console]::beep($C[$i],$duration)
    }
    $text="this was the do major gam"
    $voice=New-Object -ComObject "sapi.spvoice"
    $voice.Speak($text)
    #D = D E F# G A B C# D
    $D=293.66,329.63,369.99,392.00,440.00,493.88,554.37,587.33
      for($i=0;$i -lt 8; $i++){
        [console]::beep($D[$i],$duration)
    }
    $speak.Speak("This was the re major gam")
    #E = E F# G# A B C# D# E 
    $E=329.63,369.99,415.30,440.00,493.88,554.37,622.25,659.25
      for($i=0;$i -lt 8; $i++){
        [console]::beep($E[$i],$duration)
    }
    $voice.Speak("This was the mi major gam")
    #F = F G A Bb C D E F
    $F=349.23,392.00,440.00,466.16,523.25,587.33,659.25,698.46
    for($i=0;$i -lt 8; $i++){
        [console]::beep($F[$i],$duration)
    }
    $speak.Speak("This was the fa major gam")
    #G = G A B C D E F# G 
    $G=392.00,440.00,493.88,523.25,587.33,659.25,739.99,783.99
    for($i=0;$i -lt 8; $i++){
        [console]::beep($G[$i],$duration)
    }
    $voice.Speak("This was the sol major gam")
    #A = A B C# D E F# G# A
    $A=440.00,493.88,554.37,587.33,659.25,739.99,830.61,880.00
    for($i=0;$i -lt 8; $i++){
        [console]::beep($A[$i],$duration)
    }
    $speak.Speak("This was the la major gam")
    #B = B C# D# E F# G# A# B
    $B=493.88,554.37,622.25,659.25,739.99,830.61,932.23,987.77
    for($i=0;$i -lt 8; $i++){
        [console]::beep($B[$i],$duration)
    }
    $speak.SelectVoice('Microsoft Hortense Desktop')
    $speak.Speak("Cette note de musique dont nom est la si majeur gamme etait dernier example en fait y'a beaucoup de gammes musicales mais notre program finit ici.")   
}
    
