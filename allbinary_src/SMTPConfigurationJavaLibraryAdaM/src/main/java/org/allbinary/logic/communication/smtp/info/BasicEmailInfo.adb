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


package body org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package is

   procedure Initialize_Fields (This : in out BasicEmailInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.emailServerConfigurationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, BasicEmailInfo_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        end if;
        This.subject := subject;
        This.textBody := textBody;
   end Initialize;

   function Create (subject : Unbounded_String; textBody : Unbounded_String) return BasicEmailInfo_Access is
      This : constant BasicEmailInfo_Access := new BasicEmailInfo;
   begin
      BasicEmailInfo_Package.Initialize (This.all, subject, textBody);
      return This;
   end Create;

   function getSubject (This : in out BasicEmailInfo) return Unbounded_String is
   begin
        return This.subject;
   end getSubject;

   function getTextBody (This : in out BasicEmailInfo) return Unbounded_String is
   begin
        return This.textBody;
   end getTextBody;

   function getEmailServerConfigurationInterface (This : in out BasicEmailInfo) return EmailServerConfigurationInterface_Access is
   begin
        return This.emailServerConfigurationInterface;
   end getEmailServerConfigurationInterface;

   procedure setEmailServerConfigurationInterface (This : in out BasicEmailInfo; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) is
      emailServerConfigurationInterface : constant EmailServerConfigurationInterface_Access := EmailServerConfigurationInterface_Access (emailServerConfigurationInterface_Param);
   begin
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end setEmailServerConfigurationInterface;

   function toString (This : in out BasicEmailInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicEmailInfo'Class (This).getEmailServerConfigurationInterface.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Subject: " & ASCII.LF & ""));
        stringBuffer.append (BasicEmailInfo'Class (This).getSubject);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Text Body: " & ASCII.LF & ""));
        stringBuffer.append (BasicEmailInfo'Class (This).getTextBody);
        return stringBuffer.toString;
   end toString;

   --  throws Exception
   procedure init (This : in out BasicEmailInfo) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

end org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;


