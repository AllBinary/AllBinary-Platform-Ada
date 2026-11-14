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

with AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.AbEmail_Package;
package org.allbinary.logic.communication.smtp.AbEmail_Package_References is
   type AbEmail_Access is access all org.allbinary.logic.communication.smtp.AbEmail_Package.AbEmail'Class;
   type AbEmail_Access_Array is array (Natural range <>) of AbEmail_Access;
   type AbEmail_Access_Array_Access is access all AbEmail_Access_Array;
   type AbEmail_Access_Array_Access_Array is array (Natural range <>) of AbEmail_Access_Array_Access;
   type AbEmail_Access_Array_Access_Array_Access is access all AbEmail_Access_Array_Access_Array;
   type AbEmail_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbEmail_Access_Array_Access;
   end record;
   function Java_Box (Value : AbEmail_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbEmail_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbEmail_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbEmail_Access_Array_Access is (if Value /= null and then Value.all in AbEmail_Access_Array_Object'Class then AbEmail_Access_Array_Object'Class (Value.all).Value else null);
   type AbEmail_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbEmail_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbEmail_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbEmail_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbEmail_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbEmail_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbEmail_Access_Array_Access_Array_Object'Class then AbEmail_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.AbEmail_Package_References;

with org.allbinary.logic.communication.smtp.AbEmail_Package_References;
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
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
limited with org.allbinary.logic.communication.smtp.Email_Package;
with org.allbinary.logic.communication.smtp.Email_Package_References;

package org.allbinary.logic.communication.smtp.AbEmail_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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


   subtype AbEmail_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access;
   function "=" (Left, Right : AbEmail_Access) return Boolean renames org.allbinary.logic.communication.smtp.AbEmail_Package_References."=";
   subtype AbEmail_Access_Array is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array;
   function "=" (Left, Right : AbEmail_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.AbEmail_Package_References."=";
   subtype AbEmail_Access_Array_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access;
   function "=" (Left, Right : AbEmail_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.AbEmail_Package_References."=";
   function Java_Box (Value : AbEmail_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.AbEmail_Package_References.Java_Box;
   function Java_Unbox_AbEmail_Access_Array (Value : access Java_Object'Class) return AbEmail_Access_Array_Access renames org.allbinary.logic.communication.smtp.AbEmail_Package_References.Java_Unbox_AbEmail_Access_Array;
   subtype AbEmail_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access_Array;
   function "=" (Left, Right : AbEmail_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.AbEmail_Package_References."=";
   subtype AbEmail_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.AbEmail_Package_References.AbEmail_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbEmail_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.AbEmail_Package_References."=";
   function Java_Box (Value : AbEmail_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.AbEmail_Package_References.Java_Box;
   function Java_Unbox_AbEmail_Access_Array_Access_Array (Value : access Java_Object'Class) return AbEmail_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.AbEmail_Package_References.Java_Unbox_AbEmail_Access_Array_Access_Array;

   type AbEmail is new Java_Object and EmailInterface with record
      email : Email_Access;
   end record;

   procedure Initialize (This : in out AbEmail'Class; server : Unbounded_String; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String);
   function Create (server : Unbounded_String; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return AbEmail_Access;
   function getMimeMessage (This : in out AbEmail) return MimeMessage_Access;
   function getDebugInfo (This : in out AbEmail) return Unbounded_String;
   function log (This : in out AbEmail) return Unbounded_String;
   function toHashMap (This : in out AbEmail) return HashMap_Access;
   function toXmlNode (This : in out AbEmail; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out AbEmail; document_Param : access Document_Package.Document'Class);
   function getEmail (This : in out AbEmail) return Email_Access;
   function toXmlDoc (This : in out AbEmail) return Document_Access;

end org.allbinary.logic.communication.smtp.AbEmail_Package;


