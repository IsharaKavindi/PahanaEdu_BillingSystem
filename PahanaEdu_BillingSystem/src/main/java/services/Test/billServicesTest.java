package services.Test;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import model.bill;
import model.billitem;
import services.billServices;

public class billServicesTest {

    private billServices service;
    private bill testBill;
    private billitem testBillItem;

    @Before
    public void setUp() throws Exception {
        service = new billServices();

        testBill = new bill();
        testBill.setBillid(999); 
        testBill.setBillnum("BILL123");
        testBill.setDate("2025-08-20");
        testBill.setTime("12:00");
        testBill.setTotalitems(2);
        testBill.setTotal(500);
        testBill.setPoints(50);
        testBill.setCusid(1);
        testBill.setCusnic("123456789V");

        testBillItem = new billitem();
        testBillItem.setBillid(999);
        testBillItem.setItemid("ITEM001");
        testBillItem.setTitle("Test Item");
        testBillItem.setQuantity(2);
        testBillItem.setPrice(250);
    }

    @Test
    public void testAddBillItem() {
        service.addBillItem(testBillItem);
        ArrayList<billitem> items = service.getAllBillItems();
        assertTrue("Bill items should contain the test item",
                items.stream().anyMatch(i -> i.getItemid().equals(testBillItem.getItemid())));
    }

    @Test
    public void testGetAllBillItems() {
        ArrayList<billitem> items = service.getAllBillItems();
        assertNotNull("Bill items list should not be null", items);
    }

    @Test
    public void testAddBill() {
        boolean result = service.addBill(testBill);
        assertTrue("Bill should be added successfully", result);
        ArrayList<bill> bills = service.getAllBills();
        assertTrue("Bills should contain the test bill",
                bills.stream().anyMatch(b -> b.getBillnum().equals(testBill.getBillnum())));
    }

    @Test
    public void testGetAllBills() {
        ArrayList<bill> bills = service.getAllBills();
        assertNotNull("Bills list should not be null", bills);
    }

    @Test
    public void testDeleteBills() {
        boolean result = service.deleteBills(testBill);
        assertTrue("Bill should be deleted successfully", result);
        ArrayList<bill> bills = service.getAllBills();
        assertFalse("Bills should not contain the deleted bill",
                bills.stream().anyMatch(b -> b.getBillnum().equals(testBill.getBillnum())));
    }

}
