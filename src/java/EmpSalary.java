
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.PrintWriter;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class EmpSalary {
    private int Eno;
    private double basic;
    private double otr;
    private float no_hrs;
    private double total;
    
    public EmpSalary(int eno,float oth,double otr){
        this.Eno=eno;
        no_hrs=oth;
        this.otr=otr;
        
        total=no_hrs*this.otr;
        
        try {
			Connection conn=DBConnect.getConnection();			
			if(conn!=null) {				
				Statement ps=conn.createStatement();				
				String sql="INSERT INTO temp(Eno,Otr,Othrs,Total) VALUES ('"+Eno+"','"+this.otr+"','"+no_hrs+"','"+total+"')";
                                int result = ps.executeUpdate(sql);

                        }

	}catch(SQLException e) {}
    }
    public EmpSalary(int eno,double bsal,float oth,double otr){
        this.Eno=eno;
        basic=bsal;
        no_hrs=oth;
        this.otr=otr;
        
        total=basic+no_hrs*this.otr;
        
        try {
			Connection conn=DBConnect.getConnection();			
			if(conn!=null) {				
				Statement ps=conn.createStatement();				
				String sql="INSERT INTO per(Eno,Basic,Otr,Othrs,Total) VALUES ('"+Eno+"','"+basic+"','"+this.otr+"','"+no_hrs+"','"+total+"')";
                                int result = ps.executeUpdate(sql);
                                

                        }

	}catch(SQLException e) {}
    }
    
}
