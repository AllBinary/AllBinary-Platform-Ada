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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.UserEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type UserEntityInterface is interface and BasicDataTableInterface;
   type UserEntityInterface_Access is access all UserEntityInterface'Class;
   type UserEntityInterface_Access_Array is array (Natural range <>) of UserEntityInterface_Access;
   type UserEntityInterface_Access_Array_Access is access all UserEntityInterface_Access_Array;
   function getAdministrators (This : in out UserEntityInterface) return BasicArrayList_Access is abstract;
   function getStoreManagers (This : in out UserEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is abstract;
   function getCustomers (This : in out UserEntityInterface) return BasicArrayList_Access is abstract;
   function getUsersWithRole (This : in out UserEntityInterface; userRole_Param : access UserRole_Package.UserRole'Class) return BasicArrayList_Access is abstract;
   function getUsers (This : in out UserEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is abstract;
   function getUser (This : in out UserEntityInterface; userName : Unbounded_String) return UserInterface_Access is abstract;
   function login (This : in out UserEntityInterface; userName : Unbounded_String; password : Unbounded_String) return Unbounded_String is abstract;
   procedure deleteWhere (This : in out UserEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out UserEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out UserEntityInterface; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.user.UserEntityInterface_Package;


