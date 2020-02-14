package com.springboot.bean;

public class FileInfo {

  private long file_Id;
  private String file_Title;
  private long user_Id;
  private String file_Time;
  private long file_Type;
  private String file_Intro;
  private String file_Url;
  private String file_Score;
  private String file_Statue;
  private String file_Downnum;

  public FileInfo() {
  }

  public FileInfo(long file_Id, String file_Title, long user_Id, String file_Time, long file_Type, String file_Intro, String file_Url, String file_Score, String file_Statue, String file_Downnum)
  {
    this.file_Id = file_Id;
    this.file_Title = file_Title;
    this.user_Id = user_Id;
    this.file_Time = file_Time;
    this.file_Type = file_Type;
    this.file_Intro = file_Intro;
    this.file_Url = file_Url;
    this.file_Score = file_Score;
    this.file_Statue = file_Statue;
    this.file_Downnum = file_Downnum;
  }

  public long getFile_Id()
  {
    return file_Id;
  }

  public void setFile_Id(long file_Id)
  {
    this.file_Id = file_Id;
  }

  public String getFile_Title()
  {
    return file_Title;
  }

  public void setFile_Title(String file_Title)
  {
    this.file_Title = file_Title;
  }

  public long getUser_Id()
  {
    return user_Id;
  }

  public void setUser_Id(long user_Id)
  {
    this.user_Id = user_Id;
  }

  public String getFile_Time()
  {
    return file_Time;
  }

  public void setFile_Time(String file_Time)
  {
    this.file_Time = file_Time;
  }

  public long getFile_Type()
  {
    return file_Type;
  }

  public void setFile_Type(long file_Type)
  {
    this.file_Type = file_Type;
  }

  public String getFile_Intro()
  {
    return file_Intro;
  }

  public void setFile_Intro(String file_Intro)
  {
    this.file_Intro = file_Intro;
  }

  public String getFile_Url()
  {
    return file_Url;
  }

  public void setFile_Url(String file_Url)
  {
    this.file_Url = file_Url;
  }

  public String getFile_Score()
  {
    return file_Score;
  }

  public void setFile_Score(String file_Score)
  {
    this.file_Score = file_Score;
  }

  public String getFile_Statue()
  {
    return file_Statue;
  }

  public void setFile_Statue(String file_Statue)
  {
    this.file_Statue = file_Statue;
  }

  public String getFile_Downnum()
  {
    return file_Downnum;
  }

  public void setFile_Downnum(String file_Downnum)
  {
    this.file_Downnum = file_Downnum;
  }

  @Override
  public String toString()
  {
    return "FileInfo{" + "file_Id=" + file_Id + ", file_Title='" + file_Title + '\'' + ", user_Id=" + user_Id + ", file_Time='" + file_Time + '\'' + ", file_Type=" + file_Type + ", file_Intro='" + file_Intro + '\'' + ", file_Url='" + file_Url + '\'' + ", file_Score='" + file_Score + '\'' + ", file_Statue='" + file_Statue + '\'' + ", file_Downnum='" + file_Downnum + '\'' + '}';
  }
}
