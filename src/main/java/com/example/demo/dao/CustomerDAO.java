package com.example.demo.dao;

import com.example.demo.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomerById(int id);

    public void deleteCustomerById(int id);
}
