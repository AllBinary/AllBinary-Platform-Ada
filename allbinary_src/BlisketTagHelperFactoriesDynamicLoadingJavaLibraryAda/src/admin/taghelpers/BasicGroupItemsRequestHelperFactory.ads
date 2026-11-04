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

limited with admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package;
package admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References is
   type BasicGroupItemsRequestHelperFactory_Access is access all admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package.BasicGroupItemsRequestHelperFactory'Class;
   type BasicGroupItemsRequestHelperFactory_Access_Array is array (Natural range <>) of BasicGroupItemsRequestHelperFactory_Access;
   type BasicGroupItemsRequestHelperFactory_Access_Array_Access is access all BasicGroupItemsRequestHelperFactory_Access_Array;
   type BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemsRequestHelperFactory_Access_Array_Access;
   type BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array_Access is access all BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References;

with admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References;
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

package admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupItemsRequestHelperFactory_Access is admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References.BasicGroupItemsRequestHelperFactory_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelperFactory_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References."=";
   subtype BasicGroupItemsRequestHelperFactory_Access_Array is admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References.BasicGroupItemsRequestHelperFactory_Access_Array;
   function "=" (Left, Right : BasicGroupItemsRequestHelperFactory_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References."=";
   subtype BasicGroupItemsRequestHelperFactory_Access_Array_Access is admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References.BasicGroupItemsRequestHelperFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References."=";
   subtype BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array is admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References.BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References."=";
   subtype BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References.BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package_References."=";

   type BasicGroupItemsRequestHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out BasicGroupItemsRequestHelperFactory'Class);
   function Create return BasicGroupItemsRequestHelperFactory_Access;
   function getInstance (This : in out BasicGroupItemsRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out BasicGroupItemsRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package;


