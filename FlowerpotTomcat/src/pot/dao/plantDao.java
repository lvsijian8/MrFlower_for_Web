package pot.dao;

import net.sf.json.JSONArray;
import pot.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lvsijian8 on 2017/3/25.
 */
public class plantDao {
    public Map findFirstAnd(int id, int next) {//处理安卓植物第一界面
        Connection con = null;
        PreparedStatement prepstmt = null;
        ResultSet rs = null;
        boolean nullMark = false;
        Map wai = new HashMap();
        JSONArray array = new JSONArray();
        con = DBConnection.getDBConnection();
        String sql = "select * from plant plant_id LIMIT ?,?";
        try {
            prepstmt = con.prepareStatement(sql);
            prepstmt.setInt(1, id);
            prepstmt.setInt(2, next);
            rs = prepstmt.executeQuery();
            while (rs.next()) {
                nullMark = true;
                Map params = new HashMap();
                params.put("fid", rs.getInt(1));
                params.put("pic", rs.getString(4));
                params.put("namec", rs.getString(2));
                params.put("namee", rs.getString(3));
                array.add(params);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeDB(con, prepstmt, rs);
        }
        wai.put("data", array);
        if (nullMark)
            return wai;
        else
            return null;
    }

    public JSONArray findFirstWeb(int page,int next) {//处理安卓植物第一界面
        page=(page-1)*4;
        Connection con = null;
        PreparedStatement prepstmt = null;
        ResultSet rs = null;
        JSONArray array = new JSONArray();
        con = DBConnection.getDBConnection();
        String sql1="select COUNT(plant_id) from plant";
        String sql = "select * from plant plant_id LIMIT ?,?";
        try {
            prepstmt = con.prepareStatement(sql1);
            rs = prepstmt.executeQuery();
            while (rs.next()) {
                Map params = new HashMap();
                params.put("pageMax",((rs.getInt(1)-1)/next+1));
                array.add(params);
            }
            prepstmt = con.prepareStatement(sql);
            prepstmt.setInt(1, page);
            prepstmt.setInt(2, next);
            rs = prepstmt.executeQuery();
            while (rs.next()) {
                Map params = new HashMap();
                params.put("pic", rs.getString(4));
                params.put("namec", rs.getString(2));
                params.put("brief", rs.getString(5));
                array.add(params);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeDB(con, prepstmt, rs);
        }
            return array;
    }
}
