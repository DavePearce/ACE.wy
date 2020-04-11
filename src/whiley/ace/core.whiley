package ace

import string from js::core
import Element from w3c::dom

import Editor from ace::editor

// Embed Ace editor into DOM at element el
public native method edit(string|Element el) -> Editor

// Import module
public native method require(string moduleName)