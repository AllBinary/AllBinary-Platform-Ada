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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;

package org.allbinary.game.input.J2MEGameKey_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type J2MEGameKey is tagged;
   type J2MEGameKey_Access is access all J2MEGameKey'Class;
   type J2MEGameKey_Access_Array is array (Natural range <>) of J2MEGameKey_Access;
   type J2MEGameKey_Access_Array_Access is access all J2MEGameKey_Access_Array;

   type J2MEGameKey is new Input with null record;

   procedure Initialize (This : in out J2MEGameKey'Class; key : Integer; keyName : Unbounded_String);
   function Create (key : Integer; keyName : Unbounded_String) return J2MEGameKey_Access;
   function toString (This : in out J2MEGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.J2MEGameKey_Package;


