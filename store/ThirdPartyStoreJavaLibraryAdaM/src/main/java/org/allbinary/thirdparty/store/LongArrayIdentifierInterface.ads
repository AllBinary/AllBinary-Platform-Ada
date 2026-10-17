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

package org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package is


   type LongArrayIdentifierInterface is interface;
   type LongArrayIdentifierInterface_Access is access all LongArrayIdentifierInterface'Class;
   type LongArrayIdentifierInterface_Access_Array is array (Natural range <>) of LongArrayIdentifierInterface_Access;
   type LongArrayIdentifierInterface_Access_Array_Access is access all LongArrayIdentifierInterface_Access_Array;
   function getLongArrayIdentifier (This : in out LongArrayIdentifierInterface) return Long_Long_Integer_Array_Access is abstract;

end org.allbinary.thirdparty.store.LongArrayIdentifierInterface_Package;


