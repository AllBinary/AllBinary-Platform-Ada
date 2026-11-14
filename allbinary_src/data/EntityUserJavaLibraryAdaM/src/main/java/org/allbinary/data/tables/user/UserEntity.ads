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
limited with org.allbinary.data.tables.user.UserEntity_Package;
package org.allbinary.data.tables.user.UserEntity_Package_References is
   type UserEntity_Access is access all org.allbinary.data.tables.user.UserEntity_Package.UserEntity'Class;
   type UserEntity_Access_Array is array (Natural range <>) of UserEntity_Access;
   type UserEntity_Access_Array_Access is access all UserEntity_Access_Array;
   type UserEntity_Access_Array_Access_Array is array (Natural range <>) of UserEntity_Access_Array_Access;
   type UserEntity_Access_Array_Access_Array_Access is access all UserEntity_Access_Array_Access_Array;
   type UserEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEntity_Access_Array_Access is (if Value /= null and then Value.all in UserEntity_Access_Array_Object'Class then UserEntity_Access_Array_Object'Class (Value.all).Value else null);
   type UserEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEntity_Access_Array_Access_Array_Object'Class then UserEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.UserEntity_Package_References;

with org.allbinary.data.tables.user.UserEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
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
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
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


   subtype UserEntity_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access;
   function "=" (Left, Right : UserEntity_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array;
   function "=" (Left, Right : UserEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access;
   function "=" (Left, Right : UserEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   function Java_Box (Value : UserEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.UserEntity_Package_References.Java_Box;
   function Java_Unbox_UserEntity_Access_Array (Value : access Java_Object'Class) return UserEntity_Access_Array_Access renames org.allbinary.data.tables.user.UserEntity_Package_References.Java_Unbox_UserEntity_Access_Array;
   subtype UserEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array;
   function "=" (Left, Right : UserEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   subtype UserEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntity_Package_References."=";
   function Java_Box (Value : UserEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.UserEntity_Package_References.Java_Box;
   function Java_Unbox_UserEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.UserEntity_Package_References.Java_Unbox_UserEntity_Access_Array_Access_Array;

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
   function dropTable (This : in out UserEntity) return Unbounded_String;

end org.allbinary.data.tables.user.UserEntity_Package;


