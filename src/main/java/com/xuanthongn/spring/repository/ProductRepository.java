package com.xuanthongn.spring.repository;

import com.xuanthongn.spring.models.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class ProductRepository {
    @Autowired
    private SessionFactory sessionFactory;

    public List<Product> getProducts() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Product> cq = cb.createQuery(Product.class);
        Root<Product> root = cq.from(Product.class);
        cq.select(root);
        Query query = session.createQuery(cq);

        return query.getResultList();
    }

    public void deleteProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product book = session.byId(Product.class).load(id);
        session.delete(book);
    }

    public void saveProduct(Product theProduct) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theProduct);
    }

    public Product getProduct(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Product theProduct = currentSession.get(Product.class, theId);
        return theProduct;
    }

}
