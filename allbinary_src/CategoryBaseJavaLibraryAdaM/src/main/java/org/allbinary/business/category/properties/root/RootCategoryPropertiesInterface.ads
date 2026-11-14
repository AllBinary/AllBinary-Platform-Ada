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
limited with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
package org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References is
   type RootCategoryPropertiesInterface_Access is access all org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package.RootCategoryPropertiesInterface'Class;
   type RootCategoryPropertiesInterface_Access_Array is array (Natural range <>) of RootCategoryPropertiesInterface_Access;
   type RootCategoryPropertiesInterface_Access_Array_Access is access all RootCategoryPropertiesInterface_Access_Array;
   type RootCategoryPropertiesInterface_Access_Array_Access_Array is array (Natural range <>) of RootCategoryPropertiesInterface_Access_Array_Access;
   type RootCategoryPropertiesInterface_Access_Array_Access_Array_Access is access all RootCategoryPropertiesInterface_Access_Array_Access_Array;
   type RootCategoryPropertiesInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootCategoryPropertiesInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RootCategoryPropertiesInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootCategoryPropertiesInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootCategoryPropertiesInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootCategoryPropertiesInterface_Access_Array_Access is (if Value /= null and then Value.all in RootCategoryPropertiesInterface_Access_Array_Object'Class then RootCategoryPropertiesInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RootCategoryPropertiesInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootCategoryPropertiesInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RootCategoryPropertiesInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootCategoryPropertiesInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootCategoryPropertiesInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootCategoryPropertiesInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RootCategoryPropertiesInterface_Access_Array_Access_Array_Object'Class then RootCategoryPropertiesInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References;

with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type RootCategoryPropertiesInterface is interface;
   subtype RootCategoryPropertiesInterface_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.RootCategoryPropertiesInterface_Access;
   function "=" (Left, Right : RootCategoryPropertiesInterface_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References."=";
   subtype RootCategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.RootCategoryPropertiesInterface_Access_Array;
   function "=" (Left, Right : RootCategoryPropertiesInterface_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References."=";
   subtype RootCategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.RootCategoryPropertiesInterface_Access_Array_Access;
   function "=" (Left, Right : RootCategoryPropertiesInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References."=";
   function Java_Box (Value : RootCategoryPropertiesInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.Java_Box;
   function Java_Unbox_RootCategoryPropertiesInterface_Access_Array (Value : access Java_Object'Class) return RootCategoryPropertiesInterface_Access_Array_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.Java_Unbox_RootCategoryPropertiesInterface_Access_Array;
   subtype RootCategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.RootCategoryPropertiesInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RootCategoryPropertiesInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References."=";
   subtype RootCategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.RootCategoryPropertiesInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RootCategoryPropertiesInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References."=";
   function Java_Box (Value : RootCategoryPropertiesInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.Java_Box;
   function Java_Unbox_RootCategoryPropertiesInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RootCategoryPropertiesInterface_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package_References.Java_Unbox_RootCategoryPropertiesInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RootCategoryPropertiesInterface (Value : RootCategoryPropertiesInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setRootFilePath (This : in out RootCategoryPropertiesInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;
   function getRootFilePath (This : in out RootCategoryPropertiesInterface) return AbPath_Access is abstract;

end org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;


