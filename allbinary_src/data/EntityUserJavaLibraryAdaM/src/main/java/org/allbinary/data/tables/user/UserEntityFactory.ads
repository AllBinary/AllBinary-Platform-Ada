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
with org.allbinary.data.tables.user.UserEntity_Package; use org.allbinary.data.tables.user.UserEntity_Package;

package org.allbinary.data.tables.user.UserEntityFactory_Package is


   type UserEntityFactory is tagged;
   type UserEntityFactory_Access is access all UserEntityFactory'Class;
   type UserEntityFactory_Access_Array is array (Natural range <>) of UserEntityFactory_Access;
   type UserEntityFactory_Access_Array_Access is access all UserEntityFactory_Access_Array;
   type UserEntityFactory_Access_Array_Access_Array is array (Natural range <>) of UserEntityFactory_Access_Array_Access;
   type UserEntityFactory_Access_Array_Access_Array_Access is access all UserEntityFactory_Access_Array_Access_Array;

   type UserEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out UserEntityFactory'Class);
   function Create return UserEntityFactory_Access;
   function getInstance return UserEntity_Access;

end org.allbinary.data.tables.user.UserEntityFactory_Package;


