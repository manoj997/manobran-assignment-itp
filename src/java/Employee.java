/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class Employee {
    private int Emp_No;
    private String Name;
    private int contact;
    private String Address;
    
    public Employee(int eno,String name,int mobile,String add){
        Emp_No=eno;
        this.Name=name;
        contact=mobile;
        Address=add;
    }
    public void employeeDetails(){
        
    }
    public int getEno() {
        return Emp_No;
    }
    public String getName() {
        return Name;
    }
    public int getContact() {
        return contact;
    }
    public String getAdd() {
        return Address;
    }
}
