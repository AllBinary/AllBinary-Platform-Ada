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
limited with admin.taghelpers.CategoryRequestHelperFactory_Package;
package admin.taghelpers.CategoryRequestHelperFactory_Package_References is
   type CategoryRequestHelperFactory_Access is access all admin.taghelpers.CategoryRequestHelperFactory_Package.CategoryRequestHelperFactory'Class;
   type CategoryRequestHelperFactory_Access_Array is array (Natural range <>) of CategoryRequestHelperFactory_Access;
   type CategoryRequestHelperFactory_Access_Array_Access is access all CategoryRequestHelperFactory_Access_Array;
   type CategoryRequestHelperFactory_Access_Array_Access_Array is array (Natural range <>) of CategoryRequestHelperFactory_Access_Array_Access;
   type CategoryRequestHelperFactory_Access_Array_Access_Array_Access is access all CategoryRequestHelperFactory_Access_Array_Access_Array;
   type CategoryRequestHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryRequestHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryRequestHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryRequestHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryRequestHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryRequestHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in CategoryRequestHelperFactory_Access_Array_Object'Class then CategoryRequestHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryRequestHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryRequestHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryRequestHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryRequestHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryRequestHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryRequestHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryRequestHelperFactory_Access_Array_Access_Array_Object'Class then CategoryRequestHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.CategoryRequestHelperFactory_Package_References;

with admin.taghelpers.CategoryRequestHelperFactory_Package_References;
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
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;

package admin.taghelpers.CategoryRequestHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CategoryRequestHelperFactory_Access is admin.taghelpers.CategoryRequestHelperFactory_Package_References.CategoryRequestHelperFactory_Access;
   function "=" (Left, Right : CategoryRequestHelperFactory_Access) return Boolean renames admin.taghelpers.CategoryRequestHelperFactory_Package_References."=";
   subtype CategoryRequestHelperFactory_Access_Array is admin.taghelpers.CategoryRequestHelperFactory_Package_References.CategoryRequestHelperFactory_Access_Array;
   function "=" (Left, Right : CategoryRequestHelperFactory_Access_Array) return Boolean renames admin.taghelpers.CategoryRequestHelperFactory_Package_References."=";
   subtype CategoryRequestHelperFactory_Access_Array_Access is admin.taghelpers.CategoryRequestHelperFactory_Package_References.CategoryRequestHelperFactory_Access_Array_Access;
   function "=" (Left, Right : CategoryRequestHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.CategoryRequestHelperFactory_Package_References."=";
   function Java_Box (Value : CategoryRequestHelperFactory_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.CategoryRequestHelperFactory_Package_References.Java_Box;
   function Java_Unbox_CategoryRequestHelperFactory_Access_Array (Value : access Java_Object'Class) return CategoryRequestHelperFactory_Access_Array_Access renames admin.taghelpers.CategoryRequestHelperFactory_Package_References.Java_Unbox_CategoryRequestHelperFactory_Access_Array;
   subtype CategoryRequestHelperFactory_Access_Array_Access_Array is admin.taghelpers.CategoryRequestHelperFactory_Package_References.CategoryRequestHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryRequestHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.CategoryRequestHelperFactory_Package_References."=";
   subtype CategoryRequestHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.CategoryRequestHelperFactory_Package_References.CategoryRequestHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryRequestHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.CategoryRequestHelperFactory_Package_References."=";
   function Java_Box (Value : CategoryRequestHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.CategoryRequestHelperFactory_Package_References.Java_Box;
   function Java_Unbox_CategoryRequestHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryRequestHelperFactory_Access_Array_Access_Array_Access renames admin.taghelpers.CategoryRequestHelperFactory_Package_References.Java_Unbox_CategoryRequestHelperFactory_Access_Array_Access_Array;

   type CategoryRequestHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CategoryRequestHelperFactory'Class);
   function Create return CategoryRequestHelperFactory_Access;
   function getInstance (This : in out CategoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out CategoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.CategoryRequestHelperFactory_Package;


