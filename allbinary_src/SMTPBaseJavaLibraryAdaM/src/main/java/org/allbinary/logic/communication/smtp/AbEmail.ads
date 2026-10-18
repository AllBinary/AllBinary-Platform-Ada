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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.Email_Package; use org.allbinary.logic.communication.smtp.Email_Package;

package org.allbinary.logic.communication.smtp.AbEmail_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type AbEmail is tagged;
   type AbEmail_Access is access all AbEmail'Class;
   type AbEmail_Access_Array is array (Natural range <>) of AbEmail_Access;
   type AbEmail_Access_Array_Access is access all AbEmail_Access_Array;
   type AbEmail_Access_Array_Access_Array is array (Natural range <>) of AbEmail_Access_Array_Access;
   type AbEmail_Access_Array_Access_Array_Access is access all AbEmail_Access_Array_Access_Array;

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


