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

with AllBinary_Java;
limited with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
package org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References is
   type UserConfigurationInterface_Access is access all org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package.UserConfigurationInterface'Class;
   type UserConfigurationInterface_Access_Array is array (Natural range <>) of UserConfigurationInterface_Access;
   type UserConfigurationInterface_Access_Array_Access is access all UserConfigurationInterface_Access_Array;
   type UserConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationInterface_Access_Array_Access;
   type UserConfigurationInterface_Access_Array_Access_Array_Access is access all UserConfigurationInterface_Access_Array_Access_Array;
   type UserConfigurationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfigurationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfigurationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfigurationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfigurationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfigurationInterface_Access_Array_Access is (if Value /= null and then Value.all in UserConfigurationInterface_Access_Array_Object'Class then UserConfigurationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type UserConfigurationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfigurationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfigurationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfigurationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfigurationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfigurationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserConfigurationInterface_Access_Array_Access_Array_Object'Class then UserConfigurationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;

with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.created.TimeCreated_Package_References;
limited with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References;

package org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package is

   package TimeCreated_Package renames Standard.org.allbinary.business.time.created.TimeCreated_Package;
   package TimeLastModified_Package renames Standard.org.allbinary.business.time.modified.TimeLastModified_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
   package Reference_Types is
   subtype TimeCreated_Access is org.allbinary.business.time.created.TimeCreated_Package_References.TimeCreated_Access;
   use type TimeCreated_Access;
   subtype TimeCreated_Access_Array is org.allbinary.business.time.created.TimeCreated_Package_References.TimeCreated_Access_Array;
   use type TimeCreated_Access_Array;
   subtype TimeCreated_Access_Array_Access is org.allbinary.business.time.created.TimeCreated_Package_References.TimeCreated_Access_Array_Access;
   use type TimeCreated_Access_Array_Access;
   subtype TimeCreated_Access_Array_Access_Array is org.allbinary.business.time.created.TimeCreated_Package_References.TimeCreated_Access_Array_Access_Array;
   use type TimeCreated_Access_Array_Access_Array;
   subtype TimeCreated_Access_Array_Access_Array_Access is org.allbinary.business.time.created.TimeCreated_Package_References.TimeCreated_Access_Array_Access_Array_Access;
   use type TimeCreated_Access_Array_Access_Array_Access;
   subtype TimeLastModified_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access;
   use type TimeLastModified_Access;
   subtype TimeLastModified_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array;
   use type TimeLastModified_Access_Array;
   subtype TimeLastModified_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access;
   use type TimeLastModified_Access_Array_Access;
   subtype TimeLastModified_Access_Array_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array;
   use type TimeLastModified_Access_Array_Access_Array;
   subtype TimeLastModified_Access_Array_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array_Access;
   use type TimeLastModified_Access_Array_Access_Array_Access;
   subtype UserEmailConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access;
   use type UserEmailConfigurationInterface_Access;
   subtype UserEmailConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array;
   use type UserEmailConfigurationInterface_Access_Array;
   subtype UserEmailConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access;
   use type UserEmailConfigurationInterface_Access_Array_Access;
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array;
   use type UserEmailConfigurationInterface_Access_Array_Access_Array;
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type UserConfigurationInterface is interface;
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   function Java_Box (Value : UserConfigurationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_UserConfigurationInterface_Access_Array (Value : access Java_Object'Class) return UserConfigurationInterface_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.Java_Unbox_UserConfigurationInterface_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   function Java_Box (Value : UserConfigurationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_UserConfigurationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return UserConfigurationInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.Java_Unbox_UserConfigurationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_UserConfigurationInterface (Value : UserConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getUserEmailConfigurationInterface (This : in out UserConfigurationInterface) return UserEmailConfigurationInterface_Access is abstract;
   procedure setUserEmailConfigurationInterface (This : in out UserConfigurationInterface; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) is abstract;
   function getTimeCreated (This : in out UserConfigurationInterface) return TimeCreated_Access is abstract;
   function getTimeLastModified (This : in out UserConfigurationInterface) return TimeLastModified_Access is abstract;
   procedure setTimeCreated (This : in out UserConfigurationInterface; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) is abstract;
   procedure setTimeLastModified (This : in out UserConfigurationInterface; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) is abstract;

end org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;


