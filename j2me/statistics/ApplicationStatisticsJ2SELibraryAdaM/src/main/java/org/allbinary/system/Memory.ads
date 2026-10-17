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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.system.Memory_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type Memory is tagged;
   type Memory_Access is access all Memory'Class;
   type Memory_Access_Array is array (Natural range <>) of Memory_Access;
   type Memory_Access_Array_Access is access all Memory_Access_Array;

   type Memory is new Java_Object with null record;

   procedure Initialize (This : in out Memory'Class);
   function Create return Memory_Access;
   function getInfo return Unbounded_String;
   procedure getInfo;

end org.allbinary.system.Memory_Package;


