/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Query.ProductTypeQuery;
import java.sql.ResultSet;
/**
 *
 * @author User
 */
public class ProductTypeController extends BaseController{
     ProductTypeQuery query = new ProductTypeQuery();
    
    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }
}
