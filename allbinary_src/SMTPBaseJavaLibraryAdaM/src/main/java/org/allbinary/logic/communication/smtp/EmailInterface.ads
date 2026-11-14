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
limited with org.allbinary.logic.communication.smtp.EmailInterface_Package;
package org.allbinary.logic.communication.smtp.EmailInterface_Package_References is
   type EmailInterface_Access is access all org.allbinary.logic.communication.smtp.EmailInterface_Package.EmailInterface'Class;
   type EmailInterface_Access_Array is array (Natural range <>) of EmailInterface_Access;
   type EmailInterface_Access_Array_Access is access all EmailInterface_Access_Array;
   type EmailInterface_Access_Array_Access_Array is array (Natural range <>) of EmailInterface_Access_Array_Access;
   type EmailInterface_Access_Array_Access_Array_Access is access all EmailInterface_Access_Array_Access_Array;
   type EmailInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailInterface_Access_Array_Access is (if Value /= null and then Value.all in EmailInterface_Access_Array_Object'Class then EmailInterface_Access_Array_Object'Class (Value.all).Value else null);
   type EmailInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EmailInterface_Access_Array_Access_Array_Object'Class then EmailInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.EmailInterface_Package_References;

with org.allbinary.logic.communication.smtp.EmailInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.mail.internet.MimeMessage_Package; use javax.mail.internet.MimeMessage_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;

package org.allbinary.logic.communication.smtp.EmailInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type EmailInterface is interface and DomNodeInterface and DomDocumentMappingInterface;
   subtype EmailInterface_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access;
   function "=" (Left, Right : EmailInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References."=";
   subtype EmailInterface_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array;
   function "=" (Left, Right : EmailInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References."=";
   subtype EmailInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access;
   function "=" (Left, Right : EmailInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References."=";
   function Java_Box (Value : EmailInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References.Java_Box;
   function Java_Unbox_EmailInterface_Access_Array (Value : access Java_Object'Class) return EmailInterface_Access_Array_Access renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References.Java_Unbox_EmailInterface_Access_Array;
   subtype EmailInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmailInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References."=";
   subtype EmailInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.EmailInterface_Package_References.EmailInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References."=";
   function Java_Box (Value : EmailInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References.Java_Box;
   function Java_Unbox_EmailInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return EmailInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.EmailInterface_Package_References.Java_Unbox_EmailInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_EmailInterface (Value : EmailInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDebugInfo (This : in out EmailInterface) return Unbounded_String is abstract;
   function getMimeMessage (This : in out EmailInterface) return MimeMessage_Access is abstract;
   function log (This : in out EmailInterface) return Unbounded_String is abstract;

end org.allbinary.logic.communication.smtp.EmailInterface_Package;


