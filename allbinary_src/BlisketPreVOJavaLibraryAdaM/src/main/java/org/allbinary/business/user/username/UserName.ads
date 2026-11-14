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
limited with org.allbinary.business.user.username.UserName_Package;
package org.allbinary.business.user.username.UserName_Package_References is
   type UserName_Access is access all org.allbinary.business.user.username.UserName_Package.UserName'Class;
   type UserName_Access_Array is array (Natural range <>) of UserName_Access;
   type UserName_Access_Array_Access is access all UserName_Access_Array;
   type UserName_Access_Array_Access_Array is array (Natural range <>) of UserName_Access_Array_Access;
   type UserName_Access_Array_Access_Array_Access is access all UserName_Access_Array_Access_Array;
   type UserName_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserName_Access_Array_Access;
   end record;
   function Java_Box (Value : UserName_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserName_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserName_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserName_Access_Array_Access is (if Value /= null and then Value.all in UserName_Access_Array_Object'Class then UserName_Access_Array_Object'Class (Value.all).Value else null);
   type UserName_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserName_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserName_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserName_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserName_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserName_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserName_Access_Array_Access_Array_Object'Class then UserName_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.username.UserName_Package_References;

with org.allbinary.business.user.username.UserName_Package_References;
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

package org.allbinary.business.user.username.UserName_Package is

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


   subtype UserName_Access is org.allbinary.business.user.username.UserName_Package_References.UserName_Access;
   function "=" (Left, Right : UserName_Access) return Boolean renames org.allbinary.business.user.username.UserName_Package_References."=";
   subtype UserName_Access_Array is org.allbinary.business.user.username.UserName_Package_References.UserName_Access_Array;
   function "=" (Left, Right : UserName_Access_Array) return Boolean renames org.allbinary.business.user.username.UserName_Package_References."=";
   subtype UserName_Access_Array_Access is org.allbinary.business.user.username.UserName_Package_References.UserName_Access_Array_Access;
   function "=" (Left, Right : UserName_Access_Array_Access) return Boolean renames org.allbinary.business.user.username.UserName_Package_References."=";
   function Java_Box (Value : UserName_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.username.UserName_Package_References.Java_Box;
   function Java_Unbox_UserName_Access_Array (Value : access Java_Object'Class) return UserName_Access_Array_Access renames org.allbinary.business.user.username.UserName_Package_References.Java_Unbox_UserName_Access_Array;
   subtype UserName_Access_Array_Access_Array is org.allbinary.business.user.username.UserName_Package_References.UserName_Access_Array_Access_Array;
   function "=" (Left, Right : UserName_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.username.UserName_Package_References."=";
   subtype UserName_Access_Array_Access_Array_Access is org.allbinary.business.user.username.UserName_Package_References.UserName_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserName_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.username.UserName_Package_References."=";
   function Java_Box (Value : UserName_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.username.UserName_Package_References.Java_Box;
   function Java_Unbox_UserName_Access_Array_Access_Array (Value : access Java_Object'Class) return UserName_Access_Array_Access_Array_Access renames org.allbinary.business.user.username.UserName_Package_References.Java_Unbox_UserName_Access_Array_Access_Array;

   type UserName is new Java_Object with record
      logUtil : LogUtil_Access;
      userName_Var : Unbounded_String;
   end record;
   instance : UserName_Access;

   procedure Initialize (This : in out UserName'Class);
   function Create return UserName_Access;
   procedure Initialize (This : in out UserName'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserName_Access;
   function getInstance return UserName_Access;
   function isValid (This : in out UserName) return Boolean;
   function get (This : in out UserName) return Unbounded_String;
   function isValid (This : in out UserName; aUserName : Unbounded_String) return Boolean;
   procedure isValid (This : in out UserName; aUserName : Unbounded_String);
   function getValidationInfo (aUserName : Unbounded_String) return Unbounded_String;
   procedure getValidationInfo (aUserName : Unbounded_String);

end org.allbinary.business.user.username.UserName_Package;


