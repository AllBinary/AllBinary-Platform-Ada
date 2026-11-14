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
limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package;
package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References is
   type UserEmailEventConfigurationMapping_Access is access all org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package.UserEmailEventConfigurationMapping'Class;
   type UserEmailEventConfigurationMapping_Access_Array is array (Natural range <>) of UserEmailEventConfigurationMapping_Access;
   type UserEmailEventConfigurationMapping_Access_Array_Access is access all UserEmailEventConfigurationMapping_Access_Array;
   type UserEmailEventConfigurationMapping_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventConfigurationMapping_Access_Array_Access;
   type UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access is access all UserEmailEventConfigurationMapping_Access_Array_Access_Array;
   type UserEmailEventConfigurationMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventConfigurationMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventConfigurationMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventConfigurationMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventConfigurationMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventConfigurationMapping_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventConfigurationMapping_Access_Array_Object'Class then UserEmailEventConfigurationMapping_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailEventConfigurationMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventConfigurationMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventConfigurationMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventConfigurationMapping_Access_Array_Access_Array_Object'Class then UserEmailEventConfigurationMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype UserEmailEventConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access;
   use type UserEmailEventConfigurationInterface_Access;
   subtype UserEmailEventConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array;
   use type UserEmailEventConfigurationInterface_Access_Array;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access;
   use type UserEmailEventConfigurationInterface_Access_Array_Access;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   use type UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventConfigurationMapping_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.UserEmailEventConfigurationMapping_Access;
   function "=" (Left, Right : UserEmailEventConfigurationMapping_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References."=";
   subtype UserEmailEventConfigurationMapping_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.UserEmailEventConfigurationMapping_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationMapping_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References."=";
   subtype UserEmailEventConfigurationMapping_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.UserEmailEventConfigurationMapping_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationMapping_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References."=";
   function Java_Box (Value : UserEmailEventConfigurationMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventConfigurationMapping_Access_Array (Value : access Java_Object'Class) return UserEmailEventConfigurationMapping_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.Java_Unbox_UserEmailEventConfigurationMapping_Access_Array;
   subtype UserEmailEventConfigurationMapping_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.UserEmailEventConfigurationMapping_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References."=";
   subtype UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References."=";
   function Java_Box (Value : UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventConfigurationMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailEventConfigurationMapping_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package_References.Java_Unbox_UserEmailEventConfigurationMapping_Access_Array_Access_Array;

   type UserEmailEventConfigurationMapping is new Java_Object and TableMappingInterface with record
      userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventConfigurationMapping'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class);
   function Create (userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) return UserEmailEventConfigurationMapping_Access;
   function toHashMap (This : in out UserEmailEventConfigurationMapping) return HashMap_Access;
   function getKey (This : in out UserEmailEventConfigurationMapping) return Java_Object_Access;
   function toVector (This : in out UserEmailEventConfigurationMapping) return BasicArrayList_Access;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package;


