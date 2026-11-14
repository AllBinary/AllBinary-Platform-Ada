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
limited with org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
package org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References is
   type CategoryPropertiesFactory_Access is access all org.allbinary.business.category.properties.CategoryPropertiesFactory_Package.CategoryPropertiesFactory'Class;
   type CategoryPropertiesFactory_Access_Array is array (Natural range <>) of CategoryPropertiesFactory_Access;
   type CategoryPropertiesFactory_Access_Array_Access is access all CategoryPropertiesFactory_Access_Array;
   type CategoryPropertiesFactory_Access_Array_Access_Array is array (Natural range <>) of CategoryPropertiesFactory_Access_Array_Access;
   type CategoryPropertiesFactory_Access_Array_Access_Array_Access is access all CategoryPropertiesFactory_Access_Array_Access_Array;
   type CategoryPropertiesFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesFactory_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesFactory_Access_Array_Object'Class then CategoryPropertiesFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryPropertiesFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesFactory_Access_Array_Access_Array_Object'Class then CategoryPropertiesFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References;

with org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;

package org.allbinary.business.category.properties.CategoryPropertiesFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype CategoryPropertiesFactory_Access is org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.CategoryPropertiesFactory_Access;
   function "=" (Left, Right : CategoryPropertiesFactory_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References."=";
   subtype CategoryPropertiesFactory_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.CategoryPropertiesFactory_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactory_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References."=";
   subtype CategoryPropertiesFactory_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.CategoryPropertiesFactory_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactory_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References."=";
   function Java_Box (Value : CategoryPropertiesFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesFactory_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesFactory_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.Java_Unbox_CategoryPropertiesFactory_Access_Array;
   subtype CategoryPropertiesFactory_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.CategoryPropertiesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References."=";
   subtype CategoryPropertiesFactory_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.CategoryPropertiesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References."=";
   function Java_Box (Value : CategoryPropertiesFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesFactory_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesFactory_Package_References.Java_Unbox_CategoryPropertiesFactory_Access_Array_Access_Array;

   type CategoryPropertiesFactory is new Java_Object and CategoryPropertiesFactoryInterface with record
      logUtil : LogUtil_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesFactory'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CategoryPropertiesFactory_Access;
   procedure Initialize (This : in out CategoryPropertiesFactory'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CategoryPropertiesFactory_Access;
   procedure Initialize (This : in out CategoryPropertiesFactory'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryPropertiesFactory_Access;
   function getInstance (This : in out CategoryPropertiesFactory) return CategoryPropertiesInterface_Access;

end org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;


