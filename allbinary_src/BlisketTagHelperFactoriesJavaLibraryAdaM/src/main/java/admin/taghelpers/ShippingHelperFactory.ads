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

limited with admin.taghelpers.ShippingHelperFactory_Package;
package admin.taghelpers.ShippingHelperFactory_Package_References is
   type ShippingHelperFactory_Access is access all admin.taghelpers.ShippingHelperFactory_Package.ShippingHelperFactory'Class;
   type ShippingHelperFactory_Access_Array is array (Natural range <>) of ShippingHelperFactory_Access;
   type ShippingHelperFactory_Access_Array_Access is access all ShippingHelperFactory_Access_Array;
   type ShippingHelperFactory_Access_Array_Access_Array is array (Natural range <>) of ShippingHelperFactory_Access_Array_Access;
   type ShippingHelperFactory_Access_Array_Access_Array_Access is access all ShippingHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.ShippingHelperFactory_Package_References;

with admin.taghelpers.ShippingHelperFactory_Package_References;
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

package admin.taghelpers.ShippingHelperFactory_Package is

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


   subtype ShippingHelperFactory_Access is admin.taghelpers.ShippingHelperFactory_Package_References.ShippingHelperFactory_Access;
   function "=" (Left, Right : ShippingHelperFactory_Access) return Boolean renames admin.taghelpers.ShippingHelperFactory_Package_References."=";
   subtype ShippingHelperFactory_Access_Array is admin.taghelpers.ShippingHelperFactory_Package_References.ShippingHelperFactory_Access_Array;
   function "=" (Left, Right : ShippingHelperFactory_Access_Array) return Boolean renames admin.taghelpers.ShippingHelperFactory_Package_References."=";
   subtype ShippingHelperFactory_Access_Array_Access is admin.taghelpers.ShippingHelperFactory_Package_References.ShippingHelperFactory_Access_Array_Access;
   function "=" (Left, Right : ShippingHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.ShippingHelperFactory_Package_References."=";
   subtype ShippingHelperFactory_Access_Array_Access_Array is admin.taghelpers.ShippingHelperFactory_Package_References.ShippingHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.ShippingHelperFactory_Package_References."=";
   subtype ShippingHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.ShippingHelperFactory_Package_References.ShippingHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.ShippingHelperFactory_Package_References."=";

   type ShippingHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ShippingHelperFactory'Class);
   function Create return ShippingHelperFactory_Access;
   function getInstance (This : in out ShippingHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out ShippingHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.ShippingHelperFactory_Package;


