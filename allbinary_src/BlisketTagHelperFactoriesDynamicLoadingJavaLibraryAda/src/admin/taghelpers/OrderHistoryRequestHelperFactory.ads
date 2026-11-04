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

limited with admin.taghelpers.OrderHistoryRequestHelperFactory_Package;
package admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References is
   type OrderHistoryRequestHelperFactory_Access is access all admin.taghelpers.OrderHistoryRequestHelperFactory_Package.OrderHistoryRequestHelperFactory'Class;
   type OrderHistoryRequestHelperFactory_Access_Array is array (Natural range <>) of OrderHistoryRequestHelperFactory_Access;
   type OrderHistoryRequestHelperFactory_Access_Array_Access is access all OrderHistoryRequestHelperFactory_Access_Array;
   type OrderHistoryRequestHelperFactory_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryRequestHelperFactory_Access_Array_Access;
   type OrderHistoryRequestHelperFactory_Access_Array_Access_Array_Access is access all OrderHistoryRequestHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References;

with admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References;
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

package admin.taghelpers.OrderHistoryRequestHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OrderHistoryRequestHelperFactory_Access is admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References.OrderHistoryRequestHelperFactory_Access;
   function "=" (Left, Right : OrderHistoryRequestHelperFactory_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References."=";
   subtype OrderHistoryRequestHelperFactory_Access_Array is admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References.OrderHistoryRequestHelperFactory_Access_Array;
   function "=" (Left, Right : OrderHistoryRequestHelperFactory_Access_Array) return Boolean renames admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References."=";
   subtype OrderHistoryRequestHelperFactory_Access_Array_Access is admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References.OrderHistoryRequestHelperFactory_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryRequestHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References."=";
   subtype OrderHistoryRequestHelperFactory_Access_Array_Access_Array is admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References.OrderHistoryRequestHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryRequestHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References."=";
   subtype OrderHistoryRequestHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References.OrderHistoryRequestHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryRequestHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelperFactory_Package_References."=";

   type OrderHistoryRequestHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out OrderHistoryRequestHelperFactory'Class);
   function Create return OrderHistoryRequestHelperFactory_Access;
   function getInstance (This : in out OrderHistoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out OrderHistoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.OrderHistoryRequestHelperFactory_Package;


