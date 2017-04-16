package pot.dao.android;

import pot.util.DBConnection;

import java.sql.*;

/**
 * Created by lvsijian8 on 2017/3/27.
 */
public class loginDaoAndroid {
    public String findUser(String user_name,String user_pwd) {
        Connection con = null;
        PreparedStatement prepstmt = null;
        ResultSet rs = null;
        String state="-3";//默认密码错误
        Boolean isAlready=false;
        String sqlAlready = "Select count(user_name) FROM user where user_name=?";
        String sql="select user_id from user where user_name=? AND user_pwd=?";
        String sqlFind="select user_id from user where user_name=?";
        String sqlAddHistory="INSERT INTO history (user_id, time, handle) VALUES(?,?,?);";
        Timestamp now = new Timestamp(new java.util.Date().getTime());
        try {
            con = DBConnection.getDBConnection();
            prepstmt = con.prepareStatement(sqlAlready);
            prepstmt.setString(1, user_name);
            rs = prepstmt.executeQuery();
            while (rs.next()) {
                if(rs.getInt(1)!=0)
                    isAlready=true;
                else
                    state="-2";//用户不存在
            }
            if(isAlready){
                prepstmt = con.prepareStatement(sql);
                prepstmt.setString(1, user_name);
                prepstmt.setString(2, user_pwd);
                rs=prepstmt.executeQuery();
                while(rs.next()){
                    state=""+rs.getInt(1);//密码正确
                }
                prepstmt = con.prepareStatement(sqlAddHistory);
                prepstmt.setInt(1,Integer.parseInt(state));
                prepstmt.setTimestamp(2,now);
                prepstmt.setString(3,"login");
                prepstmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeDB(con, prepstmt, rs);
        }
        return state;
    }
}
