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
with org.allbinary.business.init.db.DbInitInfo_Package; use org.allbinary.business.init.db.DbInitInfo_Package;

package org.allbinary.business.init.db.UserDbInitInfo_Package is


   type UserDbInitInfo is tagged;
   type UserDbInitInfo_Access is access all UserDbInitInfo'Class;
   type UserDbInitInfo_Access_Array is array (Natural range <>) of UserDbInitInfo_Access;
   type UserDbInitInfo_Access_Array_Access is access all UserDbInitInfo_Access_Array;
   type UserDbInitInfo_Access_Array_Access_Array is array (Natural range <>) of UserDbInitInfo_Access_Array_Access;
   type UserDbInitInfo_Access_Array_Access_Array_Access is access all UserDbInitInfo_Access_Array_Access_Array;

   type UserDbInitInfo is new DbInitInfo with null record;
   INITFILE : Unbounded_String;

   procedure Initialize (This : in out UserDbInitInfo'Class);
   function Create return UserDbInitInfo_Access;
   procedure Initialize (This : in out UserDbInitInfo'Class; read : Boolean);
   function Create (read : Boolean) return UserDbInitInfo_Access;

end org.allbinary.business.init.db.UserDbInitInfo_Package;


