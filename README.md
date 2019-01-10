# Piano-Key-Identification
In this project, MATLAB scripts and a CCS code has been written to distinguish between tones of different frequencies produced by a piano, thus identifying the key which generated the tone.

test.m - It contains the filters and the rest of the logic used in Signal Conditioning.

generate.m - It is the MATLAB file that has to be run. It prompts the user to select the frequency and generates that frequency.

DSPLP.c - This file contains the CCS Code which was written to control the default on-board LEDs of a TI DSK6713 based on the input frequency of the signal.

# IMPORTANT: Keep test.m in the same directory as generate.m while running the code.
