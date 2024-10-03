package steps;

import core.Action;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.net.MalformedURLException;
import java.time.Duration;

public class CommonSteps {

    private Logger log = Logger.getLogger(CommonSteps.class);
    Action action = new Action();

    public static String currentScenarioName = "";

    @Before
    public void start(Scenario scenario) throws MalformedURLException {
        currentScenarioName = scenario.getName();
        action.startDriver();
        log.info(String.format("******************** %s TEST START ********************", currentScenarioName));
    }

    @After()
    public void takeScreenshotOnFailure(Scenario scenario) {
        if (scenario.isFailed()) {
            try {
                byte[] screenshotBytes = ((TakesScreenshot) Action.androidDriver).getScreenshotAs(OutputType.BYTES);
                scenario.attach(screenshotBytes, "image/png", "Failure Screenshot");
                log.info(String.format("******************** %s TEST FINISHED   ********************", currentScenarioName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        action.endDriver();

    }
}
