create database TestDB;

CREATE TABLE [dbo].[User](  
    [Id] [int] IDENTITY(1,1) NOT NULL,  
    [FirstName] [varchar](50) NULL,  
    [LastName] [varchar](50) NULL,  
    [Address] [varchar](250) NULL,  
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED   
(  
    [Id] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
) ON [PRIMARY] 

Create Procedure [dbo].[InsertData]  
(  
@FName varchar(50),  
@Lname Varchar(50),  
@Addr varchar(250)  
  
)  
as  
begin  
  
INSERT INTO [dbo].[User]  
           ([FirstName]  
           ,[LastName]  
           ,[Address])  
     VALUES  
           (  
           @FName,  
           @Lname,  
           @Addr 
          )  
End  