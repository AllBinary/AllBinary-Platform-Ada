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
limited with org.allbinary.business.user.modules.configuration.UserConfiguration_Package;
package org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References is
   type UserConfiguration_Access is access all org.allbinary.business.user.modules.configuration.UserConfiguration_Package.UserConfiguration'Class;
   type UserConfiguration_Access_Array is array (Natural range <>) of UserConfiguration_Access;
   type UserConfiguration_Access_Array_Access is access all UserConfiguration_Access_Array;
   type UserConfiguration_Access_Array_Access_Array is array (Natural range <>) of UserConfiguration_Access_Array_Access;
   type UserConfiguration_Access_Array_Access_Array_Access is access all UserConfiguration_Access_Array_Access_Array;
   type UserConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfiguration_Access_Array_Access is (if Value /= null and then Value.all in UserConfiguration_Access_Array_Object'Class then UserConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type UserConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserConfiguration_Access_Array_Access_Array_Object'Class then UserConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References;

with org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.created.TimeCreated_Package_References;
limited with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;

package org.allbinary.business.user.modules.configuration.UserConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype UserConfiguration_Access is org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.UserConfiguration_Access;
   function "=" (Left, Right : UserConfiguration_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References."=";
   subtype UserConfiguration_Access_Array is org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.UserConfiguration_Access_Array;
   function "=" (Left, Right : UserConfiguration_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References."=";
   subtype UserConfiguration_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.UserConfiguration_Access_Array_Access;
   function "=" (Left, Right : UserConfiguration_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References."=";
   function Java_Box (Value : UserConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.Java_Box;
   function Java_Unbox_UserConfiguration_Access_Array (Value : access Java_Object'Class) return UserConfiguration_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.Java_Unbox_UserConfiguration_Access_Array;
   subtype UserConfiguration_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.UserConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References."=";
   subtype UserConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.UserConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References."=";
   function Java_Box (Value : UserConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.Java_Box;
   function Java_Unbox_UserConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return UserConfiguration_Access_Array_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfiguration_Package_References.Java_Unbox_UserConfiguration_Access_Array_Access_Array;

   type UserConfiguration is new Java_Object and UserConfigurationInterface with record
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      timeCreated : TimeCreated_Access;
      timeLastModified : TimeLastModified_Access;
   end record;

   procedure Initialize (This : in out UserConfiguration'Class);
   function Create return UserConfiguration_Access;
   procedure Initialize (This : in out UserConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserConfiguration_Access;
   function getUserEmailConfigurationInterface (This : in out UserConfiguration) return UserEmailConfigurationInterface_Access;
   procedure setUserEmailConfigurationInterface (This : in out UserConfiguration; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class);
   function getTimeCreated (This : in out UserConfiguration) return TimeCreated_Access;
   function getTimeLastModified (This : in out UserConfiguration) return TimeLastModified_Access;
   procedure setTimeCreated (This : in out UserConfiguration; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class);
   procedure setTimeLastModified (This : in out UserConfiguration; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class);

end org.allbinary.business.user.modules.configuration.UserConfiguration_Package;


