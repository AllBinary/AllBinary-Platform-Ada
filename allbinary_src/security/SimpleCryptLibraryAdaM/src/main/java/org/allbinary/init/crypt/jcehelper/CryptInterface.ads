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

package org.allbinary.init.crypt.jcehelper.CryptInterface_Package is


   type CryptInterface is interface;
   type CryptInterface_Access is access all CryptInterface'Class;
   type CryptInterface_Access_Array is array (Natural range <>) of CryptInterface_Access;
   type CryptInterface_Access_Array_Access is access all CryptInterface_Access_Array;
   function encrypt (This : in out CryptInterface; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is abstract;
   function decrypt (This : in out CryptInterface; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is abstract;

end org.allbinary.init.crypt.jcehelper.CryptInterface_Package;


