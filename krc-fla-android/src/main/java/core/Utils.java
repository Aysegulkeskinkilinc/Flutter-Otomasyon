package core;

public class Utils {

    public static String getProperty(String property, boolean addEnv) {
        BaseConfiguration baseConfiguration = new BaseConfiguration();
        if (addEnv)
            return baseConfiguration.getProperty(Utils.getEnvironment() + "-" + property).toString();
        else
            return baseConfiguration.getProperty(property).toString();
    }

    public static String getEnvironment() {
        BaseConfiguration baseConfiguration = new BaseConfiguration();
        if (System.getProperty("env") != null)
            return System.getProperty("env");
        else
            return baseConfiguration.getProperty("env").toString();
    }

    public static String getParameter(String param) {
        BaseConfiguration baseConfiguration = new BaseConfiguration();

        if (System.getProperty(param) != null)
            return System.getProperty(param);
        else
            return baseConfiguration.getProperty(param);
    }

}