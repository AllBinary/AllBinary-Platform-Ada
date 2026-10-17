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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.AdminConfigurationRequestHelper_Package is

   package AdminConfiguration_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
   package AdminConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AdminConfigurationRequestHelper is tagged;
   type AdminConfigurationRequestHelper_Access is access all AdminConfigurationRequestHelper'Class;
   type AdminConfigurationRequestHelper_Access_Array is array (Natural range <>) of AdminConfigurationRequestHelper_Access;
   type AdminConfigurationRequestHelper_Access_Array_Access is access all AdminConfigurationRequestHelper_Access_Array;

   type AdminConfigurationRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
   end record;

   procedure Initialize (This : in out AdminConfigurationRequestHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return AdminConfigurationRequestHelper_Access;
   function insert (This : in out AdminConfigurationRequestHelper) return Unbounded_String;
   function delete (This : in out AdminConfigurationRequestHelper) return Unbounded_String;
   function update (This : in out AdminConfigurationRequestHelper) return Unbounded_String;

end admin.taghelpers.AdminConfigurationRequestHelper_Package;


