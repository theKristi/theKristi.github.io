/**This function is called when the document loads**/
$(document).ready(setUp); // End Document Ready

/**
*This function handles what happens to build the page
**/
function setUp()
{
makeMid();
//addDeleteListener();
}
function makeMid()
{
	// We pass some notes to |MidiWriter.createNote| to create the MIDI
// events that define the notes that will be in the final MIDI stream. If
// no other parameters are specified to |createNote|, a NoteOff event
// will be inserted automatically, instead of letting the note ring forever.

// Disregard the |push.apply|, it is used here simply to flatten the
// resulting array, since |createNote| returns an array of events.

var noteEvents = [];
["C4", "E4", "G4"].forEach(function(note) {
    Array.prototype.push.apply(noteEvents, MidiEvent.createNote(note));
});

// Create a track that contains the events to play the notes above
var track = new MidiTrack({ events: noteEvents });

// Creates an object that contains the final MIDI track in base64 and some
// useful methods.
var song  = MidiWriter({ tracks: [track] });

// Alert the base64 representation of the MIDI file
alert(song.b64);

// Play the song
song.play();

// Play/save the song (depending of MIDI plugins in the browser). It opens
// a new window and loads the generated MIDI file with the proper MIME type
song.save();
}