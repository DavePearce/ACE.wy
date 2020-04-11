package ace

import string from js::core

public type EditSession is &{
    // Adds className to the row, to be used for CSS stylings and whatnot.
    method addGutterDecoration(int, string),     
    ...
}