package edu.acc.j2ee.hubbub5.jpa;

import java.sql.Date;

public class CurrentDate {
    public static Date now() {
        return new Date(new java.util.Date().getTime());
    }
}
