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
limited with org.allbinary.business.category.properties.CategoryPropertiesView_Package;
package org.allbinary.business.category.properties.CategoryPropertiesView_Package_References is
   type CategoryPropertiesView_Access is access all org.allbinary.business.category.properties.CategoryPropertiesView_Package.CategoryPropertiesView'Class;
   type CategoryPropertiesView_Access_Array is array (Natural range <>) of CategoryPropertiesView_Access;
   type CategoryPropertiesView_Access_Array_Access is access all CategoryPropertiesView_Access_Array;
   type CategoryPropertiesView_Access_Array_Access_Array is array (Natural range <>) of CategoryPropertiesView_Access_Array_Access;
   type CategoryPropertiesView_Access_Array_Access_Array_Access is access all CategoryPropertiesView_Access_Array_Access_Array;
   type CategoryPropertiesView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesView_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesView_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesView_Access_Array_Object'Class then CategoryPropertiesView_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryPropertiesView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesView_Access_Array_Access_Array_Object'Class then CategoryPropertiesView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.CategoryPropertiesView_Package_References;

with org.allbinary.business.category.properties.CategoryPropertiesView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;

package org.allbinary.business.category.properties.CategoryPropertiesView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
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


   subtype CategoryPropertiesView_Access is org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.CategoryPropertiesView_Access;
   function "=" (Left, Right : CategoryPropertiesView_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References."=";
   subtype CategoryPropertiesView_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.CategoryPropertiesView_Access_Array;
   function "=" (Left, Right : CategoryPropertiesView_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References."=";
   subtype CategoryPropertiesView_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.CategoryPropertiesView_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesView_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References."=";
   function Java_Box (Value : CategoryPropertiesView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesView_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesView_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.Java_Unbox_CategoryPropertiesView_Access_Array;
   subtype CategoryPropertiesView_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.CategoryPropertiesView_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References."=";
   subtype CategoryPropertiesView_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.CategoryPropertiesView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References."=";
   function Java_Box (Value : CategoryPropertiesView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesView_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesView_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesView_Package_References.Java_Unbox_CategoryPropertiesView_Access_Array_Access_Array;

   type CategoryPropertiesView is new Java_Object and DomNodeInterface with record
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesView'Class; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function Create (categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return CategoryPropertiesView_Access;
   function toXmlNode (This : in out CategoryPropertiesView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CategoryPropertiesView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.category.properties.CategoryPropertiesView_Package;


