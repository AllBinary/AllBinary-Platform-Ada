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
limited with org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package;
package org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References is
   type CategoryPropertiesValidationView_Access is access all org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package.CategoryPropertiesValidationView'Class;
   type CategoryPropertiesValidationView_Access_Array is array (Natural range <>) of CategoryPropertiesValidationView_Access;
   type CategoryPropertiesValidationView_Access_Array_Access is access all CategoryPropertiesValidationView_Access_Array;
   type CategoryPropertiesValidationView_Access_Array_Access_Array is array (Natural range <>) of CategoryPropertiesValidationView_Access_Array_Access;
   type CategoryPropertiesValidationView_Access_Array_Access_Array_Access is access all CategoryPropertiesValidationView_Access_Array_Access_Array;
   type CategoryPropertiesValidationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesValidationView_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesValidationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesValidationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesValidationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesValidationView_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesValidationView_Access_Array_Object'Class then CategoryPropertiesValidationView_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryPropertiesValidationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesValidationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesValidationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesValidationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesValidationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesValidationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesValidationView_Access_Array_Access_Array_Object'Class then CategoryPropertiesValidationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References;

with org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.properties.CategoryPropertiesView_Package; use org.allbinary.business.category.properties.CategoryPropertiesView_Package;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;

package org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
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
   subtype CategoryPropertiesInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access;
   use type CategoryPropertiesInterface_Access;
   subtype CategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array;
   use type CategoryPropertiesInterface_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array;
   use type CategoryPropertiesInterface_Access_Array_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryPropertiesValidationView_Access is org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.CategoryPropertiesValidationView_Access;
   function "=" (Left, Right : CategoryPropertiesValidationView_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References."=";
   subtype CategoryPropertiesValidationView_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.CategoryPropertiesValidationView_Access_Array;
   function "=" (Left, Right : CategoryPropertiesValidationView_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References."=";
   subtype CategoryPropertiesValidationView_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.CategoryPropertiesValidationView_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesValidationView_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References."=";
   function Java_Box (Value : CategoryPropertiesValidationView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesValidationView_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesValidationView_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.Java_Unbox_CategoryPropertiesValidationView_Access_Array;
   subtype CategoryPropertiesValidationView_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.CategoryPropertiesValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesValidationView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References."=";
   subtype CategoryPropertiesValidationView_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.CategoryPropertiesValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesValidationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References."=";
   function Java_Box (Value : CategoryPropertiesValidationView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesValidationView_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesValidationView_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package_References.Java_Unbox_CategoryPropertiesValidationView_Access_Array_Access_Array;

   type CategoryPropertiesValidationView is new CategoryPropertiesView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesValidationView'Class; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function Create (categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return CategoryPropertiesValidationView_Access;
   function isValid (This : in out CategoryPropertiesValidationView) return Boolean;
   function validationInfo (This : in out CategoryPropertiesValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out CategoryPropertiesValidationView) return Document_Access;
   function toValidationInfoNode (This : in out CategoryPropertiesValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out CategoryPropertiesValidationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package;


