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

limited with org.allbinary.logic.communication.smtp.BasicEmail_Package;
package org.allbinary.logic.communication.smtp.BasicEmail_Package_References is
   type BasicEmail_Access is access all org.allbinary.logic.communication.smtp.BasicEmail_Package.BasicEmail'Class;
   type BasicEmail_Access_Array is array (Natural range <>) of BasicEmail_Access;
   type BasicEmail_Access_Array_Access is access all BasicEmail_Access_Array;
   type BasicEmail_Access_Array_Access_Array is array (Natural range <>) of BasicEmail_Access_Array_Access;
   type BasicEmail_Access_Array_Access_Array_Access is access all BasicEmail_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.BasicEmail_Package_References;

with org.allbinary.logic.communication.smtp.BasicEmail_Package_References;
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
limited with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
limited with org.allbinary.logic.communication.smtp.AbEmail_Package;
with org.allbinary.logic.communication.smtp.AbEmail_Package_References;
limited with org.allbinary.logic.communication.smtp.Email_Package;
with org.allbinary.logic.communication.smtp.Email_Package_References;

package org.allbinary.logic.communication.smtp.BasicEmail_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype EmailInfo_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access;
   use type EmailInfo_Access;
   subtype EmailInfo_Access_Array is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array;
   use type EmailInfo_Access_Array;
   subtype EmailInfo_Access_Array_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access;
   use type EmailInfo_Access_Array_Access;
   subtype EmailInfo_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access_Array;
   use type EmailInfo_Access_Array_Access_Array;
   subtype EmailInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access_Array_Access;
   use type EmailInfo_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype AbEmail_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access;
   use type AbEmail_Access;
   subtype AbEmail_Access_Array is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array;
   use type AbEmail_Access_Array;
   subtype AbEmail_Access_Array_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access;
   use type AbEmail_Access_Array_Access;
   subtype AbEmail_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access_Array;
   use type AbEmail_Access_Array_Access_Array;
   subtype AbEmail_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access_Array_Access;
   use type AbEmail_Access_Array_Access_Array_Access;
   subtype Email_Access is org.allbinary.logic.communication.smtp.Email_Package_References.Email_Access;
   use type Email_Access;
   subtype Email_Access_Array is org.allbinary.logic.communication.smtp.Email_Package_References.Email_Access_Array;
   use type Email_Access_Array;
   subtype Email_Access_Array_Access is org.allbinary.logic.communication.smtp.Email_Package_References.Email_Access_Array_Access;
   use type Email_Access_Array_Access;
   subtype Email_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.Email_Package_References.Email_Access_Array_Access_Array;
   use type Email_Access_Array_Access_Array;
   subtype Email_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.Email_Package_References.Email_Access_Array_Access_Array_Access;
   use type Email_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicEmail_Access is org.allbinary.logic.communication.smtp.BasicEmail_Package_References.BasicEmail_Access;
   function "=" (Left, Right : BasicEmail_Access) return Boolean renames org.allbinary.logic.communication.smtp.BasicEmail_Package_References."=";
   subtype BasicEmail_Access_Array is org.allbinary.logic.communication.smtp.BasicEmail_Package_References.BasicEmail_Access_Array;
   function "=" (Left, Right : BasicEmail_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.BasicEmail_Package_References."=";
   subtype BasicEmail_Access_Array_Access is org.allbinary.logic.communication.smtp.BasicEmail_Package_References.BasicEmail_Access_Array_Access;
   function "=" (Left, Right : BasicEmail_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.BasicEmail_Package_References."=";
   subtype BasicEmail_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.BasicEmail_Package_References.BasicEmail_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEmail_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.BasicEmail_Package_References."=";
   subtype BasicEmail_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.BasicEmail_Package_References.BasicEmail_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEmail_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.BasicEmail_Package_References."=";

   type BasicEmail is new Java_Object and EmailInterface with record
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


