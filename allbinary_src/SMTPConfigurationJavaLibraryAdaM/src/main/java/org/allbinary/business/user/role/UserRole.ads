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
limited with org.allbinary.business.user.role.UserRole_Package;
package org.allbinary.business.user.role.UserRole_Package_References is
   type UserRole_Access is access all org.allbinary.business.user.role.UserRole_Package.UserRole'Class;
   type UserRole_Access_Array is array (Natural range <>) of UserRole_Access;
   type UserRole_Access_Array_Access is access all UserRole_Access_Array;
   type UserRole_Access_Array_Access_Array is array (Natural range <>) of UserRole_Access_Array_Access;
   type UserRole_Access_Array_Access_Array_Access is access all UserRole_Access_Array_Access_Array;
   type UserRole_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserRole_Access_Array_Access;
   end record;
   function Java_Box (Value : UserRole_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserRole_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserRole_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserRole_Access_Array_Access is (if Value /= null and then Value.all in UserRole_Access_Array_Object'Class then UserRole_Access_Array_Object'Class (Value.all).Value else null);
   type UserRole_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserRole_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserRole_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserRole_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserRole_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserRole_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserRole_Access_Array_Access_Array_Object'Class then UserRole_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.role.UserRole_Package_References;

with org.allbinary.business.user.role.UserRole_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
limited with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package_References;
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;

package org.allbinary.business.user.role.UserRole_Package is

   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
   package Reference_Types is
   subtype UserFactoryInterface_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access;
   use type UserFactoryInterface_Access;
   subtype UserFactoryInterface_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array;
   use type UserFactoryInterface_Access_Array;
   subtype UserFactoryInterface_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access;
   use type UserFactoryInterface_Access_Array_Access;
   subtype UserFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array;
   use type UserFactoryInterface_Access_Array_Access_Array;
   subtype UserFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array_Access;
   use type UserFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   use type BasicUserRole_Access;
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   use type BasicUserRole_Access_Array;
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access;
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   use type BasicUserRole_Access_Array_Access_Array;
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   function "=" (Left, Right : UserRole_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   function Java_Box (Value : UserRole_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.UserRole_Package_References.Java_Box;
   function Java_Unbox_UserRole_Access_Array (Value : access Java_Object'Class) return UserRole_Access_Array_Access renames org.allbinary.business.user.role.UserRole_Package_References.Java_Unbox_UserRole_Access_Array;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   function Java_Box (Value : UserRole_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.UserRole_Package_References.Java_Box;
   function Java_Unbox_UserRole_Access_Array_Access_Array (Value : access Java_Object'Class) return UserRole_Access_Array_Access_Array_Access renames org.allbinary.business.user.role.UserRole_Package_References.Java_Unbox_UserRole_Access_Array_Access_Array;

   type UserRole is new Java_Object with record
      basicUserRole : BasicUserRole_Access;
      userFactoryInterface : UserFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out UserRole'Class; aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class);
   function Create (aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) return UserRole_Access;
   function toString (This : in out UserRole) return Unbounded_String;
   function getBasicUserRole (This : in out UserRole) return BasicUserRole_Access;
   function getUserFactory (This : in out UserRole) return UserFactoryInterface_Access;
   function getSessionTimeout (This : in out UserRole) return Long_Long_Integer;
   function getSessionInactivityTimeout (This : in out UserRole) return Long_Long_Integer;

end org.allbinary.business.user.role.UserRole_Package;


