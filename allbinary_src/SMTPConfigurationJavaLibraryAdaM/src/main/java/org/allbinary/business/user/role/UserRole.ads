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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;

package org.allbinary.business.user.role.UserRole_Package is

   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;

   type UserRole is tagged;
   type UserRole_Access is access all UserRole'Class;
   type UserRole_Access_Array is array (Natural range <>) of UserRole_Access;
   type UserRole_Access_Array_Access is access all UserRole_Access_Array;

   type UserRole is new Serializable with record
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


