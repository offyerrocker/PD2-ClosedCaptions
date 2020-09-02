# PD2-ClosedCaptions
Closed Captions mod for PAYDAY 2
README version v0.9, 31 August 2020

Please visit https://modworkshop.net/mod/27224 for more information.

This mod requires [SuperBLT](https://superblt.znix.xyz/). [BeardLib](https://modworkshop.net/mod/14924) is optional, but highly recommended. 
"Closed Captions" mod, or "CC," is intended for the deaf, hard of hearing, or for players who may simply enjoy visual aids in addition to audio cues.

## Closed Captions vs Subtitles
By American definition (USA and Canada), closed captions differ from subtitles in that while the latter is designed for cases in which the audio is audible (or on-screen text is visible) but not understandable by the viewer(s), eg. a foreign language; the former, meanwhile, assumes that the viewer is unable to fully hear the audio, and thus aims to transcribe any significant audio, whether verbal or nonverbal. 
The implementation in this mod aims for the former. Many sound effects (such as ammo pickup noises, flashbang beeps, or Cloaker cues, which often have insufficient or absent visual cue counterparts) are transcribed, in addition to missing in-game NPC mission dialogue (such as the doctor's patient descriptions in the level No Mercy, which have no subtitles).
Additionally, CC provides visual information as to the directional source of the given audio, via the two characters "<" and ">" acting as arrows. 
[click for image preview](https://modworkshop.net/mydownloads/previews/1356_1598253466_020746649ed150944283ca8c2688d4e0.jpg)

## Variations
Please note that the captions may not match the specific variant of the sound that is playing. This is due to a limitation of the game: WWISE, the audio engine used by PAYDAY 2, handles the sound variation, but does not "tell" the Lua game state which variant it has chosen to play.
Thus, the variant of the caption displayed is randomized in-mod. 
If you so prefer, you may instead choose to have the mod display a "generic" version of the line.

## Mod Options and Settings
You can choose to tweak the appearance of captions, as well as filter certain categories of lines from appearing, by using the in-game menu for this mod at Mod Options>Closed Captions. Settings such as caption font size, screen position, and more can be adjusted there. 

## Custom sound_data
Users may choose to use their own caption data version by copying the "sound_data.lua" file into their BLT saves folder, located at `/PAYDAY 2/mods/saves/`. The presence of this file will overwrite the default sound_data file, allowing you to make changes to any of the caption data entries you so choose, including text, duration, and enabled/disabled status and conditional triggering. This system is a temporary; any subsequent updates to the original copy of sound_data would cause a custom sound_data.lua file to become outdated.


Please do report bugs and typos to me- preferably via GitHub - and if you have your own bug fixes or suggested code improvements, you can make pull requests to this repo.

Please enjoy the Closed Captions mod! Failing that, please do not die by a swarm of angry bees.

# TL;DR
## HEARING HARD, READING GOOD
## PLEASE TELL ME ABOUT BUGS, MISSING LINES, OR TYPOS, KTHX
