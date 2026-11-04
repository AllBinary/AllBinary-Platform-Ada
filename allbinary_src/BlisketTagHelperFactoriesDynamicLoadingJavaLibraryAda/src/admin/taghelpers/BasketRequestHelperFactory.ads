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

limited with admin.taghelpers.BasketRequestHelperFactory_Package;
package admin.taghelpers.BasketRequestHelperFactory_Package_References is
   type BasketRequestHelperFactory_Access is access all admin.taghelpers.BasketRequestHelperFactory_Package.BasketRequestHelperFactory'Class;
   type BasketRequestHelperFactory_Access_Array is array (Natural range <>) of BasketRequestHelperFactory_Access;
   type BasketRequestHelperFactory_Access_Array_Access is access all BasketRequestHelperFactory_Access_Array;
   type BasketRequestHelperFactory_Access_Array_Access_Array is array (Natural range <>) of BasketRequestHelperFactory_Access_Array_Access;
   type BasketRequestHelperFactory_Access_Array_Access_Array_Access is access all BasketRequestHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.BasketRequestHelperFactory_Package_References;

with admin.taghelpers.BasketRequestHelperFactory_Package_References;
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

package admin.taghelpers.BasketRequestHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasketRequestHelperFactory_Access is admin.taghelpers.BasketRequestHelperFactory_Package_References.BasketRequestHelperFactory_Access;
   function "=" (Left, Right : BasketRequestHelperFactory_Access) return Boolean renames admin.taghelpers.BasketRequestHelperFactory_Package_References."=";
   subtype BasketRequestHelperFactory_Access_Array is admin.taghelpers.BasketRequestHelperFactory_Package_References.BasketRequestHelperFactory_Access_Array;
   function "=" (Left, Right : BasketRequestHelperFactory_Access_Array) return Boolean renames admin.taghelpers.BasketRequestHelperFactory_Package_References."=";
   subtype BasketRequestHelperFactory_Access_Array_Access is admin.taghelpers.BasketRequestHelperFactory_Package_References.BasketRequestHelperFactory_Access_Array_Access;
   function "=" (Left, Right : BasketRequestHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.BasketRequestHelperFactory_Package_References."=";
   subtype BasketRequestHelperFactory_Access_Array_Access_Array is admin.taghelpers.BasketRequestHelperFactory_Package_References.BasketRequestHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasketRequestHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasketRequestHelperFactory_Package_References."=";
   subtype BasketRequestHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.BasketRequestHelperFactory_Package_References.BasketRequestHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasketRequestHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasketRequestHelperFactory_Package_References."=";

   type BasketRequestHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out BasketRequestHelperFactory'Class);
   function Create return BasketRequestHelperFactory_Access;
   function getInstance (This : in out BasketRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out BasketRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.BasketRequestHelperFactory_Package;


