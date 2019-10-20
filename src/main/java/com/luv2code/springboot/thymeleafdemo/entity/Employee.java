package com.luv2code.springboot.thymeleafdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {

	// define fields
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="EmpId")
	private int id;
	
	@Column(name="EmpName")
	private String emp_name;
	
	@Column(name="DOJ")
	private String doj;
	
	@Column(name="Designation")
	private String designation;
	
	@Column(name="RepMgr")
	private String repmgr;
	
	@Column(name="DeptId")
	private int deptid;
	
	@Column(name="LocId")
	private int locid;
	
	
		
	// define constructors
	
	public Employee() {
		
	}



	public Employee(int id, String emp_name, String doj, String designation, String repmgr, int deptid,
			int locid) {
		
		this.id = id;
		this.emp_name = emp_name;
		this.doj = doj;
		this.designation = designation;
		this.repmgr = repmgr;
		this.deptid = deptid;
		this.locid = locid;
	}



	public Employee(String emp_name, String doj, String designation, String repmgr, int deptid, int locid) {
		this.emp_name = emp_name;
		this.doj = doj;
		this.designation = designation;
		this.repmgr = repmgr;
		this.deptid = deptid;
		this.locid = locid;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getEmp_name() {
		return emp_name;
	}



	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}



	public String getDoj() {
		return doj;
	}



	public void setDoj(String doj) {
		this.doj = doj;
	}



	public String getDesignation() {
		return designation;
	}



	public void setDesignation(String designation) {
		this.designation = designation;
	}



	public String getRepmgr() {
		return repmgr;
	}



	public void setRepmgr(String repmgr) {
		this.repmgr = repmgr;
	}



	public int getDeptid() {
		return deptid;
	}



	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}



	public int getLocid() {
		return locid;
	}



	public void setLocid(int locid) {
		this.locid = locid;
	}



	@Override
	public String toString() {
		return "Employee [id=" + id + ", emp_name=" + emp_name + ", doj=" + doj + ", designation=" + designation
				+ ", repmgr=" + repmgr + ", deptid=" + deptid + ", locid=" + locid + "]";
	}
	
	
	

	
	
}