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

limited with org.allbinary.business.user.role.UserRoleB_Package;
package org.allbinary.business.user.role.UserRoleB_Package_References is
   type UserRoleB_Access is access all org.allbinary.business.user.role.UserRoleB_Package.UserRoleB'Class;
   type UserRoleB_Access_Array is array (Natural range <>) of UserRoleB_Access;
   type UserRoleB_Access_Array_Access is access all UserRoleB_Access_Array;
   type UserRoleB_Access_Array_Access_Array is array (Natural range <>) of UserRoleB_Access_Array_Access;
   type UserRoleB_Access_Array_Access_Array_Access is access all UserRoleB_Access_Array_Access_Array;
end org.allbinary.business.user.role.UserRoleB_Package_References;

with org.allbinary.business.user.role.UserRoleB_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package_References;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;

package org.allbinary.business.user.role.UserRoleB_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
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


   subtype UserRoleB_Access is org.allbinary.business.user.role.UserRoleB_Package_References.UserRoleB_Access;
   function "=" (Left, Right : UserRoleB_Access) return Boolean renames org.allbinary.business.user.role.UserRoleB_Package_References."=";
   subtype UserRoleB_Access_Array is org.allbinary.business.user.role.UserRoleB_Package_References.UserRoleB_Access_Array;
   function "=" (Left, Right : UserRoleB_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRoleB_Package_References."=";
   subtype UserRoleB_Access_Array_Access is org.allbinary.business.user.role.UserRoleB_Package_References.UserRoleB_Access_Array_Access;
   function "=" (Left, Right : UserRoleB_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRoleB_Package_References."=";
   subtype UserRoleB_Access_Array_Access_Array is org.allbinary.business.user.role.UserRoleB_Package_References.UserRoleB_Access_Array_Access_Array;
   function "=" (Left, Right : UserRoleB_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRoleB_Package_References."=";
   subtype UserRoleB_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRoleB_Package_References.UserRoleB_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserRoleB_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRoleB_Package_References."=";

   type UserRoleB is new UserRole with null record;
   roleVector : BasicArrayList_Access;

   procedure Initialize (This : in out UserRoleB'Class; aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class);
   function Create (aBasicUserRole_Param : access BasicUserRole_Package.BasicUserRole'Class; aUserFactoryInterface_Param : access UserFactoryInterface_Package.UserFactoryInterface'Class) return UserRoleB_Access;
   function getRole (role : Unbounded_String) return UserRole_Access;
   procedure getRole (role : Unbounded_String);
   function getAll return BasicArrayList_Access;

end org.allbinary.business.user.role.UserRoleB_Package;


