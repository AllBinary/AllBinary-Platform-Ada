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

limited with admin.taghelpers.LogHelper_Package;
package admin.taghelpers.LogHelper_Package_References is
   type LogHelper_Access is access all admin.taghelpers.LogHelper_Package.LogHelper'Class;
   type LogHelper_Access_Array is array (Natural range <>) of LogHelper_Access;
   type LogHelper_Access_Array_Access is access all LogHelper_Access_Array;
   type LogHelper_Access_Array_Access_Array is array (Natural range <>) of LogHelper_Access_Array_Access;
   type LogHelper_Access_Array_Access_Array_Access is access all LogHelper_Access_Array_Access_Array;
end admin.taghelpers.LogHelper_Package_References;

with admin.taghelpers.LogHelper_Package_References;
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
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.LogHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   use type Portion_Access;
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   use type Portion_Access_Array;
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   use type Portion_Access_Array_Access;
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   use type Portion_Access_Array_Access_Array;
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   use type Portion_Access_Array_Access_Array_Access;
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


   subtype LogHelper_Access is admin.taghelpers.LogHelper_Package_References.LogHelper_Access;
   function "=" (Left, Right : LogHelper_Access) return Boolean renames admin.taghelpers.LogHelper_Package_References."=";
   subtype LogHelper_Access_Array is admin.taghelpers.LogHelper_Package_References.LogHelper_Access_Array;
   function "=" (Left, Right : LogHelper_Access_Array) return Boolean renames admin.taghelpers.LogHelper_Package_References."=";
   subtype LogHelper_Access_Array_Access is admin.taghelpers.LogHelper_Package_References.LogHelper_Access_Array_Access;
   function "=" (Left, Right : LogHelper_Access_Array_Access) return Boolean renames admin.taghelpers.LogHelper_Package_References."=";
   subtype LogHelper_Access_Array_Access_Array is admin.taghelpers.LogHelper_Package_References.LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : LogHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.LogHelper_Package_References."=";
   subtype LogHelper_Access_Array_Access_Array_Access is admin.taghelpers.LogHelper_Package_References.LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.LogHelper_Package_References."=";

   type LogHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out LogHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return LogHelper_Access;
   function drop (This : in out LogHelper) return Unbounded_String;
   function create (This : in out LogHelper) return Unbounded_String;
   function restore (This : in out LogHelper) return Unbounded_String;
   function backup (This : in out LogHelper) return Unbounded_String;

end admin.taghelpers.LogHelper_Package;


