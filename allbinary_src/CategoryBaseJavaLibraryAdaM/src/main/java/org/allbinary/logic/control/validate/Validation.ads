-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.logic.control.validate.Validation_Package;
package org.allbinary.logic.control.validate.Validation_Package_References is
   type Validation_Access is access all org.allbinary.logic.control.validate.Validation_Package.Validation'Class;
   type Validation_Access_Array is array (Natural range <>) of Validation_Access;
   type Validation_Access_Array_Access is access all Validation_Access_Array;
   type Validation_Access_Array_Access_Array is array (Natural range <>) of Validation_Access_Array_Access;
   type Validation_Access_Array_Access_Array_Access is access all Validation_Access_Array_Access_Array;
   type Validation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Validation_Access_Array_Access;
   end record;
   function Java_Box (Value : Validation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Validation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Validation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Validation_Access_Array_Access is (if Value /= null and then Value.all in Validation_Access_Array_Object'Class then Validation_Access_Array_Object'Class (Value.all).Value else null);
   type Validation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Validation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Validation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Validation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Validation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Validation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Validation_Access_Array_Access_Array_Object'Class then Validation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.validate.Validation_Package_References;

with org.allbinary.logic.control.validate.Validation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;

package org.allbinary.logic.control.validate.Validation_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype Validation_Access is org.allbinary.logic.control.validate.Validation_Package_References.Validation_Access;
   function "=" (Left, Right : Validation_Access) return Boolean renames org.allbinary.logic.control.validate.Validation_Package_References."=";
   subtype Validation_Access_Array is org.allbinary.logic.control.validate.Validation_Package_References.Validation_Access_Array;
   function "=" (Left, Right : Validation_Access_Array) return Boolean renames org.allbinary.logic.control.validate.Validation_Package_References."=";
   subtype Validation_Access_Array_Access is org.allbinary.logic.control.validate.Validation_Package_References.Validation_Access_Array_Access;
   function "=" (Left, Right : Validation_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.Validation_Package_References."=";
   function Java_Box (Value : Validation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.validate.Validation_Package_References.Java_Box;
   function Java_Unbox_Validation_Access_Array (Value : access Java_Object'Class) return Validation_Access_Array_Access renames org.allbinary.logic.control.validate.Validation_Package_References.Java_Unbox_Validation_Access_Array;
   subtype Validation_Access_Array_Access_Array is org.allbinary.logic.control.validate.Validation_Package_References.Validation_Access_Array_Access_Array;
   function "=" (Left, Right : Validation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.Validation_Package_References."=";
   subtype Validation_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.Validation_Package_References.Validation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Validation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.Validation_Package_References."=";
   function Java_Box (Value : Validation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.validate.Validation_Package_References.Java_Box;
   function Java_Unbox_Validation_Access_Array_Access_Array (Value : access Java_Object'Class) return Validation_Access_Array_Access_Array_Access renames org.allbinary.logic.control.validate.Validation_Package_References.Java_Unbox_Validation_Access_Array_Access_Array;

   type Validation is new Java_Object and ValidationInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out Validation'Class);
   function Create return Validation_Access;
   function isValid (This : in out Validation) return Boolean;
   function toValidationInfoNode (This : in out Validation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out Validation; document_Param : access Document_Package.Document'Class);
   function toValidationInfoDoc (This : in out Validation) return Document_Access;
   function validationInfo (This : in out Validation) return Unbounded_String;

end org.allbinary.logic.control.validate.Validation_Package;


