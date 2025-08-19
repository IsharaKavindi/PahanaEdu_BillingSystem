package services.Test;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import model.user;
import services.userServices;

@FixMethodOrder(MethodSorters.NAME_ASCENDING) 
public class userServicesTest {

    static userServices service;
    static user testUser;

    @BeforeClass
    public static void setup() {
        service = new userServices();
        testUser = new user();
        testUser.setUsername("testuser");
        testUser.setName("Test User");
        testUser.setAge(25);
        testUser.setEmail("test@example.com");
        testUser.setPassword("password123");
    }

    @Test
    public void test1_regUser() {
        try {
            service.regUser(testUser);
        } catch (Exception e) {
            fail("Registration failed: " + e.getMessage());
        }
    }

    @Test
    public void test2_validate() {
        boolean valid = service.validate(testUser);
        assertTrue("User should be validated successfully", valid);
    }

    @Test
    public void test3_getOne() {
        user fetched = service.getOne(testUser);
        assertNotNull("User should be fetched", fetched);
        assertEquals(testUser.getUsername(), fetched.getUsername());
        assertEquals(testUser.getEmail(), fetched.getEmail());
    }

    @Test
    public void test4_getAllUsers() {
        ArrayList<user> users = service.getAllUsers();
        assertNotNull("Users list should not be null", users);
        assertTrue("Users list should have at least one user", users.size() > 0);
    }

    @Test
    public void test5_deleteUser() {
        boolean deleted = service.deleteUser(testUser);
        assertTrue("User should be deleted", deleted);

        boolean valid = service.validate(testUser);
        assertFalse("Deleted user should not validate", valid);
    }
}
