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
with org.allbinary.business.user.UserFactoryInterface_Package; use org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.modules.admin.AdminUser_Package; use org.allbinary.business.user.modules.admin.AdminUser_Package;

package org.allbinary.business.user.modules.admin.AdminUserFactory_Package is

   package UserFactoryInterface_Package renames Standard.org.allbinary.business.user.UserFactoryInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;

   type AdminUserFactory is tagged;
   type AdminUserFactory_Access is access all AdminUserFactory'Class;
   type AdminUserFactory_Access_Array is array (Natural range <>) of AdminUserFactory_Access;
   type AdminUserFactory_Access_Array_Access is access all AdminUserFactory_Access_Array;

   type AdminUserFactory is new UserFactoryInterface with null record;

   procedure Initialize (This : in out AdminUserFactory'Class);
   function Create return AdminUserFactory_Access;
   function getInstance (This : in out AdminUserFactory) return UserInterface_Access;
   function getInstance (This : in out AdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access;
   procedure getInstance (This : in out AdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.modules.admin.AdminUserFactory_Package;


