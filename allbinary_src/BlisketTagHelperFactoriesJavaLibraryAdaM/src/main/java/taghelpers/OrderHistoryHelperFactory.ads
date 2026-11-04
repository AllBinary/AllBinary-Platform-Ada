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

limited with taghelpers.OrderHistoryHelperFactory_Package;
package taghelpers.OrderHistoryHelperFactory_Package_References is
   type OrderHistoryHelperFactory_Access is access all taghelpers.OrderHistoryHelperFactory_Package.OrderHistoryHelperFactory'Class;
   type OrderHistoryHelperFactory_Access_Array is array (Natural range <>) of OrderHistoryHelperFactory_Access;
   type OrderHistoryHelperFactory_Access_Array_Access is access all OrderHistoryHelperFactory_Access_Array;
   type OrderHistoryHelperFactory_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryHelperFactory_Access_Array_Access;
   type OrderHistoryHelperFactory_Access_Array_Access_Array_Access is access all OrderHistoryHelperFactory_Access_Array_Access_Array;
end taghelpers.OrderHistoryHelperFactory_Package_References;

with taghelpers.OrderHistoryHelperFactory_Package_References;
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

package taghelpers.OrderHistoryHelperFactory_Package is

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


   subtype OrderHistoryHelperFactory_Access is taghelpers.OrderHistoryHelperFactory_Package_References.OrderHistoryHelperFactory_Access;
   function "=" (Left, Right : OrderHistoryHelperFactory_Access) return Boolean renames taghelpers.OrderHistoryHelperFactory_Package_References."=";
   subtype OrderHistoryHelperFactory_Access_Array is taghelpers.OrderHistoryHelperFactory_Package_References.OrderHistoryHelperFactory_Access_Array;
   function "=" (Left, Right : OrderHistoryHelperFactory_Access_Array) return Boolean renames taghelpers.OrderHistoryHelperFactory_Package_References."=";
   subtype OrderHistoryHelperFactory_Access_Array_Access is taghelpers.OrderHistoryHelperFactory_Package_References.OrderHistoryHelperFactory_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryHelperFactory_Access_Array_Access) return Boolean renames taghelpers.OrderHistoryHelperFactory_Package_References."=";
   subtype OrderHistoryHelperFactory_Access_Array_Access_Array is taghelpers.OrderHistoryHelperFactory_Package_References.OrderHistoryHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryHelperFactory_Access_Array_Access_Array) return Boolean renames taghelpers.OrderHistoryHelperFactory_Package_References."=";
   subtype OrderHistoryHelperFactory_Access_Array_Access_Array_Access is taghelpers.OrderHistoryHelperFactory_Package_References.OrderHistoryHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryHelperFactory_Access_Array_Access_Array_Access) return Boolean renames taghelpers.OrderHistoryHelperFactory_Package_References."=";

   type OrderHistoryHelperFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out OrderHistoryHelperFactory'Class);
   function Create return OrderHistoryHelperFactory_Access;
   function getInstance (This : in out OrderHistoryHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out OrderHistoryHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end taghelpers.OrderHistoryHelperFactory_Package;


