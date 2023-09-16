package com.xuanthongn.spring.services;

import com.xuanthongn.spring.models.Product;
import com.xuanthongn.spring.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Random;

@Service
public class ProductService {
    @Autowired
    private ProductRepository customerRepository;

    @Transactional
    public List<Product> getProducts() {
        return customerRepository.getProducts();
    }

    @Transactional
    public void saveProduct(Product theProduct) {
        customerRepository.saveProduct(theProduct);
    }

    @Transactional
    public Product getProduct(int theId) {
        return customerRepository.getProduct(theId);
    }

    @Transactional
    public void deleteProduct(int theId) {
        customerRepository.deleteProduct(theId);
    }

}
