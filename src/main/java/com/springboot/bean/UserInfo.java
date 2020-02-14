package com.springboot.bean;

public class UserInfo {

  private long user_Id;
  private String user_Account;
  private String user_Password;
  private String user_Name;
  private String user_Sex;
  private String user_Edu;
  private String user_Job;
  private String user_Phone;
  private String user_Email;
  private String user_Score;
  private String user_Statue;
  private String user_Upnum;
  private String user_Downnum;
  private String user_Regtime;

  public UserInfo()
  {
  }

  public UserInfo(long user_Id, String user_Account, String user_Password, String user_Name, String user_Sex, String user_Edu, String user_Job, String user_Phone, String user_Email, String user_Score, String user_Statue, String user_Upnum, String user_Downnum, String user_Regtime)
  {
    this.user_Id = user_Id;
    this.user_Account = user_Account;
    this.user_Password = user_Password;
    this.user_Name = user_Name;
    this.user_Sex = user_Sex;
    this.user_Edu = user_Edu;
    this.user_Job = user_Job;
    this.user_Phone = user_Phone;
    this.user_Email = user_Email;
    this.user_Score = user_Score;
    this.user_Statue = user_Statue;
    this.user_Upnum = user_Upnum;
    this.user_Downnum = user_Downnum;
    this.user_Regtime = user_Regtime;
  }

  public long getUser_Id()
  {
    return user_Id;
  }

  public void setUser_Id(long user_Id)
  {
    this.user_Id = user_Id;
  }

  public String getUser_Account()
  {
    return user_Account;
  }

  public void setUser_Account(String user_Account)
  {
    this.user_Account = user_Account;
  }

  public String getUser_Password()
  {
    return user_Password;
  }

  public void setUser_Password(String user_Password)
  {
    this.user_Password = user_Password;
  }

  public String getUser_Name()
  {
    return user_Name;
  }

  public void setUser_Name(String user_Name)
  {
    this.user_Name = user_Name;
  }

  public String getUser_Sex()
  {
    return user_Sex;
  }

  public void setUser_Sex(String user_Sex)
  {
    this.user_Sex = user_Sex;
  }

  public String getUser_Edu()
  {
    return user_Edu;
  }

  public void setUser_Edu(String user_Edu)
  {
    this.user_Edu = user_Edu;
  }

  public String getUser_Job()
  {
    return user_Job;
  }

  public void setUser_Job(String user_Job)
  {
    this.user_Job = user_Job;
  }

  public String getUser_Phone()
  {
    return user_Phone;
  }

  public void setUser_Phone(String user_Phone)
  {
    this.user_Phone = user_Phone;
  }

  public String getUser_Email()
  {
    return user_Email;
  }

  public void setUser_Email(String user_Email)
  {
    this.user_Email = user_Email;
  }

  public String getUser_Score()
  {
    return user_Score;
  }

  public void setUser_Score(String user_Score)
  {
    this.user_Score = user_Score;
  }

  public String getUser_Statue()
  {
    return user_Statue;
  }

  public void setUser_Statue(String user_Statue)
  {
    this.user_Statue = user_Statue;
  }

  public String getUser_Upnum()
  {
    return user_Upnum;
  }

  public void setUser_Upnum(String user_Upnum)
  {
    this.user_Upnum = user_Upnum;
  }

  public String getUser_Downnum()
  {
    return user_Downnum;
  }

  public void setUser_Downnum(String user_Downnum)
  {
    this.user_Downnum = user_Downnum;
  }

  public String getUser_Regtime()
  {
    return user_Regtime;
  }

  public void setUser_Regtime(String user_Regtime)
  {
    this.user_Regtime = user_Regtime;
  }

  @Override
  public String toString()
  {
    return "UserInfo{" + "user_Id=" + user_Id + ", user_Account='" + user_Account + '\'' + ", user_Password='" + user_Password + '\'' + ", user_Name='" + user_Name + '\'' + ", user_Sex='" + user_Sex + '\'' + ", user_Edu='" + user_Edu + '\'' + ", user_Job='" + user_Job + '\'' + ", user_Phone='" + user_Phone + '\'' + ", user_Email='" + user_Email + '\'' + ", user_Score='" + user_Score + '\'' + ", user_Statue='" + user_Statue + '\'' + ", user_Upnum='" + user_Upnum + '\'' + ", user_Downnum='" + user_Downnum + '\'' + ", user_Regtime='" + user_Regtime + '\'' + '}';
  }
}
