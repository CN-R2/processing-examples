/**
 * Pianophase
 *
 * Proof of concept for Piano Phase (1967) by Steve Reich, for
 * two pianos. Two identical patterns are playing simultaneously,
 * but one accelerates a bit each time it repeats itself.
 *
 * The audio samples are loaded separately. Note that this could be
 * done differently, for example using MIDI sequences, or by loading
 * only one sound with the whole sequence and moving the playhead.
 */

import ddf.minim.*;

Minim minim;

// Create an array that will contain the twelve samples
AudioSample[] note = new AudioSample[12];

int count = 0;
int count2 = 0;

// Set the default time interval between each note (in ms)
float interval = 130;
float interval2 = 130;

// Initialize timings
float nextTime = millis();
float nextTime2 = millis();

void setup() {
  minim = new Minim(this);

  // Load the twelve notes of Piano Phase into the array
  for (int i = 0; i < 12; i++) {
    note[i] = minim.loadSample("sounds/" + i + ".wav");
  }
}

void draw() {
  // Piano #1
  if (millis() > nextTime) {
    // Play the current note
    note[count].trigger();

    // Save current time and add interval for the next note
    nextTime = millis() + interval;

    // Increment count so that the next note triggers
    count++;

    // Simple loop
    if (count > note.length - 1) {
       count = 0;
    }
  }

  // Piano #2
  if (millis() > nextTime2) {
    note[count2].trigger();

    nextTime2 = millis() + interval2;
    count2++;

    // Whenever the end of this pattern is reached, speed up
    if (count2 > note.length - 1) {
       count2 = 0;
       interval -= 0.0001;
    }
  }
}
