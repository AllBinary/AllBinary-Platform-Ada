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

limited with admin.taghelpers.StoreFrontsHelperFactory_Package;
package admin.taghelpers.StoreFrontsHelperFactory_Package_References is
   type StoreFrontsHelperFactory_Access is access all admin.taghelpers.StoreFrontsHelperFactory_Package.StoreFrontsHelperFactory'Class;
   type StoreFrontsHelperFactory_Access_Array is array (Natural range <>) of StoreFrontsHelperFactory_Access;
   type StoreFrontsHelperFactory_Access_Array_Access is access all StoreFrontsHelperFactory_Access_Array;
   type StoreFrontsHelperFactory_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsHelperFactory_Access_Array_Access;
   type StoreFrontsHelperFactory_Access_Array_Access_Array_Access is access all StoreFrontsHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.StoreFrontsHelperFactory_Package_References;

with admin.taghelpers.StoreFrontsHelperFactory_Package_References;
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
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;

package admin.taghelpers.StoreFrontsHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontsHelperFactory_Access is admin.taghelpers.StoreFrontsHelperFactory_Package_References.StoreFrontsHelperFactory_Access;
   function "=" (Left, Right : StoreFrontsHelperFactory_Access) return Boolean renames admin.taghelpers.StoreFrontsHelperFactory_Package_References."=";
   subtype StoreFrontsHelperFactory_Access_Array is admin.taghelpers.StoreFrontsHelperFactory_Package_References.StoreFrontsHelperFactory_Access_Array;
   function "=" (Left, Right : StoreFrontsHelperFactory_Access_Array) return Boolean renames admin.taghelpers.StoreFrontsHelperFactory_Package_References."=";
   subtype StoreFrontsHelperFactory_Access_Array_Access is admin.taghelpers.StoreFrontsHelperFactory_Package_References.StoreFrontsHelperFactory_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontsHelperFactory_Package_References."=";
   subtype StoreFrontsHelperFactory_Access_Array_Access_Array is admin.taghelpers.StoreFrontsHelperFactory_Package_References.StoreFrontsHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.StoreFrontsHelperFactory_Package_References."=";
   subtype StoreFrontsHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.StoreFrontsHelperFactory_Package_References.StoreFrontsHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontsHelperFactory_Package_References."=";

   type StoreFrontsHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out StoreFrontsHelperFactory'Class);
   function Create return StoreFrontsHelperFactory_Access;
   function getInstance (This : in out StoreFrontsHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out StoreFrontsHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.StoreFrontsHelperFactory_Package;


