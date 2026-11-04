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

limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;
package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References is
   type UserEmailEventConfigurationData_Access is access all org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package.UserEmailEventConfigurationData'Class;
   type UserEmailEventConfigurationData_Access_Array is array (Natural range <>) of UserEmailEventConfigurationData_Access;
   type UserEmailEventConfigurationData_Access_Array_Access is access all UserEmailEventConfigurationData_Access_Array;
   type UserEmailEventConfigurationData_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventConfigurationData_Access_Array_Access;
   type UserEmailEventConfigurationData_Access_Array_Access_Array_Access is access all UserEmailEventConfigurationData_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventConfigurationData_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References.UserEmailEventConfigurationData_Access;
   function "=" (Left, Right : UserEmailEventConfigurationData_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References."=";
   subtype UserEmailEventConfigurationData_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References.UserEmailEventConfigurationData_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References."=";
   subtype UserEmailEventConfigurationData_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References.UserEmailEventConfigurationData_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References."=";
   subtype UserEmailEventConfigurationData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References.UserEmailEventConfigurationData_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References."=";
   subtype UserEmailEventConfigurationData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References.UserEmailEventConfigurationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package_References."=";

   type UserEmailEventConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;
   LISTENER_CLASSPATH : Unbounded_String;

   procedure Initialize (This : in out UserEmailEventConfigurationData'Class);
   function Create return UserEmailEventConfigurationData_Access;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;


