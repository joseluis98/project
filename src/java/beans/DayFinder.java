/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author JoseDesk
 */
public class DayFinder {

    public DayFinder() {
    }

    public int numberOfDays(String pick, String drop) throws ParseException {

        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
        
        Date displaydate1 = dateformat.parse(pick);
        Date displaydate2 = dateformat.parse(drop);
        
        
        int differenceInDays = (int) ((displaydate2.getTime() - displaydate1.getTime()) / (1000 * 60 * 60 * 24));//common method to calculate number of days

        return differenceInDays;
    }



}
