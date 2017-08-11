package database;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ ClockingRetrieverTest.class, UserAccountTest.class, UserPreferenceRetrieverTest.class })
public class AllTests {

}
