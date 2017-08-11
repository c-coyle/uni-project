package databasetest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ DataSourceDemoTest.class, DbTestTest.class })
public class AllTests {

}
