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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;

package org.allbinary.logic.system.security.crypt.WeakCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;

   type WeakCrypt is tagged;
   type WeakCrypt_Access is access all WeakCrypt'Class;
   type WeakCrypt_Access_Array is array (Natural range <>) of WeakCrypt_Access;
   type WeakCrypt_Access_Array_Access is access all WeakCrypt_Access_Array;
   type WeakCrypt_Access_Array_Access_Array is array (Natural range <>) of WeakCrypt_Access_Array_Access;
   type WeakCrypt_Access_Array_Access_Array_Access is access all WeakCrypt_Access_Array_Access_Array;

   type WeakCrypt is new Java_Object with record
      tsUtil : TsUtil_Access;
      abCrypt : AbCrypt_Access;
   end record;
   keys : Unbounded_String_Array_Access;
   KEYMAX : Integer;

   procedure Initialize (This : in out WeakCrypt'Class; key : Integer);
   function Create (key : Integer) return WeakCrypt_Access;
   function encrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String;
   procedure encrypt (This : in out WeakCrypt; value : Unbounded_String);
   function decrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String;
   procedure decrypt (This : in out WeakCrypt; value : Unbounded_String);

end org.allbinary.logic.system.security.crypt.WeakCrypt_Package;


