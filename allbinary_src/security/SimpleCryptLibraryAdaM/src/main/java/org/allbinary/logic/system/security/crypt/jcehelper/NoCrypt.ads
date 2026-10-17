-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package is

   package CryptInterface_Package renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

   type NoCrypt is tagged;
   type NoCrypt_Access is access all NoCrypt'Class;
   type NoCrypt_Access_Array is array (Natural range <>) of NoCrypt_Access;
   type NoCrypt_Access_Array_Access is access all NoCrypt_Access_Array;

   type NoCrypt is new CryptInterface with null record;

   procedure Initialize (This : in out NoCrypt'Class);
   function Create return NoCrypt_Access;
   function encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;


