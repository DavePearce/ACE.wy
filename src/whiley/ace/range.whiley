package ace

public type Range is {
    int startRow,
    int startColumn,
    int endRow,
    int endColumn
}

// Native Range constructor
public native method Range(int startRow, int startCol, int endRow, int endCol) -> Range