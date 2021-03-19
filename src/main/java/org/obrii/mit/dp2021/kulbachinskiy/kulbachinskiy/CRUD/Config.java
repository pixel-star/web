package org.obrii.mit.dp2021.kulbachinskiy.kulbachinskiy.CRUD;

public class Config {
    
    private static String fileName="";
    
    public static String getFileName(){
    return fileName;
    }
    
    public static void setFileName(String aFileName){
    fileName = aFileName;
    }
    
    // PostgreSQL
    private static final String dbURL   = "jdbc:postgresql://obrii.org:5432/db2021mit21s7";
    private static final String dbUserName   = "s7";
    private static final String dbPassword   = "3748";

    public static String getURL() { return dbURL; }
    public static String getDbUser() { return dbUserName; }
    public static String getDbPass() { return dbPassword; }
}
