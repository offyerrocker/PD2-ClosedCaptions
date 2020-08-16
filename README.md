# PD2-ClosedCaptions
Closed Captions mod for PAYDAY 2

This mod requires SuperBLT. BeardLib is optional, but highly recommended. 
"Closed Captions" mod, or "CC," is intended specifically for the deaf and hard of hearing (due to the somewhat lacking in-game subtitles), but is suitable for any players who may simply enjoy visual aids in addition to audio cues. 

By American definition (USA and Canada), closed captions differ from subtitles in that while the latter is designed for cases in which the audio is audible (or on-screen text is visible) but not understandable by the viewer(s), eg. a foreign language; the former, meanwhile, assumes that the viewer is unable to fully hear the audio, and thus aims to transcribe any significant audio, whether verbal or nonverbal. 
The implementation in this mod aims for the former. Many sound effects (such as ammo pickup noises, flashbang beeps, or Cloaker cues, which often have insufficient or absent visual cue counterparts) are transcribed, in addition to missing in-game NOC mission dialogue (such as the doctor's patient descriptions in the level No Mercy, which have no subtitles).
Additionally, CC provides visual information as to the directional source of the given audio, via the two characters "<" and ">" acting as arrows. 
(Image todo)

Please note that the captions may not match the specific variant of the sound that is playing. This is due to a modding limitation: WWISE, the audio engine used by PAYDAY 2, handles the sound variation, but does not "tell" the Lua game state which variant it has chosen to play.
Thus, the variant of the caption displayed is randomized in-mod. 
If you so prefer, you may instead choose to have the mod display a "generic" version of the line.

By default, many lines, such as the non-meaningful enemy chatter, are "disabled" from displaying captions, since I determined from user testing that they provided too much visual clutter, and provided very little in the way of useful information. 
Users may choose to create their own settings by copying the "sound_data.lua" file into their BLT saves folder, located in `/PAYDAY 2/mods/saves/sound_data.lua`. The presence of this file will overwrite the default sound_data file, allowing you to make changes to any of the caption data entries you so choose, including text, duration, and enabled/disabled status and conditional triggering. 
This override system is a temporary measure; it is a whole replacement, and as such, any subsequent updates to the original copy of sound_data would need to be manually duplicated inside of a user's custom one, if used.

As of 16 Aug 2020, this mod is still in active development. Many lines are missing, and I am currently doing all mod writing and data entry by myself, and as such, many lines are missing or have incomplete variations logged.
If you would like to contribute, here's what you can do:
A) Download the mod, enable Logging Mode, and play normally. This allows CC to track any lines that are played but do not have registered captions in this mod. Then, you can send me the log file containing these unregistered lines, and I can add them to the game.
B) Download the mod, play normally, and report bugs or missing lines to me. I want to help! So please, help me help you help me help you. 
C) If you find bugs or have potential code improvements, make a pull request to this repo.
Any combination of these things can be helpful. 
Please enjoy the Closed Captions mod! Failing that, I hope it at least makes your game experience less painful.
