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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.PrintStream_Package; use java.io.PrintStream_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Properties_Package; use java.util.Properties_Package;
--  with javax.mail.Address_Package; use javax.mail.Address_Package;
--  with javax.mail.Authenticator_Package; use javax.mail.Authenticator_Package;
--  with javax.mail.Message_Package; use javax.mail.Message_Package;
--  with javax.mail.MessagingException_Package; use javax.mail.MessagingException_Package;
--  with javax.mail.Session_Package; use javax.mail.Session_Package;
--  with javax.mail.internet.InternetAddress_Package; use javax.mail.internet.InternetAddress_Package;
--  with javax.mail.internet.InternetHeaders_Package; use javax.mail.internet.InternetHeaders_Package;
--  with javax.mail.internet.MimeBodyPart_Package; use javax.mail.internet.MimeBodyPart_Package;
--  with javax.mail.internet.MimeMessage_Package; use javax.mail.internet.MimeMessage_Package;
--  with javax.mail.internet.MimeMultipart_Package; use javax.mail.internet.MimeMultipart_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.EmailData_Package; use org.allbinary.logic.communication.smtp.EmailData_Package;

package org.allbinary.logic.communication.smtp.Email_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type Email is tagged;
   type Email_Access is access all Email'Class;
   type Email_Access_Array is array (Natural range <>) of Email_Access;
   type Email_Access_Array_Access is access all Email_Access_Array;

   type Email is new EmailInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      msg : MimeMessage_Access;
      properties : Properties_Access;
      bs : ByteArrayOutputStream_Access;
      isDebug : Boolean;
   end record;
   DEBUG : Unbounded_String;
   SMTP_HOST : Unbounded_String;
   SMTP_PORT : Unbounded_String;
   SMTP_USER : Unbounded_String;
   SMTP_RETURN_ADDRESS : Unbounded_String;
   SMTP_LOCAL_HOST : Unbounded_String;

   procedure Initialize (This : in out Email'Class; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String);
   function Create (from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return Email_Access;
   procedure Initialize (This : in out Email'Class; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String; isDebug : Boolean);
   function Create (from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String; isDebug : Boolean) return Email_Access;
   procedure init (This : in out Email; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String);
   procedure init (This : in out Email; server : Unbounded_String; authenticator_Param : access Authenticator'Class; addresses_from : InternetAddress_Access_Array_Access; addresses_to : InternetAddress_Access_Array_Access; addresses_cc : InternetAddress_Access_Array_Access; addresses_bcc : InternetAddress_Access_Array_Access; subject : Unbounded_String; mimeBodyParts : MimeBodyPart_Access_Array_Access);
   function getMimeMessage (This : in out Email) return MimeMessage_Access;
   function getDebugInfo (This : in out Email) return Unbounded_String;
   function log (This : in out Email) return Unbounded_String;
   function toHashMap (This : in out Email) return HashMap_Access;
   function toXmlNode (This : in out Email; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out Email; document_Param : access Document'Class);
   function toXmlDoc (This : in out Email) return Document_Access;

end org.allbinary.logic.communication.smtp.Email_Package;


