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


with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package body org.allbinary.logic.communication.smtp.BasicEmail_Package is

   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   procedure Initialize_Fields (This : in out BasicEmail'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEmail'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; to : Unbounded_String) is
      emailInfo : constant EmailInfo_Access := EmailInfo_Access (emailInfo_Param);
      basicEmailInfo : BasicEmailInfo_Access;
   begin
      Initialize_Fields (This);
        basicEmailInfo := emailInfo.getBasicEmailInfo;
        This.email := AbEmail_Package.Create (basicEmailInfo.getEmailServerConfigurationInterface.getSmtpServer, basicEmailInfo.getEmailServerConfigurationInterface.getAccountName, to, basicEmailInfo.getSubject, basicEmailInfo.getTextBody, emailInfo.getHtmlAttachment, emailInfo.getContentBase);
   end Initialize;

   function Create (emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; to : Unbounded_String) return BasicEmail_Access is
      This : constant BasicEmail_Access := new BasicEmail;
   begin
      BasicEmail_Package.Initialize (This.all, emailInfo_Param, to);
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
   function toXmlNode (This : in out BasicEmail; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return This.email.toXmlNode (document);
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out BasicEmail) return Document_Access is
   begin
        return This.email.toXmlDoc;
   end toXmlDoc;

   procedure toXmlNode (This : in out BasicEmail; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicEmail'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.BasicEmail_Package;


