##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uO1
##Nc3NCtDXTlGDjofG5iZk2UfhT20/UuGeqr2zy5GA/vn+siDVB5MXRjQ=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiS5
##OsHQCZGeTiiZ4NI=
##OcrLFtDXTiS5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWI0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnRf6lvrUSgqYMHbl7OwhLi5/viM
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnRV90LgRSgiYIWPsbPnyoSrv/PpujeZXpMAQRRWhTv1AUf8OQ==
##P8HPFJGEFzWE8pnH6ic3wVnrR2U+fNfY7O72k+E=
##KNzDAJWHD2fS8u+VyCZ+9gvKUG0uY9CJq/XynNDrnw==
##P8HSHYKDCX3N8u+VyCZ+9gvKUG0uY9CJq/XynNDrnw==
##LNzLEpGeC3fMu77Ro2k3zlnnUSgPfMCetKO11sLpp7u72w==
##L97HB5mLAnfMu77Ro2k3zlnnUSgPfMCetKO11sLpp7u72w==
##P8HPCZWEGmaZ7/L+8T1kpW/8R20me9eJ+uP/ldbc
##L8/UAdDXTlGDjofG5iZk2UfhT20/UuGeqr2zy5GA1+X8vjb4R546TENOkyjuSk6lXJI=
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
# Set Title
$host.ui.RawUI.WindowTitle = "Hopes and New Year"
# Delete folder if it already exists (why would it???)
$Folder = "$env:temp\HopesAndNewYear"
if (Test-Path $Folder) {
	Remove-Item -LiteralPath "$Folder" -Force -Recurse
}
$runtime = (Get-Date -Format HHmm)
# Check if script may not make it in time (should have ran it earlier idiot)
If ($runtime -ge '2357') {
	Write-Host "Unfortunately, you may have ran the script too late, and the next steps may not be able to complete in time."
	Write-Host "Do you want to continue anyway? It is possible the next steps will complete faster than normal."
	$continue = Read-Host -Prompt 'Type yes or no '
}
If ($continue -eq 'no') {
	exit
}
# Create working directories
New-Item -Path $Folder -ItemType Directory
New-Item -Path $Folder\ffmpeg -ItemType Directory
New-Item -Path $Folder\cmdmp3new -ItemType Directory
# Download dependencies
$url1 = "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl-shared.zip"
$url2 = "https://github.com/yt-dlp/yt-dlp/releases/download/2021.12.27/yt-dlp.exe"
$url3 = "http://www.mailsend-online.com/wp/cmdmp3new.zip"
$output1 = "$Folder\ffmpeg.zip"
$output2 = "$Folder\ffmpeg\ffmpeg-master-latest-win64-gpl-shared\bin\youtube-dl.exe"
$output3 = "$Folder\cmdmp3new.zip"
$start_time = Get-Date
Import-Module BitsTransfer
Start-BitsTransfer -Source $url1 -Destination $output1
# Ffmpeg is special
Expand-Archive -Path $Folder\ffmpeg.zip -DestinationPath $Folder\ffmpeg\
Start-BitsTransfer -Source $url2 -Destination $output2
Start-BitsTransfer -Source $url3 -Destination $output3
# Expand Archies
Expand-Archive -Path $Folder\cmdmp3new.zip -DestinationPath $Folder\cmdmp3new
# Change Directory into the working directory
cd $Folder
# use youtube-dl to download Hopes and Dreams
$app = "$Folder\ffmpeg\ffmpeg-master-latest-win64-gpl-shared\bin\youtube-dl.exe"
$arg = "-x"
$arg2 = "--audio-format"
$arg3 = "mp3"
$arg4 = "https://www.youtube.com/watch?v=tz82xbLvK_k"
& $app $arg $arg2 $arg3 $arg4
# Move Hopes and Dreams to the cli based mp3 player
Move-Item -LiteralPath "Undertale Ost - 087 - Hopes and Dreams [tz82xbLvK_k].mp3" -Destination "$Folder\cmdmp3new\undertale.mp3"
# Loop script for checking time and only starting when it is 23:59 or 11:59:00 PM. If it is that time or greater, it will begin the timing portion
While ($true) {
	$currenttime = (Get-Date -Format HHmmssfff)
	Write-Host "Waiting for the time to be 23:59:37.500 " $currenttime
	If ($currenttime -ge '235937350') {
	Clear
	Write-Host "NOW WAITING TO TIME HOPES AND DREAMS! STARTING IN 37.5 SECONDS!"
	Write-Host "                                                                               "
	Write-Host "                                       @                                       "
	Write-Host "                      ///////       /%@@   //     ///////                      "
	Write-Host "                    ,@%%%%@@@@,    ,@@@@,@@@    ,@@@@%%%%@,                    "
	Write-Host "                    @      @@@@@. @@@@@@@@@@@ @@@@@*      @                    "
	Write-Host "                     @     @@ @@. @@@@@@@@@@@ @@@ @*    .@                     "
	Write-Host "                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         "
	Write-Host "                       ,@@@@@@@@.  @@@@@@@@@  @@@@@@@@@                        "
	Write-Host "                      @@@@@@@@    @@ /@@@  @@    @@@@@@@&                      "
	Write-Host "                     @@@@@@  @@   @ @@@@@@@ @   @@ #@@@@@@                     "
	Write-Host "                     @@@@@@  @@@@@@@@@@@@@@@@@@@@@ #@@@@@@                     "
	Write-Host "                     @@@@@@     &@@@@@@@@@@@@@     #@@@@@@                     "
	Write-Host "               @@@@@ @@@@@@   @@. @@ /@@@  @@ @@@  #@@@@@@ @@@@@               "
	Write-Host "            @@@@@@@@@ @@@@@    @@@ @@@@@@@@@ @@@   #@@@@& @@@@@@@@@            "
	Write-Host "         .@@@@@@@@@@@ @@@@@@@   &@@ @(   @@ @@    @@@@@@& @@@@@@@@@@@          "
	Write-Host "         .@      @@@@  ,@@@@@      @@@@@@@@@      @@@@@   @@@@      @          "
	Write-Host "                    @@   @@@@@                   @@@@@  .@@                    "
	Write-Host "    (@         @@@,  @ ,@ @@@@@                 @@@@@ @ .@  @@@@         @     "
	Write-Host "    (@@@@@@@@@@@@@@@                                       @@@@@@@@@@@@@@@     "
	Write-Host "        @@@@@                @ @@@  @@@ @@@  @@@ @               %@@@@#        "
	Write-Host "                @@,                  /@@@                   @@@                "
	Write-Host "           @@@@@@@,                                         @@@@@@@@           "
	Write-Host "         .@@@@@@@      ,@     @@.             @@@     @       @@@@@@@          "
	Write-Host "         .@@@@@@@     @%                               @&     @@@@@@@          "
	Write-Host "         .@@@@@@@     @%  @@@@@@.             @@@@@@@  @&     @@@@@@@          "
	Write-Host "        @@@@@@@@@     @%   @@@@@@@@ @@@@@@@ @@@@@@@*   @&     @@@@@@@@#        "
	Write-Host "        @@@@@@@@       ,@       &@@  /@@@   @@        @        @@@@@@@#        "
	Write-Host "       @@@@@@@@@       ,@                             @        @@@@@@@@@       "
	Write-Host "       @@@@@@@@@         @                           @         @@@@@@@@@       "
	Write-Host "       @@@@@@@@@         @      #%@%       %@%       @         @@@@@@@@@       "
	Write-Host "      /@@@@@@@@@         //     ////       ///     *//         @@@@@@@@@/      "
	Write-Host "      @@@@@@@@@           %,,        .,,,         ,(%           @@@@@@@@@      "
	Write-Host "      @@@@@@@@@            @@        /@@@         @*            @@@@@@@@@      "
	Write-Host "    (@@@@@@@@@@               @                 @               @@@@@@@@@@     "
	Write-Host "    (@@@@@@@@@@                 &@           @                  @@@@@@@@@@     "
	Write-Host "   @@@@@@@@@@@@                     @@@@@@@                     @@@@@@@@@@@@   "
	Write-Host "   @@@@@@@@@@                                                    %@@@@@@@@@@   "
	Write-Host "      @@@@@@@                                                    %@@@@@@@      "
	Write-Host "   @@@  @@@@@                                                    %@@@@#  @@@   "
	Write-Host "  @@@@@  .@@@                                                    %@@@   @@@@@  "
	Write-Host " @@@@@@@   @@                                                    %@@  *@@@@@@@ "
	Write-Host " @@@@@  @&                                                           @#  @@@@@ "
	Write-Host "  @@@@  @&      @                                             @      @#  @@@@  "
	Write-Host "   @/ @         @                                             @         @ @@   "
	Write-Host "                @                                             @                "
	Write-Host "                @                                              @               "
	Write-Host "               @                                               @               "
	Write-Host "               @                                                @,             "
	Write-Host "               @  %@@@                                          @,             "
	Write-Host "               @@          @@@@@.                               @,             "
	Write-Host "               @                     /@@@@@                     @,             "
	Write-Host "                  %@@                    @@       @@@@@@@@      @,             "
	Write-Host "                       ,@@@@@@@@@@@@         @@@@@        @                    "
	Write-Host "                         @@@@@@@@@@@         @@@@@@@@@@@@@                     "
	Write-Host "                       ,@@@@@@@@@@@           @@@@@@@@@@@@                     "
	Write-Host "                      @@@@@@@@@@@@@           @@@@@@@@@@@@@                    "
	Write-Host "                      @@@ @@@@ @@@@           @@@@ #@@@ .@@                    "
	Write-Host "                        , ,,,, ,,,              ,, .,,,  ,                     "
	Write-Host "HAVE A HAPPY NEW YEAR!!!!"
	.\cmdmp3new\cmdmp3.exe .\cmdmp3new\undertale.mp3 | Out-Null
	Write-Host "Thank you for using Hopes and New Year! I wrote this all in the evening of New Years Eve. By Kris Dreemurr#5817."
	pause
	exit
	}
}
# Happy New Year from Kris Dreemurr#5817!