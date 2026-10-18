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
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.business.installer.Portion_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;

   type Portion is tagged;
   type Portion_Access is access all Portion'Class;
   type Portion_Access_Array is array (Natural range <>) of Portion_Access;
   type Portion_Access_Array_Access is access all Portion_Access_Array;

   type Portion is new Java_Object with record
      current : Integer;
      total : Integer;
   end record;

   procedure Initialize (This : in out Portion'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Portion_Access;
   function getCurrent (This : in out Portion) return Integer;
   function getTotal (This : in out Portion) return Integer;

end org.allbinary.business.installer.Portion_Package;


