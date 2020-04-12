package ace

import string from js::core
import EditSession from ace::session
import Range from ace::range
import Selection from ace::selection

public type Editor is &{
    // Adds the selection and cursor.
    method addSelectionMarker(Range) -> (Range),
    // Aligns the cursors or selected text.
    method alignCursors(),
    // Outdents the current line.
    method blockOutdent(),
    // Blurs the current textInput.
    method blur(),
    // Try and center current selection on screen.
    method centerSelection(),
    // Empty selection (by de-selecting it).
    method clearSelection(),
    // Copies all the selected lines down one row.
    method copyLinesDown()->(int),
    // Copies all the selected lines up one row.
    method copyLinesUp()->(int),
    // Cleans up the entire editor.    
    method destroy(),
    // Removes all selections except last added one.    
    method exitMultiSelectMode(),
    // Finds and selects all occurrences of needle.
    // method find(string, Object, bool)
    // Performs another search for needle in the document. For more
    // information on options, see Search.    
    // findNext(Object options, Boolean animate) 
    // Performs a search for needle backwards. For more information on
    // options, see Search.
    // method findPrevious(Object, bool),
    // Brings the current textInput into focus.
    method focus(),
    // Executes a command for each selection range.    
    method forEachSelection(string, string),
    // Returns true if the behaviors are currently enabled. "Behaviors" in
    // this case is the auto-pairing of special characters, like quotation
    // marks, parenthesis, or brackets.    
    function getBehavioursEnabled()->(bool),
    // Returns the string of text currently highlighted.    
    function getCopyText()->(string),
    // Gets the current position of the cursor.
    //function getCursorPosition()->Object,
    // Returns the screen position of the cursor.    
    function getCursorPositionScreen()->(int),
    // Returns the current mouse drag delay.
    function getDragDelay()->(int),
    // Returns the index of the first visible row.    
    function getFirstVisibleRow()->(int),
    // Returns true if current lines are always highlighted.
    function getHighlightActiveLine()->(bool),
    // Returns true if currently highlighted words are to be highlighted.
    function getHighlightSelectedWord()->(bool), 
    // Returns the keyboard handler, such as "vim" or "windows".
    function getKeyboardHandler()->(string), 
    // Returns an object containing all the search options. For more
    // information on options, see Search.
    //function getLastSearchOptions()->Object 
    // Returns the index of the last visible row.
    function getLastVisibleRow()->(int),
    // Works like EditSession.getTokenAt(), except it returns a number.
    // function getintAt(Object, Object)->(int) 
    // Returns true if overwrites are enabled; false otherwise.
    function getOverwrite()->(bool),
    // Returns the column number of where the print margin is.
    function getPrintMarginColumn()->(int),
    // Returns true if the editor is set to read-only mode.
    function getReadOnly()->(bool),
    // Returns the value indicating how fast the mouse scroll speed is (in
    // milliseconds).    
    function getScrollSpeed()->(int),
    // Returns selection object.
    function getSelection()->Selection,
    // Returns the Range for the selected text.
    function getSelectionRange()->Range, 
    // Returns the current selection style.
    function getSelectionStyle()->(string),
    // Returns the current session being used.
    function getSession()->EditSession,
    // Returns true if the fold widgets are shown.
    function getShowFoldWidgets()->(bool),
    // Returns true if invisible characters are being shown.
    function getShowInvisibles()->(bool),
    // Returns true if the print margin is being shown.
    function getShowPrintMargin()->(bool), 
    // Returns the path of the current theme.
    function getTheme()->(string),
    // Returns the current session's content.
    function getValue()->(string),
    // Returns true if the wrapping behaviors are currently enabled.
    function getWrapBehavioursEnabled()->(bool),
    // Moves the cursor to the specified line number, and also into
    // the indicated column.
    method gotoLine(int, int, bool),
    // Shifts the document to wherever "page down" is, as well as
    // moving the cursor position.
    method gotoPageDown(),
    // Shifts the document to wherever "page up" is, as well as moving the
    // cursor position.
    method gotoPageUp(),
    // Indents the current line.
    method indent(),
    // Inserts text into wherever the cursor is pointing.
    method insert(string),
    // Returns true if the current textInput is in focus.    
    function isFocused()->(bool),
    // Indicates if the entire row is currently visible on the screen.
    function isRowFullyVisible(int)->(bool),
    // Indicates if the row is currently visible on the screen.    
    function isRowVisible(int)->(bool),
    // Moves the cursor's row and column to the next matching bracket.
    //method jumpToMatching(Object select) 
    // If the character before the cursor is a number, this functions
    // changes its value by amount.
    method modifyint(int),
    // Moves the cursor to the specified row and column. Note that this does
    // not de-select the current selection.
    method moveCursorTo(int, int),
    // Moves the cursor to the position indicated by pos.row and
    // pos.column.
    // method moveCursorToPosition(Object pos) 
    // Shifts all the selected lines down one row.
    method moveLinesDown()->(int),
    // Shifts all the selected lines up one row.
    method moveLinesUp()->(int),
    //
    // stuff
    
    // Sets a new theme for the editor.
    method setTheme(string),
    //
    ...
}
