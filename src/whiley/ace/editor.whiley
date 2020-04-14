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
    // Moves the cursor down in the document the specified number of
    // times. Note that this does de-select the current selection.   
    method navigateDown(int),
    // Moves the cursor to the end of the current file. Note that this does
    // de-select the current selection.
    method navigateFileEnd(),
    // Moves the cursor to the start of the current file. Note that this does
    // de-select the current selection.
    method navigateFileStart(),
    // Moves the cursor left in the document the specified number of
    // times. Note that this does de-select the current selection.
    method navigateLeft(int),
    // Moves the cursor to the end of the current line. Note that this does
    // de-select the current selection.
    method navigateLineEnd(),
    // Moves the cursor to the start of the current line. Note that this does
    // de-select the current selection.
    method navigateLineStart(),
    // Moves the cursor right in the document the specified number of
    // times. Note that this does de-select the current selection.
    method navigateRight(int),
    // Moves the cursor to the specified row and column. Note that this does
    // de-select the current selection.
    method navigateTo(int, int),
    // Moves the cursor up in the document the specified number of
    // times. Note that this does de-select the current selection.
    method navigateUp(int),
    // Moves the cursor to the word immediately to the left of the current
    // position. Note that this does de-select the current selection.
    method navigateWordLeft(),
    // Moves the cursor to the word immediately to the right of the current
    // position. Note that this does de-select the current selection.
    method navigateWordRight(),
    // Called whenever a text "paste" happens.
    method onPaste(string),
    // Perform a redo operation on the document, reimplementing the last
    // change.
    method redo(),
    // Removes words of text from the editor. A "word" is defined as a string
    // of characters bookended by whitespace.
    method remove(string),
    // Removes all the lines in the current selection
    method removeLines(),
    // Removes the selection marker.
    method removeSelectionMarker(Range),
    // Removes all the words to the right of the current selection, until
    // the end of the line.
    method removeToLineEnd(),
    // Removes all the words to the left of the current selection, until the
    // start of the line.
    method removeToLineStart(),
    // Removes the word directly to the left of the current selection. 
    method removeWordLeft(),
    // Removes the word directly to the right of the current selection.
    method removeWordRight(),
    // Replaces the first occurrence of options.needle with the value in
    // replacement.
    // method replace(string, Object options),
    // Replaces all occurrences of options.needle with the value in replacement.
    // method replaceAll(string replacement, Object options),
    // Triggers a resize of the editor.
    method resize(bool),
    // Scrolls the document to wherever "page down" is, without changing the
    // cursor position.
    method scrollPageDown(),
    // Scrolls the document to wherever "page up" is, without changing the
    // cursor position.
    method scrollPageUp(),
    // Scrolls to a line. If center is true, it puts the line in middle of
    // screen (or attempts to).
    method scrollToLine(int, bool, bool, method()),
    // Moves the editor to the specified row.
    // method scrollToRow(Object row),
    // Selects all the text in editor.
    method selectAll(),
    // Finds the next occurrence of text in an active selection and adds it
    // to the selections.
    method selectMore(int, bool),
    // Adds a cursor above or below the active cursor.
    method selectMoreLines(int, bool),
    // Selects the text from the current position of the document until where
    // a "page down" finishes.
    method selectPageDown(),
    // Selects the text from the current position of the document until
    // where a "page up" finishes.
    method selectPageUp(),
    // Specifies whether to use behaviors or not. "Behaviors" in this case is
    // the auto-pairing of special characters, like quotation marks,
    // parenthesis, or brackets.
    method setBehavioursEnabled(bool),
    // Sets the delay (in milliseconds) of the mouse drag.
    method setDragDelay(int),
    // Set a new font size (in pixels) for the editor text.
    method setFontSize(int),
    // Determines whether or not the current line should be highlighted.
    method setHighlightActiveLine(bool),
    // Determines if the currently selected word should be highlighted.
    method setHighlightSelectedWord(bool),
    // Sets a new key handler, such as "vim" or "windows".
    method setKeyboardHandler(string),
    // Pass in true to enable overwrites in your session, or false to
    // disable. If overwrites is enabled, any text you enter will type over
    // any text after it. If the value of overwrite changes, this function
    // also emits the changeOverwrite event.
    method setOverwrite(bool),
    // Sets the column defining where the print margin should be.
    method setPrintMarginColumn(int),
    // If readOnly is true, then the editor is set to read-only mode, and
    // none of the content can change.
    method setReadOnly(bool),
    // Sets how fast the mouse scrolling should do.
    method setScrollSpeed(int),
    // Indicates how selections should occur.
    method setSelectionStyle(string),
    // Sets a new editsession to use. This method also emits the
    // 'changeSession' event.
    method setSession(EditSession),
    // Indicates whether the fold widgets are shown or not.
    method setShowFoldWidgets(bool),
    // If showInvisibles is set to true, invisible characters—like spaces or
    // new lines—are show in the editor.
    method setShowInvisibles(bool),
    // If showPrintMargin is set to true, the print margin is shown in the
    // editor.
    method setShowPrintMargin(bool),
    // Adds a new class, style, to the editor.
    method setStyle(string),
    // Sets a new theme for the editor.
    method setTheme(string),
    // Sets the current document to val.
    method setValue(string, int)->string,
    // Specifies whether to use wrapping behaviors or not, i.e. automatically
    // wrapping the selection with characters such as brackets when such a
    // character is typed in.
    method setWrapBehavioursEnabled(bool),
    // Splits the line at the current selection (by inserting an '\n').
    method splitLine(),
    // Given the currently selected range, this function either comments all
    // the lines, or uncomments all of them.
    method toggleCommentLines(),
    // Sets the value of overwrite to the opposite of whatever it
    // currently is.
    method toggleOverwrite(),
    // Converts the current selection entirely into lowercase.
    method toLowerCase(),
    // Converts the current selection entirely into uppercase.
    method toUpperCase(),
    // Transposes current line.
    method transposeLetters(),
    // Transposes the selected ranges.
    method transposeSelections(int),
    // Perform an undo operation on the document, reverting the last
    // change.
    method undo(),
    // Removes the class style from the editor.
    // method unsetStyle(Object),
    // Updates the cursor and marker layers.   
    method updateSelectionMarkers(),
    //
    ...
}
