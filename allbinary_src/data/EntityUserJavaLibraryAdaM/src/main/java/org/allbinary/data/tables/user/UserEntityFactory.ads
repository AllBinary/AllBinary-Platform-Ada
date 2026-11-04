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

limited with org.allbinary.data.tables.user.UserEntityFactory_Package;
package org.allbinary.data.tables.user.UserEntityFactory_Package_References is
   type UserEntityFactory_Access is access all org.allbinary.data.tables.user.UserEntityFactory_Package.UserEntityFactory'Class;
   type UserEntityFactory_Access_Array is array (Natural range <>) of UserEntityFactory_Access;
   type UserEntityFactory_Access_Array_Access is access all UserEntityFactory_Access_Array;
   type UserEntityFactory_Access_Array_Access_Array is array (Natural range <>) of UserEntityFactory_Access_Array_Access;
   type UserEntityFactory_Access_Array_Access_Array_Access is access all UserEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.user.UserEntityFactory_Package_References;

with org.allbinary.data.tables.user.UserEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.user.UserEntity_Package;
with org.allbinary.data.tables.user.UserEntity_Package_References;

package org.allbinary.data.tables.user.UserEntityFactory_Package is

   package Reference_Types is
   subtype UserEntity_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access;
   use type UserEntity_Access;
   subtype UserEntity_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array;
   use type UserEntity_Access_Array;
   subtype UserEntity_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access;
   use type UserEntity_Access_Array_Access;
   subtype UserEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array;
   use type UserEntity_Access_Array_Access_Array;
   subtype UserEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.UserEntity_Package_References.UserEntity_Access_Array_Access_Array_Access;
   use type UserEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEntityFactory_Access is org.allbinary.data.tables.user.UserEntityFactory_Package_References.UserEntityFactory_Access;
   function "=" (Left, Right : UserEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.UserEntityFactory_Package_References."=";
   subtype UserEntityFactory_Access_Array is org.allbinary.data.tables.user.UserEntityFactory_Package_References.UserEntityFactory_Access_Array;
   function "=" (Left, Right : UserEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntityFactory_Package_References."=";
   subtype UserEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.UserEntityFactory_Package_References.UserEntityFactory_Access_Array_Access;
   function "=" (Left, Right : UserEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntityFactory_Package_References."=";
   subtype UserEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.UserEntityFactory_Package_References.UserEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : UserEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.UserEntityFactory_Package_References."=";
   subtype UserEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.UserEntityFactory_Package_References.UserEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.UserEntityFactory_Package_References."=";

   type UserEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out UserEntityFactory'Class);
   function Create return UserEntityFactory_Access;
   function getInstance return UserEntity_Access;

end org.allbinary.data.tables.user.UserEntityFactory_Package;


