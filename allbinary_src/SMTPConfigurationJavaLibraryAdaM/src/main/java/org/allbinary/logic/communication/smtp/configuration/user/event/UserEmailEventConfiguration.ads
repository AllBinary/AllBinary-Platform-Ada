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

limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package;
package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References is
   type UserEmailEventConfiguration_Access is access all org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package.UserEmailEventConfiguration'Class;
   type UserEmailEventConfiguration_Access_Array is array (Natural range <>) of UserEmailEventConfiguration_Access;
   type UserEmailEventConfiguration_Access_Array_Access is access all UserEmailEventConfiguration_Access_Array;
   type UserEmailEventConfiguration_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventConfiguration_Access_Array_Access;
   type UserEmailEventConfiguration_Access_Array_Access_Array_Access is access all UserEmailEventConfiguration_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References;
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
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventConfiguration_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References.UserEmailEventConfiguration_Access;
   function "=" (Left, Right : UserEmailEventConfiguration_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References."=";
   subtype UserEmailEventConfiguration_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References.UserEmailEventConfiguration_Access_Array;
   function "=" (Left, Right : UserEmailEventConfiguration_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References."=";
   subtype UserEmailEventConfiguration_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References.UserEmailEventConfiguration_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References."=";
   subtype UserEmailEventConfiguration_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References.UserEmailEventConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References."=";
   subtype UserEmailEventConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References.UserEmailEventConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package_References."=";

   type UserEmailEventConfiguration is new Java_Object and UserEmailEventConfigurationInterface with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      eventListenerClassPath : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserEmailEventConfiguration'Class);
   function Create return UserEmailEventConfiguration_Access;
   procedure Initialize (This : in out UserEmailEventConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailEventConfiguration_Access;
   function getName (This : in out UserEmailEventConfiguration) return Unbounded_String;
   procedure setName (This : in out UserEmailEventConfiguration; name : Unbounded_String);
   function getEventListenerClassPath (This : in out UserEmailEventConfiguration) return Unbounded_String;
   procedure setEventListenerClassPath (This : in out UserEmailEventConfiguration; eventListenerClassPath : Unbounded_String);
   function log (This : in out UserEmailEventConfiguration) return Unbounded_String;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package;


