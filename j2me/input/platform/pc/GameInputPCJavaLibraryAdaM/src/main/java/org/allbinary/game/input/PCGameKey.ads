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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.PCGameKey_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type PCGameKey is tagged;
   type PCGameKey_Access is access all PCGameKey'Class;
   type PCGameKey_Access_Array is array (Natural range <>) of PCGameKey_Access;
   type PCGameKey_Access_Array_Access is access all PCGameKey_Access_Array;

   type PCGameKey is new Input with null record;

   procedure Initialize (This : in out PCGameKey'Class; keyCode : Integer; name : Unbounded_String);
   function Create (keyCode : Integer; name : Unbounded_String) return PCGameKey_Access;
   function toString (This : in out PCGameKey) return Unbounded_String;
   procedure toString (This : in out PCGameKey);
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.PCGameKey_Package;


