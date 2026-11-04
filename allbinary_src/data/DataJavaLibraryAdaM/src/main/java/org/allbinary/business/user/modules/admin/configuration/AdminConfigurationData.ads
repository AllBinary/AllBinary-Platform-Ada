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

limited with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package;
package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References is
   type AdminConfigurationData_Access is access all org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package.AdminConfigurationData'Class;
   type AdminConfigurationData_Access_Array is array (Natural range <>) of AdminConfigurationData_Access;
   type AdminConfigurationData_Access_Array_Access is access all AdminConfigurationData_Access_Array;
   type AdminConfigurationData_Access_Array_Access_Array is array (Natural range <>) of AdminConfigurationData_Access_Array_Access;
   type AdminConfigurationData_Access_Array_Access_Array_Access is access all AdminConfigurationData_Access_Array_Access_Array;
end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References;

with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AdminConfigurationData_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References.AdminConfigurationData_Access;
   function "=" (Left, Right : AdminConfigurationData_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References."=";
   subtype AdminConfigurationData_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References.AdminConfigurationData_Access_Array;
   function "=" (Left, Right : AdminConfigurationData_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References."=";
   subtype AdminConfigurationData_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References.AdminConfigurationData_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationData_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References."=";
   subtype AdminConfigurationData_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References.AdminConfigurationData_Access_Array_Access_Array;
   function "=" (Left, Right : AdminConfigurationData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References."=";
   subtype AdminConfigurationData_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References.AdminConfigurationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package_References."=";

   type AdminConfigurationData is new Java_Object with null record;
   CONTEXTNAME : Unbounded_String;

   procedure Initialize (This : in out AdminConfigurationData'Class);
   function Create return AdminConfigurationData_Access;

end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package;


