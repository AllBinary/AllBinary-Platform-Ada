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

limited with admin.taghelpers.UserHelper_Package;
package admin.taghelpers.UserHelper_Package_References is
   type UserHelper_Access is access all admin.taghelpers.UserHelper_Package.UserHelper'Class;
   type UserHelper_Access_Array is array (Natural range <>) of UserHelper_Access;
   type UserHelper_Access_Array_Access is access all UserHelper_Access_Array;
   type UserHelper_Access_Array_Access_Array is array (Natural range <>) of UserHelper_Access_Array_Access;
   type UserHelper_Access_Array_Access_Array_Access is access all UserHelper_Access_Array_Access_Array;
end admin.taghelpers.UserHelper_Package_References;

with admin.taghelpers.UserHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.Table_Package; use admin.taghelpers.Table_Package;

package admin.taghelpers.UserHelper_Package is

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


   subtype UserHelper_Access is admin.taghelpers.UserHelper_Package_References.UserHelper_Access;
   function "=" (Left, Right : UserHelper_Access) return Boolean renames admin.taghelpers.UserHelper_Package_References."=";
   subtype UserHelper_Access_Array is admin.taghelpers.UserHelper_Package_References.UserHelper_Access_Array;
   function "=" (Left, Right : UserHelper_Access_Array) return Boolean renames admin.taghelpers.UserHelper_Package_References."=";
   subtype UserHelper_Access_Array_Access is admin.taghelpers.UserHelper_Package_References.UserHelper_Access_Array_Access;
   function "=" (Left, Right : UserHelper_Access_Array_Access) return Boolean renames admin.taghelpers.UserHelper_Package_References."=";
   subtype UserHelper_Access_Array_Access_Array is admin.taghelpers.UserHelper_Package_References.UserHelper_Access_Array_Access_Array;
   function "=" (Left, Right : UserHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.UserHelper_Package_References."=";
   subtype UserHelper_Access_Array_Access_Array_Access is admin.taghelpers.UserHelper_Package_References.UserHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.UserHelper_Package_References."=";

   type UserHelper is new Table with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
      pageContext : PageContext_Access;
      request : HttpServletRequest_Access;
      path : Unbounded_String;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out UserHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return UserHelper_Access;
   function delete (This : in out UserHelper) return Unbounded_String;
   function insert (This : in out UserHelper) return Unbounded_String;
   function update (This : in out UserHelper) return Unbounded_String;
   function drop (This : in out UserHelper) return Unbounded_String;
   function create (This : in out UserHelper) return Unbounded_String;
   function restore (This : in out UserHelper) return Unbounded_String;
   function backup (This : in out UserHelper) return Unbounded_String;

end admin.taghelpers.UserHelper_Package;


