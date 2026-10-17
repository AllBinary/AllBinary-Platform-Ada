-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

package org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package is


   type AbCrypt is tagged;
   type AbCrypt_Access is access all AbCrypt'Class;
   type AbCrypt_Access_Array is array (Natural range <>) of AbCrypt_Access;
   type AbCrypt_Access_Array_Access is access all AbCrypt_Access_Array;

   type AbCrypt is new Java_Object with null record;

   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String; key : Unbounded_String);
   function Create (algorithm : Unbounded_String; key : Unbounded_String) return AbCrypt_Access;
   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);
   function mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package;


