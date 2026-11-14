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
limited with org.allbinary.business.user.role.UserRoleFactory_Package;
package org.allbinary.business.user.role.UserRoleFactory_Package_References is
   type UserRoleFactory_Access is access all org.allbinary.business.user.role.UserRoleFactory_Package.UserRoleFactory'Class;
   type UserRoleFactory_Access_Array is array (Natural range <>) of UserRoleFactory_Access;
   type UserRoleFactory_Access_Array_Access is access all UserRoleFactory_Access_Array;
   type UserRoleFactory_Access_Array_Access_Array is array (Natural range <>) of UserRoleFactory_Access_Array_Access;
   type UserRoleFactory_Access_Array_Access_Array_Access is access all UserRoleFactory_Access_Array_Access_Array;
   type UserRoleFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserRoleFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : UserRoleFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserRoleFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserRoleFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserRoleFactory_Access_Array_Access is (if Value /= null and then Value.all in UserRoleFactory_Access_Array_Object'Class then UserRoleFactory_Access_Array_Object'Class (Value.all).Value else null);
   type UserRoleFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserRoleFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserRoleFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserRoleFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserRoleFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserRoleFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserRoleFactory_Access_Array_Access_Array_Object'Class then UserRoleFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.role.UserRoleFactory_Package_References;

with org.allbinary.business.user.role.UserRoleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.role.BasicUserRoleFactory_Package;
with org.allbinary.business.user.role.BasicUserRoleFactory_Package_References;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;

package org.allbinary.business.user.role.UserRoleFactory_Package is

   package Reference_Types is
   subtype BasicUserRoleFactory_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access;
   use type BasicUserRoleFactory_Access;
   subtype BasicUserRoleFactory_Access_Array is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array;
   use type BasicUserRoleFactory_Access_Array;
   subtype BasicUserRoleFactory_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access;
   use type BasicUserRoleFactory_Access_Array_Access;
   subtype BasicUserRoleFactory_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access_Array;
   use type BasicUserRoleFactory_Access_Array_Access_Array;
   subtype BasicUserRoleFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoleFactory_Package_References.BasicUserRoleFactory_Access_Array_Access_Array_Access;
   use type BasicUserRoleFactory_Access_Array_Access_Array_Access;
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserRoleFactory_Access is org.allbinary.business.user.role.UserRoleFactory_Package_References.UserRoleFactory_Access;
   function "=" (Left, Right : UserRoleFactory_Access) return Boolean renames org.allbinary.business.user.role.UserRoleFactory_Package_References."=";
   subtype UserRoleFactory_Access_Array is org.allbinary.business.user.role.UserRoleFactory_Package_References.UserRoleFactory_Access_Array;
   function "=" (Left, Right : UserRoleFactory_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRoleFactory_Package_References."=";
   subtype UserRoleFactory_Access_Array_Access is org.allbinary.business.user.role.UserRoleFactory_Package_References.UserRoleFactory_Access_Array_Access;
   function "=" (Left, Right : UserRoleFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRoleFactory_Package_References."=";
   function Java_Box (Value : UserRoleFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.UserRoleFactory_Package_References.Java_Box;
   function Java_Unbox_UserRoleFactory_Access_Array (Value : access Java_Object'Class) return UserRoleFactory_Access_Array_Access renames org.allbinary.business.user.role.UserRoleFactory_Package_References.Java_Unbox_UserRoleFactory_Access_Array;
   subtype UserRoleFactory_Access_Array_Access_Array is org.allbinary.business.user.role.UserRoleFactory_Package_References.UserRoleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : UserRoleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRoleFactory_Package_References."=";
   subtype UserRoleFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRoleFactory_Package_References.UserRoleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserRoleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRoleFactory_Package_References."=";
   function Java_Box (Value : UserRoleFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.UserRoleFactory_Package_References.Java_Box;
   function Java_Unbox_UserRoleFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return UserRoleFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.role.UserRoleFactory_Package_References.Java_Unbox_UserRoleFactory_Access_Array_Access_Array;

   type UserRoleFactory is new Java_Object with record
      basicUserRoleFactory : BasicUserRoleFactory_Access;
      INSTALLER : UserRole_Access;
      ADMINISTRATOR : UserRole_Access;
      CUSTOMER : UserRole_Access;
      SUBSCRIBERCUSTOMER : UserRole_Access;
      WHOLESALECUSTOMER : UserRole_Access;
      STOREMANAGER : UserRole_Access;
      PRODUCTMANAGER : UserRole_Access;
      CUSTOMERMANAGER : UserRole_Access;
      PAYMENTMANAGER : UserRole_Access;
      ORDERMANAGER : UserRole_Access;
      WEBMANAGER : UserRole_Access;
      REVIEWER : UserRole_Access;
      SHIPPING : UserRole_Access;
      ADJUSTER : UserRole_Access;
      WORKFLOWEDITOR : UserRole_Access;
      WIZARD : UserRole_Access;
      VIEWEDITOR : UserRole_Access;
   end record;
   instance : UserRoleFactory_Access;

   procedure Initialize (This : in out UserRoleFactory'Class);
   function Create return UserRoleFactory_Access;
   function getInstance return UserRoleFactory_Access;

end org.allbinary.business.user.role.UserRoleFactory_Package;


