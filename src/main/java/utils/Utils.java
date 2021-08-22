package utils;

public class Utils {
//    static final String HOST = "https://localhost:8443/cnpm/";
    static final String HOST = "http://localhost:8080/cnpm/";
//    static final String HOST = "http://cnpm2.sp.skdrive.net/";
    public static String fullPath(String path) {
        return HOST + path;
    }
}
