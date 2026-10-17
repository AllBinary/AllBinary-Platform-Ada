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


package body org.allbinary.logic.communication.smtp.BasicEmail_Package is

   procedure Initialize_Fields (This : in out BasicEmail'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEmail'Class; emailInfo : EmailInfo_Access; to : Unbounded_String) is
      basicEmailInfo : BasicEmailInfo_Access;
   begin
      Initialize_Fields (This);
        basicEmailInfo := emailInfo.getBasicEmailInfo;
        This.email := AbEmail_Package.Create (basicEmailInfo.getEmailServerConfigurationInterface.getSmtpServer, basicEmailInfo.getEmailServerConfigurationInterface.getAccountName, to, basicEmailInfo.getSubject, basicEmailInfo.getTextBody, emailInfo.getHtmlAttachment, emailInfo.getContentBase);
   end Initialize;

   function Create (emailInfo : EmailInfo_Access; to : Unbounded_String) return BasicEmail_Access is
      This : constant BasicEmail_Access := new BasicEmail;
   begin
      Initialize (This.all, emailInfo, to);
      return This;
   end Create;

   function getEmail (This : in out BasicEmail) return Email_Access is
   begin
        return Email_Access (This.email.getEmail);
   end getEmail;

   function getMimeMessage (This : in out BasicEmail) return MimeMessage_Access is
   begin
        return This.email.getMimeMessage;
   end getMimeMessage;

   function getDebugInfo (This : in out BasicEmail) return Unbounded_String is
   begin
        return This.email.getDebugInfo;
   end getDebugInfo;

   --  throws Exception
   function log (This : in out BasicEmail) return Unbounded_String is
   begin
        return This.email.log;
   end log;

   --  throws Exception
   function toHashMap (This : in out BasicEmail) return HashMap_Access is
   begin
        return This.email.toHashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out BasicEmail; document : Document_Access) return Node_Access is
   begin
        return This.email.toXmlNode (document);
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out BasicEmail) return Document_Access is
   begin
        return This.email.toXmlDoc;
   end toXmlDoc;

   procedure getEmail (This : in out BasicEmail) is
      Java_Result : constant Email_Access := BasicEmail'Class (This).getEmail;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEmail;

   procedure getMimeMessage (This : in out BasicEmail) is
      Java_Result : constant MimeMessage_Access := BasicEmail'Class (This).getMimeMessage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMimeMessage;

   procedure getDebugInfo (This : in out BasicEmail) is
      Java_Result : constant Unbounded_String := BasicEmail'Class (This).getDebugInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDebugInfo;

   procedure log (This : in out BasicEmail) is
      Java_Result : constant Unbounded_String := BasicEmail'Class (This).log;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

   procedure toHashMap (This : in out BasicEmail) is
      Java_Result : constant HashMap_Access := BasicEmail'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out BasicEmail; document : Document_Access) is
      Java_Result : constant Node_Access := BasicEmail'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toXmlDoc (This : in out BasicEmail) is
      Java_Result : constant Document_Access := BasicEmail'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

end org.allbinary.logic.communication.smtp.BasicEmail_Package;


