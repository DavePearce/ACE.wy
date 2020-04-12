package ace

public type Range is {
    int startRow,
    int startColumn,
    int endRow,
    int endColumn
}

public native Range(int startRow, startCol, int endRow, int endCol) -> Range