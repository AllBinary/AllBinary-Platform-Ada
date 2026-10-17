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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;

package org.allbinary.business.user.CreateUserFactory_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package UserRoleB_Package renames Standard.org.allbinary.business.user.role.UserRoleB_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;

   type CreateUserFactory is tagged;
   type CreateUserFactory_Access is access all CreateUserFactory'Class;
   type CreateUserFactory_Access_Array is array (Natural range <>) of CreateUserFactory_Access;
   type CreateUserFactory_Access_Array_Access is access all CreateUserFactory_Access_Array;

   type CreateUserFactory is new Java_Object with null record;

   procedure Initialize (This : in out CreateUserFactory'Class);
   function Create return CreateUserFactory_Access;
   function getInstance (hashMap : HashMap_Access) return UserInterface_Access;
   procedure getInstance (hashMap : HashMap_Access);

end org.allbinary.business.user.CreateUserFactory_Package;


