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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References is
   type GenericProfilesData_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package.GenericProfilesData'Class;
   type GenericProfilesData_Access_Array is array (Natural range <>) of GenericProfilesData_Access;
   type GenericProfilesData_Access_Array_Access is access all GenericProfilesData_Access_Array;
   type GenericProfilesData_Access_Array_Access_Array is array (Natural range <>) of GenericProfilesData_Access_Array_Access;
   type GenericProfilesData_Access_Array_Access_Array_Access is access all GenericProfilesData_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfilesData_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References.GenericProfilesData_Access;
   function "=" (Left, Right : GenericProfilesData_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References."=";
   subtype GenericProfilesData_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References.GenericProfilesData_Access_Array;
   function "=" (Left, Right : GenericProfilesData_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References."=";
   subtype GenericProfilesData_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References.GenericProfilesData_Access_Array_Access;
   function "=" (Left, Right : GenericProfilesData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References."=";
   subtype GenericProfilesData_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References.GenericProfilesData_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfilesData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References."=";
   subtype GenericProfilesData_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References.GenericProfilesData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfilesData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package_References."=";

   type GenericProfilesData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GenericProfilesData'Class);
   function Create return GenericProfilesData_Access;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfilesData_Package;


