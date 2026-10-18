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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package is

   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;

   type GenericModuleConfigurationInterface is interface;
   type GenericModuleConfigurationInterface_Access is access all GenericModuleConfigurationInterface'Class;
   type GenericModuleConfigurationInterface_Access_Array is array (Natural range <>) of GenericModuleConfigurationInterface_Access;
   type GenericModuleConfigurationInterface_Access_Array_Access is access all GenericModuleConfigurationInterface_Access_Array;
   type GenericModuleConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of GenericModuleConfigurationInterface_Access_Array_Access;
   type GenericModuleConfigurationInterface_Access_Array_Access_Array_Access is access all GenericModuleConfigurationInterface_Access_Array_Access_Array;
   function getSelectedGenericProfile (This : in out GenericModuleConfigurationInterface) return GenericProfile_Access is abstract;
   procedure setSelectedGenericProfile (This : in out GenericModuleConfigurationInterface; selectedGenericProfile_Param : access GenericProfile_Package.GenericProfile'Class) is abstract;

end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package;


