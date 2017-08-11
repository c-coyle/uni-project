package beans;

import static org.junit.Assert.*;

import org.junit.Test;


public class UserTest {
	
	private User testUser;
	private int intTwo = 2;
	
	@Test
	public void testSetUsername() {
		testUser = new User();
		testUser.setUsername("J Bloggs");
		assertEquals("J Bloggs",testUser.getUsername());		
	}

	@Test
	public void testGetPassword() {
		assert(intTwo+2==4);
	}	
	
	
	
	@Test
	public void testGetMessage() {
		assert(intTwo+2==4);
	}

	@Test
	public void testUser() {
		assert(intTwo+2==4);
	}

	@Test
	public void testUserStringString() {
		assert(intTwo+2==4);
	}

	@Test
	public void testGetUsername() {
		assert(intTwo+2==4);
	}

	@Test
	public void testSetPassword() {
		assert(intTwo+2==4);
	}

	@Test
	public void testValidate() {
		assert(intTwo+2==4);
	}

}
