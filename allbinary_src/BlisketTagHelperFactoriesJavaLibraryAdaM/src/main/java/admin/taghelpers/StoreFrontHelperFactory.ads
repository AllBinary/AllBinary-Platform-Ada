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

limited with admin.taghelpers.StoreFrontHelperFactory_Package;
package admin.taghelpers.StoreFrontHelperFactory_Package_References is
   type StoreFrontHelperFactory_Access is access all admin.taghelpers.StoreFrontHelperFactory_Package.StoreFrontHelperFactory'Class;
   type StoreFrontHelperFactory_Access_Array is array (Natural range <>) of StoreFrontHelperFactory_Access;
   type StoreFrontHelperFactory_Access_Array_Access is access all StoreFrontHelperFactory_Access_Array;
   type StoreFrontHelperFactory_Access_Array_Access_Array is array (Natural range <>) of StoreFrontHelperFactory_Access_Array_Access;
   type StoreFrontHelperFactory_Access_Array_Access_Array_Access is access all StoreFrontHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.StoreFrontHelperFactory_Package_References;

with admin.taghelpers.StoreFrontHelperFactory_Package_References;
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

package admin.taghelpers.StoreFrontHelperFactory_Package is

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


   subtype StoreFrontHelperFactory_Access is admin.taghelpers.StoreFrontHelperFactory_Package_References.StoreFrontHelperFactory_Access;
   function "=" (Left, Right : StoreFrontHelperFactory_Access) return Boolean renames admin.taghelpers.StoreFrontHelperFactory_Package_References."=";
   subtype StoreFrontHelperFactory_Access_Array is admin.taghelpers.StoreFrontHelperFactory_Package_References.StoreFrontHelperFactory_Access_Array;
   function "=" (Left, Right : StoreFrontHelperFactory_Access_Array) return Boolean renames admin.taghelpers.StoreFrontHelperFactory_Package_References."=";
   subtype StoreFrontHelperFactory_Access_Array_Access is admin.taghelpers.StoreFrontHelperFactory_Package_References.StoreFrontHelperFactory_Access_Array_Access;
   function "=" (Left, Right : StoreFrontHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontHelperFactory_Package_References."=";
   subtype StoreFrontHelperFactory_Access_Array_Access_Array is admin.taghelpers.StoreFrontHelperFactory_Package_References.StoreFrontHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.StoreFrontHelperFactory_Package_References."=";
   subtype StoreFrontHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.StoreFrontHelperFactory_Package_References.StoreFrontHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontHelperFactory_Package_References."=";

   type StoreFrontHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreFrontHelperFactory'Class);
   function Create return StoreFrontHelperFactory_Access;
   function getInstance (This : in out StoreFrontHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out StoreFrontHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.StoreFrontHelperFactory_Package;


