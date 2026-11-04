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

limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References is
   type UserEmailConfigurationData_Access is access all org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package.UserEmailConfigurationData'Class;
   type UserEmailConfigurationData_Access_Array is array (Natural range <>) of UserEmailConfigurationData_Access;
   type UserEmailConfigurationData_Access_Array_Access is access all UserEmailConfigurationData_Access_Array;
   type UserEmailConfigurationData_Access_Array_Access_Array is array (Natural range <>) of UserEmailConfigurationData_Access_Array_Access;
   type UserEmailConfigurationData_Access_Array_Access_Array_Access is access all UserEmailConfigurationData_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailConfigurationData_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References.UserEmailConfigurationData_Access;
   function "=" (Left, Right : UserEmailConfigurationData_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References."=";
   subtype UserEmailConfigurationData_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References.UserEmailConfigurationData_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References."=";
   subtype UserEmailConfigurationData_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References.UserEmailConfigurationData_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References."=";
   subtype UserEmailConfigurationData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References.UserEmailConfigurationData_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References."=";
   subtype UserEmailConfigurationData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References.UserEmailConfigurationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package_References."=";

   type UserEmailConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out UserEmailConfigurationData'Class);
   function Create return UserEmailConfigurationData_Access;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;


