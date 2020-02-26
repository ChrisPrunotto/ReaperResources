# ReaperResources

This will maybe eventually become a collection of my Reaper scripts, templates, and other nonsense pulled from my Reaper Resources folder, with the intent of sharing them.

## Project Templates

Templates to start individual projects from.

#### Film Template

This template is based on the PSE FX Editing Template found at [ProSoundEffects](https://blog.prosoundeffects.com/how-to-create-pro-tools-session-templates-for-sound-effects-editing). It's usage is described here:

- Tracks 1 and 2 are for Video. They are hidden from the mixer. 
- Tracks 3 - 14 are Audio busses of the groups described below, this is where I do the bulk of my automation and mixing. 
- Tracks 15 - 18 are sends. The sends are not linked to any specific inputs or outputs - just connect them as needed. The sends use the following plugins:
  - Reverb A (Smaller reverb): RC 48 by Softube / Native Instruments. 
  - Reverb B (Larger reverb): Little Plate by Soundtoys, Drawmer S73 compressor by Softube.
  - Delay A (Shorter delay): Tube Delay by Softube
  - Delay B (Longer delay): STA Delay by Audified.
- Tracks 19-120 are repititious groups. The first channel of each group is a VCA fader that controls the rest of the channels, and has linked mutes and solo. _No audio passes through these VCA faders._ They are organized as follows:
  - For the FX (Sound Effects) groups, I opt to put foley/purely diagetic SFX on group A, and work toward my most abstract / designed sounds on E. (I elected to put only 7 channels per group for a total of 8 so that they fit on a single page of my MCU.)
  - For the BG (Background) groups, each group is split into 4-channel A and B layers for easy checkerboarding. 
  - For the MX (Music) group, the group is split into A and B layers for easy checkerboarding. Likewise, this group has a total of 9 channels.
