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
limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References is
   type UserEmailConfiguration_Access is access all org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package.UserEmailConfiguration'Class;
   type UserEmailConfiguration_Access_Array is array (Natural range <>) of UserEmailConfiguration_Access;
   type UserEmailConfiguration_Access_Array_Access is access all UserEmailConfiguration_Access_Array;
   type UserEmailConfiguration_Access_Array_Access_Array is array (Natural range <>) of UserEmailConfiguration_Access_Array_Access;
   type UserEmailConfiguration_Access_Array_Access_Array_Access is access all UserEmailConfiguration_Access_Array_Access_Array;
   type UserEmailConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailConfiguration_Access_Array_Access is (if Value /= null and then Value.all in UserEmailConfiguration_Access_Array_Object'Class then UserEmailConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailConfiguration_Access_Array_Access_Array_Object'Class then UserEmailConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype UserEmailEventsConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access;
   use type UserEmailEventsConfigurationInterface_Access;
   subtype UserEmailEventsConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array;
   use type UserEmailEventsConfigurationInterface_Access_Array;
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access;
   use type UserEmailEventsConfigurationInterface_Access_Array_Access;
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access_Array;
   use type UserEmailEventsConfigurationInterface_Access_Array_Access_Array;
   subtype UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package_References.UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserEmailEventsConfigurationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailConfiguration_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.UserEmailConfiguration_Access;
   function "=" (Left, Right : UserEmailConfiguration_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References."=";
   subtype UserEmailConfiguration_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.UserEmailConfiguration_Access_Array;
   function "=" (Left, Right : UserEmailConfiguration_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References."=";
   subtype UserEmailConfiguration_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.UserEmailConfiguration_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References."=";
   function Java_Box (Value : UserEmailConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.Java_Box;
   function Java_Unbox_UserEmailConfiguration_Access_Array (Value : access Java_Object'Class) return UserEmailConfiguration_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.Java_Unbox_UserEmailConfiguration_Access_Array;
   subtype UserEmailConfiguration_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.UserEmailConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References."=";
   subtype UserEmailConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.UserEmailConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References."=";
   function Java_Box (Value : UserEmailConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.Java_Box;
   function Java_Unbox_UserEmailConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailConfiguration_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package_References.Java_Unbox_UserEmailConfiguration_Access_Array_Access_Array;

   type UserEmailConfiguration is new Java_Object and UserEmailConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailConfiguration'Class);
   function Create return UserEmailConfiguration_Access;
   procedure Initialize (This : in out UserEmailConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailConfiguration_Access;
   function getUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration) return UserEmailEventsConfigurationInterface_Access;
   procedure setUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class);

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;


