package com.book.repozitory;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class StockImpl {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
