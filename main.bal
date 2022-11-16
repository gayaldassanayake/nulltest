import ballerina/io;
import ballerinax/java.jdbc;
// import ballerina/sql;

public function main() {
    io:println("Hello, World!");
}

function createJdbcClient() returns jdbc:Client|error {
    return new ("jdbc:h2:mem:mockTestDB");
    // return new (
    //     configs:CHOREO_SUBS_DB_CONN_STR,
    //     configs:CHOREO_DB_USERNAME,
    //     configs:CHOREO_DB_PASSWORD,
    //     connectionPool = configs:dbConnPool,
    //     options = configs:dbOptions
    // );
}
