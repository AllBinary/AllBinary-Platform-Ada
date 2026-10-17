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

package org.allbinary.business.user.role.UserRole_Package is

   package UserFactoryInterface_Package renames org.allbinary.business.user.UserFactoryInterface_Package;

   type UserRole is tagged;
   type UserRole_Access is access all UserRole'Class;
   type UserRole_Access_Array is array (Natural range <>) of UserRole_Access;
   type UserRole_Access_Array_Access is access all UserRole_Access_Array;

   type UserRole is new Serializable with record
      basicUserRole : BasicUserRole_Access;
      userFactoryInterface : UserFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out UserRole'Class; aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access);
   function Create (aBasicUserRole : BasicUserRole_Access; aUserFactoryInterface : UserFactoryInterface_Access) return UserRole_Access;
   function toString (This : in out UserRole) return Unbounded_String;
   procedure toString (This : in out UserRole);
   function getBasicUserRole (This : in out UserRole) return BasicUserRole_Access;
   procedure getBasicUserRole (This : in out UserRole);
   function getUserFactory (This : in out UserRole) return UserFactoryInterface_Access;
   procedure getUserFactory (This : in out UserRole);
   function getSessionTimeout (This : in out UserRole) return Long_Long_Integer;
   procedure getSessionTimeout (This : in out UserRole);
   function getSessionInactivityTimeout (This : in out UserRole) return Long_Long_Integer;
   procedure getSessionInactivityTimeout (This : in out UserRole);

end org.allbinary.business.user.role.UserRole_Package;


