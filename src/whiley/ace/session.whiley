package ace

import uint from std::integer
import string from js::core
import Document from w3c::dom
import Range from ace::range

public type EditSession is &{
    // Adds className to the row, to be used for CSS stylings and whatnot.
    method addGutterDecoration(int, string),
    // Adds a new marker to the given Range
    method addMarker(Range, string, string, bool) -> uint,
    // Clears all the annotations for this session
    method clearAnnotations(),
    // Removes a breakpoint on the row number given by rows. This function
    // also emits the 'changeBreakpoint' event.
    method clearBreakpoint(int),
    // Removes all breakpoints on the rows. This function also emites the
    // 'changeBreakpoint' event.
    method clearBreakpoints(),
    // Duplicates all the text between firstRow and lastRow.
    method duplicateLines(uint, uint)->uint,
    // Returns the annotations for the EditSession.
    function getAnnotations()->Annotation[],
    // Returns an array of numbers, indicating which rows have breakpoints.
    function getBreakpoints()->uint[],
    // Returns the Document associated with this session.
    function getDocument() -> Document,
    // Returns the number of rows in the document.
    function getLength()->uint,
    // Returns a verbatim copy of the given line as it is in the document
    function getLine(uint)->string,
    // Returns an array of strings of the rows between firstRow and
    // lastRow. This function is inclusive of lastRow.
    function getLines(uint,uint)->string[],
    // Returns an array containing the IDs of all the markers, either
    // front or back.
    function getMarkers(bool)->uint[],
    // Returns true if overwrites are enabled; false otherwise.
    function getOverwrite()->bool,
    // Removes the marker with the specified ID. 
    method removeMarker(uint),
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
    uint row,
    uint column    
}

public function error(string text, uint row, uint column) -> Annotation:
    return {
        text: text,
        type: "error",
        row: row,
        column: column
    }