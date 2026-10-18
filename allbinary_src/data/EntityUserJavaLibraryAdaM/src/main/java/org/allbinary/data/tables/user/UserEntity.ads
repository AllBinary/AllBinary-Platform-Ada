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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package; use org.allbinary.data.tables.user.UserEntityInterface_Package;

package org.allbinary.data.tables.user.UserEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type UserEntity is tagged;
   type UserEntity_Access is access all UserEntity'Class;
   type UserEntity_Access_Array is array (Natural range <>) of UserEntity_Access;
   type UserEntity_Access_Array_Access is access all UserEntity_Access_Array;
   type UserEntity_Access_Array_Access_Array is array (Natural range <>) of UserEntity_Access_Array_Access;
   type UserEntity_Access_Array_Access_Array_Access is access all UserEntity_Access_Array_Access_Array;

   type UserEntity is new AbSqlBean and UserEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      COMMAND_SUCCESS_FOR_USER : Unbounded_String;
      PASSWORD_LABEL : Unbounded_String;
      EQUALS : Unbounded_String;
      COMMAND_SUCCESS_BUT_LOGIN_FAILED : Unbounded_String;
      INVALID_PASSWORD_LABEL : Unbounded_String;
      NOT_EQUAL : Unbounded_String;
      END_QUOTES : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserEntity'Class);
   function Create return UserEntity_Access;
   procedure insert (This : in out UserEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAdministrators (This : in out UserEntity) return BasicArrayList_Access;
   function getStoreManagers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access;
   procedure getStoreManagers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function getCustomers (This : in out UserEntity) return BasicArrayList_Access;
   function getUsersWithRole (This : in out UserEntity; userRole_Param : access UserRole_Package.UserRole'Class) return BasicArrayList_Access;
   procedure getUsersWithRole (This : in out UserEntity; userRole_Param : access UserRole_Package.UserRole'Class);
   function getUsers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access;
   procedure getUsers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function getUser (This : in out UserEntity; userName : Unbounded_String) return UserInterface_Access;
   procedure getUser (This : in out UserEntity; userName : Unbounded_String);
   procedure deleteWhere (This : in out UserEntity; key : Unbounded_String; value : Unbounded_String);
   function login (This : in out UserEntity; userName : Unbounded_String; password : Unbounded_String) return Unbounded_String;
   procedure login (This : in out UserEntity; userName : Unbounded_String; password : Unbounded_String);
   procedure update (This : in out UserEntity; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTables (This : in out UserEntity) return Unbounded_String;
   function createTableStatement (This : in out UserEntity) return Unbounded_String;
   function createTable (This : in out UserEntity) return Unbounded_String;

end org.allbinary.data.tables.user.UserEntity_Package;


