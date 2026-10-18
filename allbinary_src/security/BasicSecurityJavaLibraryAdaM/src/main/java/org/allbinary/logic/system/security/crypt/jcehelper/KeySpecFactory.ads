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
--  with java.security.spec.KeySpec_Package; use java.security.spec.KeySpec_Package;
--  with javax.crypto.spec.DESKeySpec_Package; use javax.crypto.spec.DESKeySpec_Package;
--  with javax.crypto.spec.DESedeKeySpec_Package; use javax.crypto.spec.DESedeKeySpec_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package is


   type KeySpecFactory is tagged;
   type KeySpecFactory_Access is access all KeySpecFactory'Class;
   type KeySpecFactory_Access_Array is array (Natural range <>) of KeySpecFactory_Access;
   type KeySpecFactory_Access_Array_Access is access all KeySpecFactory_Access_Array;
   type KeySpecFactory_Access_Array_Access_Array is array (Natural range <>) of KeySpecFactory_Access_Array_Access;
   type KeySpecFactory_Access_Array_Access_Array_Access is access all KeySpecFactory_Access_Array_Access_Array;

   type KeySpecFactory is new Java_Object with record
      DES : Unbounded_String;
      DESEDE : Unbounded_String;
      BLOWFISH : Unbounded_String;
   end record;
   instance : KeySpecFactory_Access;

   procedure Initialize (This : in out KeySpecFactory'Class);
   function Create return KeySpecFactory_Access;
   function getInstance return KeySpecFactory_Access;
   function getInstance (This : in out KeySpecFactory; algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) return KeySpec_Access;
   procedure getInstance (This : in out KeySpecFactory; algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;


