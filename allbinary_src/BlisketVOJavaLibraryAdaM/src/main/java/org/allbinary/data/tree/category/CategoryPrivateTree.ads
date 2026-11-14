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
limited with org.allbinary.data.tree.category.CategoryPrivateTree_Package;
package org.allbinary.data.tree.category.CategoryPrivateTree_Package_References is
   type CategoryPrivateTree_Access is access all org.allbinary.data.tree.category.CategoryPrivateTree_Package.CategoryPrivateTree'Class;
   type CategoryPrivateTree_Access_Array is array (Natural range <>) of CategoryPrivateTree_Access;
   type CategoryPrivateTree_Access_Array_Access is access all CategoryPrivateTree_Access_Array;
   type CategoryPrivateTree_Access_Array_Access_Array is array (Natural range <>) of CategoryPrivateTree_Access_Array_Access;
   type CategoryPrivateTree_Access_Array_Access_Array_Access is access all CategoryPrivateTree_Access_Array_Access_Array;
   type CategoryPrivateTree_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPrivateTree_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPrivateTree_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPrivateTree_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPrivateTree_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPrivateTree_Access_Array_Access is (if Value /= null and then Value.all in CategoryPrivateTree_Access_Array_Object'Class then CategoryPrivateTree_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryPrivateTree_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPrivateTree_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPrivateTree_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPrivateTree_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPrivateTree_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPrivateTree_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryPrivateTree_Access_Array_Access_Array_Object'Class then CategoryPrivateTree_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.category.CategoryPrivateTree_Package_References;

with org.allbinary.data.tree.category.CategoryPrivateTree_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.data.tree.category.CategoryPrivateTree_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   use type CategoryFactoryInterface_Access;
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   use type CategoryFactoryInterface_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access;
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   use type CategoryFactoryInterface_Access_Array_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access_Array_Access;
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   use type CategoryInterface_Access;
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   use type CategoryInterface_Access_Array;
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access;
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   use type CategoryInterface_Access_Array_Access_Array;
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CategoryPrivateTree_Access is org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.CategoryPrivateTree_Access;
   function "=" (Left, Right : CategoryPrivateTree_Access) return Boolean renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References."=";
   subtype CategoryPrivateTree_Access_Array is org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.CategoryPrivateTree_Access_Array;
   function "=" (Left, Right : CategoryPrivateTree_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References."=";
   subtype CategoryPrivateTree_Access_Array_Access is org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.CategoryPrivateTree_Access_Array_Access;
   function "=" (Left, Right : CategoryPrivateTree_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References."=";
   function Java_Box (Value : CategoryPrivateTree_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.Java_Box;
   function Java_Unbox_CategoryPrivateTree_Access_Array (Value : access Java_Object'Class) return CategoryPrivateTree_Access_Array_Access renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.Java_Unbox_CategoryPrivateTree_Access_Array;
   subtype CategoryPrivateTree_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.CategoryPrivateTree_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPrivateTree_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References."=";
   subtype CategoryPrivateTree_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.CategoryPrivateTree_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPrivateTree_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References."=";
   function Java_Box (Value : CategoryPrivateTree_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.Java_Box;
   function Java_Unbox_CategoryPrivateTree_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryPrivateTree_Access_Array_Access_Array_Access renames org.allbinary.data.tree.category.CategoryPrivateTree_Package_References.Java_Unbox_CategoryPrivateTree_Access_Array_Access_Array;

   type CategoryPrivateTree is new Java_Object with record
      logUtil : LogUtil_Access;
      categoryFactoryInterface : CategoryFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPrivateTree'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);
   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryPrivateTree_Access;
   procedure save (This : in out CategoryPrivateTree; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   procedure delete (This : in out CategoryPrivateTree; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);

end org.allbinary.data.tree.category.CategoryPrivateTree_Package;


