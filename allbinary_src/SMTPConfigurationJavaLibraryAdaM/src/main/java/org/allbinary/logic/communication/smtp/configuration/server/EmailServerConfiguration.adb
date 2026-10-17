--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package is

   procedure Initialize_Fields (This : in out EmailServerConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.accountName := Null_Unbounded_String;
      This.password := Null_Unbounded_String;
      This.smtpServer := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfiguration'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
        end if;
        This.setSmtpServer (StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize;

   function Create return EmailServerConfiguration_Access is
      This : constant EmailServerConfiguration_Access := new EmailServerConfiguration;
   begin
      EmailServerConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out EmailServerConfiguration'Class; hashMap : HashMap_Access) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("EmailServerConfiguration(HashMap)"));
        end if;
        This.setAccountName (Unbounded_String (hashMap.get (EmailServerConfigurationData_Package.ACCOUNT)));
        This.setPassword (Unbounded_String (hashMap.get (EmailServerConfigurationData_Package.PASSWORD)));
        This.setSmtpServer (Unbounded_String (hashMap.get (EmailServerConfigurationData_Package.SERVER)));
        This.log;
   end Initialize;

   function Create (hashMap : HashMap_Access) return EmailServerConfiguration_Access is
      This : constant EmailServerConfiguration_Access := new EmailServerConfiguration;
   begin
      EmailServerConfiguration_Package.Initialize (This.all, hashMap);
      return This;
   end Create;

   procedure Initialize (This : in out EmailServerConfiguration'Class; account : Unbounded_String; password : Unbounded_String; server : Unbounded_String) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("EmailServerConfiguration(HashMap)"));
        end if;
        This.setAccountName (account);
        This.setPassword (password);
        This.setSmtpServer (server);
        This.log;
   end Initialize;

   function Create (account : Unbounded_String; password : Unbounded_String; server : Unbounded_String) return EmailServerConfiguration_Access is
      This : constant EmailServerConfiguration_Access := new EmailServerConfiguration;
   begin
      EmailServerConfiguration_Package.Initialize (This.all, account, password, server);
      return This;
   end Create;

   procedure setSmtpServer (This : in out EmailServerConfiguration; value : Unbounded_String) is
   begin
        This.smtpServer := value;
   end setSmtpServer;

   function getSmtpServer (This : in out EmailServerConfiguration) return Unbounded_String is
   begin
        return This.smtpServer;
   end getSmtpServer;

   function getAccountName (This : in out EmailServerConfiguration) return Unbounded_String is
   begin
        return This.accountName;
   end getAccountName;

   procedure setAccountName (This : in out EmailServerConfiguration; accountName : Unbounded_String) is
   begin
        This.accountName := accountName;
   end setAccountName;

   function getPassword (This : in out EmailServerConfiguration) return Unbounded_String is
   begin
        return This.password;
   end getPassword;

   procedure setPassword (This : in out EmailServerConfiguration; password : Unbounded_String) is
   begin
        This.password := password;
   end setPassword;

   procedure log (This : in out EmailServerConfiguration) is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.toString, This'Unchecked_Access, To_Unbounded_String ("EmailServerConfiguration"));
        end if;
   end log;

   function toString (This : in out EmailServerConfiguration) return Unbounded_String is
   begin
        return To_Unbounded_String ("Email Server Configuration:" & ASCII.LF & "") & To_Unbounded_String ("Smtp Server: " & ASCII.LF & "") & Java_Image (This.getSmtpServer) & To_Unbounded_String ("" & ASCII.LF & "Account Name: ") & Java_Image (This.getAccountName) & To_Unbounded_String ("" & ASCII.LF & "Password: ") & Java_Image (This.getPassword);
   end toString;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;


