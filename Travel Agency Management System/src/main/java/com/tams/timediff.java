package com.tams;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class timediff {
    
    public   int getdiff(String startTime, String endTime) {
        DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        try {
            Date start = dateFormat.parse(startTime);
            Date end = dateFormat.parse(endTime);
            long diffInMillis = end.getTime() - start.getTime();
            return (int) TimeUnit.MILLISECONDS.toHours(diffInMillis);
        } catch (ParseException e) {
            System.out.println(e);
            return -1;
        }
    }
    
    public   int datediff(String sd, String ed) {
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            Date d1 = dateFormat.parse(sd);
            Date d2 = dateFormat.parse(ed);
            long diffInMillies = Math.abs(d2.getTime() - d1.getTime());
            long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
            return (int) diff;
        } catch (ParseException e) {
            System.out.println(e);
            return -1;
        }
    }
}