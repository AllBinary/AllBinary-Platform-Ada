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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.AdminConfigurationHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AdminConfigurationHelper is tagged;
   type AdminConfigurationHelper_Access is access all AdminConfigurationHelper'Class;
   type AdminConfigurationHelper_Access_Array is array (Natural range <>) of AdminConfigurationHelper_Access;
   type AdminConfigurationHelper_Access_Array_Access is access all AdminConfigurationHelper_Access_Array;

   type AdminConfigurationHelper is new BasicTable with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AdminConfigurationHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return AdminConfigurationHelper_Access;
   function create (This : in out AdminConfigurationHelper) return Unbounded_String;
   function drop (This : in out AdminConfigurationHelper) return Unbounded_String;
   function restore (This : in out AdminConfigurationHelper) return Unbounded_String;
   function backup (This : in out AdminConfigurationHelper) return Unbounded_String;

end admin.taghelpers.AdminConfigurationHelper_Package;


