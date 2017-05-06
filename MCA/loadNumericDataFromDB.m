function data = loadNumericDataFromDB(dbName, username, password, query)
    setdbprefs('DataReturnFormat','numeric');
    conn = database.ODBCConnection(dbName, username, password);
    cursor = [];
    if isSuccessfulConnection(conn)
        cursor = exec(conn, query);
        cursor = fetch(cursor);
        close(conn);
    end

    data = cursor.Data;
    close(cursor);
end
