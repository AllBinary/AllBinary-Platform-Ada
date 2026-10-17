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
with admin.taghelpers.AdminConfigurationHelperFactory_Package; use admin.taghelpers.AdminConfigurationHelperFactory_Package;
with admin.taghelpers.AdminConfigurationRequestHelperFactory_Package; use admin.taghelpers.AdminConfigurationRequestHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.AdminConfigurationTag_Package is

   package AdminConfigurationHelperFactory_Package renames admin.taghelpers.AdminConfigurationHelperFactory_Package;
   package AdminConfigurationRequestHelperFactory_Package renames admin.taghelpers.AdminConfigurationRequestHelperFactory_Package;

   type AdminConfigurationTag is tagged;
   type AdminConfigurationTag_Access is access all AdminConfigurationTag'Class;
   type AdminConfigurationTag_Access_Array is array (Natural range <>) of AdminConfigurationTag_Access;
   type AdminConfigurationTag_Access_Array_Access is access all AdminConfigurationTag_Access_Array;

   type AdminConfigurationTag is new TableTag with null record;

   procedure Initialize (This : in out AdminConfigurationTag'Class);
   function Create return AdminConfigurationTag_Access;

end admin.tags.AdminConfigurationTag_Package;


