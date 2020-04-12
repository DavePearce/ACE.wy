package ace

import string from js::core

public type EditSession is &{
    // Adds className to the row, to be used for CSS stylings and whatnot.
    method addGutterDecoration(int, string),
    // Adds a new marker to the given Range
    method addMarker(Range, string, string, bool) -> int
    // Clears all the annotations for this session
    method clearAnnotations(),
    // Sets annotations for this session
    method setAnnotations(Annotation[]),
    //
    method setMode(string),
    //
    ...
}

public type Annotation is {
    string text,
    string type,
    int row,
    int column    
}

public function error(string text, int row, int column) -> Annotation:
    return {
        text: text,
        type: "error",
        row: row,
        column: column
    }