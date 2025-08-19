package services.Test;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import model.item;
import services.itemServices;

public class itemServicesTest {

    private itemServices service;
    private item testItem;

    @Before
    public void setUp() throws Exception {
        service = new itemServices();
        testItem = new item();
        testItem.setItemid("test001");
        testItem.setTitle("JUnit Book");
        testItem.setAuthor("Tester");
        testItem.setCategory("Testing");
        testItem.setPrice(100);
        testItem.setQuantity(5);
    }

    @Test
    public void testRegItem() {
        service.regItem(testItem);

        item fetched = service.getItem(testItem);
        
        assertNotNull("Item should be inserted into the database", fetched);
        assertEquals("Item ID should match", testItem.getItemid(), fetched.getItemid());
        assertEquals("Title should match", testItem.getTitle(), fetched.getTitle());
    }

    @Test
    public void testGetAllItems() {
        ArrayList<item> items = service.getAllItems();
        assertNotNull("Item list should not be null", items);
        assertTrue("Item list should contain at least one item", items.size() > 0);
    }

    @Test
    public void testGetItem() {
        service.regItem(testItem);
        item fetched = service.getItem(testItem);
        assertNotNull("Fetched item should not be null", fetched);
        assertEquals("Item ID should match", testItem.getItemid(), fetched.getItemid());
        assertEquals("Title should match", testItem.getTitle(), fetched.getTitle());
    }

    @Test
    public void testUpdateItem() {
        service.regItem(testItem); 
        testItem.setTitle("Updated Title");
        boolean result = service.updateItem(testItem);
        assertTrue("Item should be updated successfully", result);
        item updated = service.getItem(testItem);
        assertEquals("Title should be updated", "Updated Title", updated.getTitle());
    }

    @Test
    public void testDeleteItem() {
        service.regItem(testItem);
        boolean result = service.deleteItems(testItem);
        assertTrue("Item should be deleted successfully", result);
        item deleted = service.getItem(testItem);
        assertNull("Deleted item should be null", deleted);
    }
}
