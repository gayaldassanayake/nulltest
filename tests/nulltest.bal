import ballerina/test;
import ballerina/sql;
import ballerinax/java.jdbc;
import ballerina/io;

@test:Mock {
    functionName: "createJdbcClient"
}
function getMockClient() returns jdbc:Client|sql:Error {
        return test:mock(jdbc:Client);
}

@test:Config {} 
function test1() {
    jdbc:Client|error mocked = createJdbcClient();
    test:assertTrue(mocked is jdbc:Client);
    io:println(typeof mocked);
}
