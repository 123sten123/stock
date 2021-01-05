package com.book.model;

import org.springframework.stereotype.Component;

/**
 * Created by Степан1 on 29.12.2020.
 */

@Component
public class User {

    private String name;
    private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
