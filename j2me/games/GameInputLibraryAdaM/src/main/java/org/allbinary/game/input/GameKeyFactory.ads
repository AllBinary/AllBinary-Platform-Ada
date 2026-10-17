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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package org.allbinary.game.input.GameKeyFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;

   type GameKeyFactory is tagged;
   type GameKeyFactory_Access is access all GameKeyFactory'Class;
   type GameKeyFactory_Access_Array is array (Natural range <>) of GameKeyFactory_Access;
   type GameKeyFactory_Access_Array_Access is access all GameKeyFactory_Access_Array;

   type GameKeyFactory is new Java_Object with record
      NONE : GameKey_Access;
      UP : GameKey_Access;
      DOWN : GameKey_Access;
      LEFT : GameKey_Access;
      RIGHT : GameKey_Access;
      KEY_POUND : GameKey_Access;
      KEY_STAR : GameKey_Access;
      KEY_NUM0 : GameKey_Access;
      KEY_NUM1 : GameKey_Access;
      KEY_NUM2 : GameKey_Access;
      KEY_NUM3 : GameKey_Access;
      KEY_NUM4 : GameKey_Access;
      KEY_NUM5 : GameKey_Access;
      KEY_NUM6 : GameKey_Access;
      KEY_NUM7 : GameKey_Access;
      KEY_NUM8 : GameKey_Access;
      KEY_NUM9 : GameKey_Access;
      GAME_A : GameKey_Access;
      GAME_B : GameKey_Access;
      GAME_C : GameKey_Access;
      GAME_D : GameKey_Access;
      FIRE : GameKey_Access;
      LEVEL_DOWN : GameKey_Access;
      LEVEL_UP : GameKey_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyFactory'Class);
   function Create return GameKeyFactory_Access;
   function getInstance return GameKeyFactory_Access;
   procedure getInstance;

end org.allbinary.game.input.GameKeyFactory_Package;


