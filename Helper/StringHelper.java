/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

/**
 *
 * @author Hudya
 */
public class StringHelper {
    public static String parseLikeQuery(String query) {
        return "%" + query + "%";
    }
}