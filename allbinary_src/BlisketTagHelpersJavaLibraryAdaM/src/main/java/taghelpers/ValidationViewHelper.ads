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
limited with taghelpers.ValidationViewHelper_Package;
package taghelpers.ValidationViewHelper_Package_References is
   type ValidationViewHelper_Access is access all taghelpers.ValidationViewHelper_Package.ValidationViewHelper'Class;
   type ValidationViewHelper_Access_Array is array (Natural range <>) of ValidationViewHelper_Access;
   type ValidationViewHelper_Access_Array_Access is access all ValidationViewHelper_Access_Array;
   type ValidationViewHelper_Access_Array_Access_Array is array (Natural range <>) of ValidationViewHelper_Access_Array_Access;
   type ValidationViewHelper_Access_Array_Access_Array_Access is access all ValidationViewHelper_Access_Array_Access_Array;
   type ValidationViewHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ValidationViewHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : ValidationViewHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ValidationViewHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ValidationViewHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ValidationViewHelper_Access_Array_Access is (if Value /= null and then Value.all in ValidationViewHelper_Access_Array_Object'Class then ValidationViewHelper_Access_Array_Object'Class (Value.all).Value else null);
   type ValidationViewHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ValidationViewHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ValidationViewHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ValidationViewHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ValidationViewHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ValidationViewHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ValidationViewHelper_Access_Array_Access_Array_Object'Class then ValidationViewHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.ValidationViewHelper_Package_References;

with taghelpers.ValidationViewHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with taghelpers.ViewHelper_Package; use taghelpers.ViewHelper_Package;

package taghelpers.ValidationViewHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ValidationViewHelper_Access is taghelpers.ValidationViewHelper_Package_References.ValidationViewHelper_Access;
   function "=" (Left, Right : ValidationViewHelper_Access) return Boolean renames taghelpers.ValidationViewHelper_Package_References."=";
   subtype ValidationViewHelper_Access_Array is taghelpers.ValidationViewHelper_Package_References.ValidationViewHelper_Access_Array;
   function "=" (Left, Right : ValidationViewHelper_Access_Array) return Boolean renames taghelpers.ValidationViewHelper_Package_References."=";
   subtype ValidationViewHelper_Access_Array_Access is taghelpers.ValidationViewHelper_Package_References.ValidationViewHelper_Access_Array_Access;
   function "=" (Left, Right : ValidationViewHelper_Access_Array_Access) return Boolean renames taghelpers.ValidationViewHelper_Package_References."=";
   function Java_Box (Value : ValidationViewHelper_Access_Array_Access) return Java_Object_Access renames taghelpers.ValidationViewHelper_Package_References.Java_Box;
   function Java_Unbox_ValidationViewHelper_Access_Array (Value : access Java_Object'Class) return ValidationViewHelper_Access_Array_Access renames taghelpers.ValidationViewHelper_Package_References.Java_Unbox_ValidationViewHelper_Access_Array;
   subtype ValidationViewHelper_Access_Array_Access_Array is taghelpers.ValidationViewHelper_Package_References.ValidationViewHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ValidationViewHelper_Access_Array_Access_Array) return Boolean renames taghelpers.ValidationViewHelper_Package_References."=";
   subtype ValidationViewHelper_Access_Array_Access_Array_Access is taghelpers.ValidationViewHelper_Package_References.ValidationViewHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidationViewHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.ValidationViewHelper_Package_References."=";
   function Java_Box (Value : ValidationViewHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.ValidationViewHelper_Package_References.Java_Box;
   function Java_Unbox_ValidationViewHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return ValidationViewHelper_Access_Array_Access_Array_Access renames taghelpers.ValidationViewHelper_Package_References.Java_Unbox_ValidationViewHelper_Access_Array_Access_Array;

   type ValidationViewHelper is new ViewHelper and ValidationComponentInterface with record
      ValidationViewHelper_Field_logUtil : LogUtil_Access;
      viewInterface : ValidationComponentInterface_Access;
   end record;

   procedure Initialize (This : in out ValidationViewHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return ValidationViewHelper_Access;
   function isValid (This : in out ValidationViewHelper) return Boolean;
   function validationInfo (This : in out ValidationViewHelper) return Unbounded_String;
   function toValidationInfoDoc (This : in out ValidationViewHelper) return Document_Access;
   function toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class);

end taghelpers.ValidationViewHelper_Package;


