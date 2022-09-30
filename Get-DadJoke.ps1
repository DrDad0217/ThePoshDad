<#
.SYNOPSIS
    Presents you with a wonderful Dad joke
.DESCRIPTION
   Ever been in a tight spot needing a quick response via Dad Joke? Are you expecting a baby soon but don't know if you have the
   arsenal of dad jokes needed to solidify your title as a Dad? Then this function is for you.
.PARAMETER ExtraCheesy
If you are feeling extra dangerous and really wanna make some eyes roll supply this parameter, it is optional by default.
.EXAMPLE
   Get-DadJoke -ExtraCheesy
   Supply the ExtraCheesy parameter if you really wanna get some eyes rolling.
#>

{0}
function Get-DadJoke {
    [CmdletBinding()]
    param (
    [Parameter(Mandatory=$false)]    
    [switch]$ExtraCheesy
    )
    
$Jokes = @(

    "My wife said I should do lunges to stay in shape. That would be a big step forward.",
    "What do a tick and the Eiffel Tower have in common? They're both Paris sites."
    "How do you follow Will Smith in the snow? You follow the fresh prints."
    "I thought the dryer was shrinking my clothes. Turns out it was the refrigerator all along."
    "Dear Math, grow up and solve your own problems."
    "What's the best thing about Switzerland? I don't know but the flag is a plus"
    "What do you call a poor Santa Claus? St. Nickel-less"
    "Shout out to my fingers. I can count on all of them."
    "You think swimming with sharks is expensive? Swimming with sharks cost me an arm and a leg."'
    "I hate when I accidently type capital letters...Oh well shift happens."


)

if ($ExtraCheesy.ispresent){

    $Jokes = @(

        "I'm afraid for the calendar. Its days are numbered. I don't know, but the flag is a big plus."
        "Why do fathers take an extra pair of socks when they go golfing? In case they get a hole in one!" 
        "Where do you learn to make a banana split? Sundae school." 
        "Why did Billy get fired from the banana factory? He kept throwing away the bent ones."
        "What time did the man go to the dentist? Tooth hurt-y."
        "Why didn't the skeleton climb the mountain? It didn't have the guts."
        "What do you call it when a snowman throws a tantrum? A meltdown."
        "I used to be addicted to soap, but I'm clean now."
        "A guy walks into a bar...and he was disqualified from the limbo contest."
        "When two vegans get in an argument, is it still called a beef?"

    

)


}

Write-Host $(Get-Random $Jokes) -ForegroundColor Green

}
	


$Total = dir -path C:\Support\Downloads  -file -force -Recurse -ErrorAction Continue | 
	Measure-object length -sum -max -average | 
	Select-Object @{name = "Total Files"; Expression = { $_.count } },
	@{name = "Largest File(MB)"; Expression = { "{0:F2}" -f ($_.maximum / 1MB) } },
	@{name = "Average Size(MB)"; Expression = { "{0:F2}" -f ($_.average / 1MB) } },
	@{name = "Total Size(MB)"; Expression = { "{0:F2}" -f ($_.sum / 1MB) } }
    
