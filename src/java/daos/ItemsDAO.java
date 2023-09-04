/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import database.DBUtils;
import entities.Items;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class ItemsDAO {

    Connection con = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public List<Items> getAllItems() throws ClassNotFoundException, SQLException, Exception {

        List<Items> list = new ArrayList<>();
        String query = "select * from PROJECT_HOME";
        try{
            con = DBUtils.makeConnection();
            stm = con.prepareStatement(query);
            rs = stm.executeQuery();
            while(rs.next()){
                list.add(new Items(rs.getInt(1), rs.getString(2),rs.getString(3) , rs.getString(4), rs.getFloat(6), true));
            }
        }catch(Exception e){
            
        }
       return list;
    }
}
