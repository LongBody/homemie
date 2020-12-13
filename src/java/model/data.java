/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

/**
 *
 * @author LongBody
 */
public class data {

    public static void main(String[] args) throws ParseException {
        String sDate1 = "01/01/1997";
        String sDate2 = "31/12/1997";
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
        Date endDate = new SimpleDateFormat("dd/MM/yyyy").parse(sDate2);
        Date startDate = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
        Date randomDate = new Date(ThreadLocalRandom.current().nextLong(startDate.getTime(), endDate.getTime()));
        System.out.println(dateFormat.format(randomDate));
//String AB = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
//
//        SecureRandom rnd = new SecureRandom();
//        StringBuilder sb = new StringBuilder(7);
//        for (int i = 0; i < 7; i++) {
//            sb.append(AB.charAt(rnd.nextInt(AB.length())));
//        }
//        System.out.println(sb.toString());
//        
    }

}
