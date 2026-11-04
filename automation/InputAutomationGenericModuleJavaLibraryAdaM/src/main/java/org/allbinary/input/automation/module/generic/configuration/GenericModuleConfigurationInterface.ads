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

limited with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References is
   type GenericModuleConfigurationInterface_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package.GenericModuleConfigurationInterface'Class;
   type GenericModuleConfigurationInterface_Access_Array is array (Natural range <>) of GenericModuleConfigurationInterface_Access;
   type GenericModuleConfigurationInterface_Access_Array_Access is access all GenericModuleConfigurationInterface_Access_Array;
   type GenericModuleConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of GenericModuleConfigurationInterface_Access_Array_Access;
   type GenericModuleConfigurationInterface_Access_Array_Access_Array_Access is access all GenericModuleConfigurationInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package is

   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package Reference_Types is
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   use type GenericProfile_Access;
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   use type GenericProfile_Access_Array;
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   use type GenericProfile_Access_Array_Access;
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   use type GenericProfile_Access_Array_Access_Array;
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   use type GenericProfile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GenericModuleConfigurationInterface is interface;
   subtype GenericModuleConfigurationInterface_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References.GenericModuleConfigurationInterface_Access;
   function "=" (Left, Right : GenericModuleConfigurationInterface_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References."=";
   subtype GenericModuleConfigurationInterface_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References.GenericModuleConfigurationInterface_Access_Array;
   function "=" (Left, Right : GenericModuleConfigurationInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References."=";
   subtype GenericModuleConfigurationInterface_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References.GenericModuleConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : GenericModuleConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References."=";
   subtype GenericModuleConfigurationInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References.GenericModuleConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GenericModuleConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References."=";
   subtype GenericModuleConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References.GenericModuleConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericModuleConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package_References."=";
   function Java_Object_Access_From_GenericModuleConfigurationInterface (Value : GenericModuleConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getSelectedGenericProfile (This : in out GenericModuleConfigurationInterface) return GenericProfile_Access is abstract;
   procedure setSelectedGenericProfile (This : in out GenericModuleConfigurationInterface; selectedGenericProfile_Param : access GenericProfile_Package.GenericProfile'Class) is abstract;

end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package;


