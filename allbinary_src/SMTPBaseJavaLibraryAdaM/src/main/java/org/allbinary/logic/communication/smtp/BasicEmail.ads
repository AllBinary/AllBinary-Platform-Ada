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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.mail.internet.MimeMessage_Package; use javax.mail.internet.MimeMessage_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.AbEmail_Package; use org.allbinary.logic.communication.smtp.AbEmail_Package;
with org.allbinary.logic.communication.smtp.Email_Package; use org.allbinary.logic.communication.smtp.Email_Package;

package org.allbinary.logic.communication.smtp.BasicEmail_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicEmail is tagged;
   type BasicEmail_Access is access all BasicEmail'Class;
   type BasicEmail_Access_Array is array (Natural range <>) of BasicEmail_Access;
   type BasicEmail_Access_Array_Access is access all BasicEmail_Access_Array;

   type BasicEmail is new EmailInterface with record
      email : AbEmail_Access;
   end record;

   procedure Initialize (This : in out BasicEmail'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; to : Unbounded_String);
   function Create (emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; to : Unbounded_String) return BasicEmail_Access;
   function getEmail (This : in out BasicEmail) return Email_Access;
   function getMimeMessage (This : in out BasicEmail) return MimeMessage_Access;
   function getDebugInfo (This : in out BasicEmail) return Unbounded_String;
   function log (This : in out BasicEmail) return Unbounded_String;
   function toHashMap (This : in out BasicEmail) return HashMap_Access;
   function toXmlNode (This : in out BasicEmail; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicEmail; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out BasicEmail) return Document_Access;

end org.allbinary.logic.communication.smtp.BasicEmail_Package;


