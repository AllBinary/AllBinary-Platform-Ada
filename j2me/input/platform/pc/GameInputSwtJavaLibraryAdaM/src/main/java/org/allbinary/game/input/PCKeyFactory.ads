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
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.game.input.PCKeyFactory_Package is

   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type PCKeyFactory is tagged;
   type PCKeyFactory_Access is access all PCKeyFactory'Class;
   type PCKeyFactory_Access_Array is array (Natural range <>) of PCKeyFactory_Access;
   type PCKeyFactory_Access_Array_Access is access all PCKeyFactory_Access_Array;

   type PCKeyFactory is new Java_Object with record
      UNKNOWN : PCGameKey_Access;
      ENTER : PCGameKey_Access;
      U_A : PCGameKey_Access;
      U_B : PCGameKey_Access;
      U_C : PCGameKey_Access;
      U_D : PCGameKey_Access;
      U_E : PCGameKey_Access;
      U_F : PCGameKey_Access;
      U_G : PCGameKey_Access;
      U_H : PCGameKey_Access;
      U_I : PCGameKey_Access;
      U_J : PCGameKey_Access;
      U_K : PCGameKey_Access;
      U_L : PCGameKey_Access;
      U_M : PCGameKey_Access;
      U_N : PCGameKey_Access;
      U_O : PCGameKey_Access;
      U_P : PCGameKey_Access;
      U_Q : PCGameKey_Access;
      U_R : PCGameKey_Access;
      U_S : PCGameKey_Access;
      U_T : PCGameKey_Access;
      U_U : PCGameKey_Access;
      U_V : PCGameKey_Access;
      U_W : PCGameKey_Access;
      U_X : PCGameKey_Access;
      U_Y : PCGameKey_Access;
      U_Z : PCGameKey_Access;
      a : PCGameKey_Access;
      b : PCGameKey_Access;
      c : PCGameKey_Access;
      d : PCGameKey_Access;
      e : PCGameKey_Access;
      f : PCGameKey_Access;
      g : PCGameKey_Access;
      h : PCGameKey_Access;
      i : PCGameKey_Access;
      j : PCGameKey_Access;
      k : PCGameKey_Access;
      l : PCGameKey_Access;
      m : PCGameKey_Access;
      n : PCGameKey_Access;
      o : PCGameKey_Access;
      p : PCGameKey_Access;
      q : PCGameKey_Access;
      r : PCGameKey_Access;
      s : PCGameKey_Access;
      t : PCGameKey_Access;
      u : PCGameKey_Access;
      v : PCGameKey_Access;
      w : PCGameKey_Access;
      x : PCGameKey_Access;
      y : PCGameKey_Access;
      z : PCGameKey_Access;
      ZERO : PCGameKey_Access;
      ONE : PCGameKey_Access;
      TWO : PCGameKey_Access;
      THREE : PCGameKey_Access;
      FOUR : PCGameKey_Access;
      FIVE : PCGameKey_Access;
      SIX : PCGameKey_Access;
      SEVEN : PCGameKey_Access;
      EIGHT : PCGameKey_Access;
      NINE : PCGameKey_Access;
      DPAD_UP : PCGameKey_Access;
      DPAD_DOWN : PCGameKey_Access;
      DPAD_LEFT : PCGameKey_Access;
      DPAD_RIGHT : PCGameKey_Access;
      DPAD_UP2 : PCGameKey_Access;
      DPAD_DOWN2 : PCGameKey_Access;
      DPAD_LEFT2 : PCGameKey_Access;
      DPAD_RIGHT2 : PCGameKey_Access;
      COMMA : PCGameKey_Access;
      SPACE : PCGameKey_Access;
      DEL : PCGameKey_Access;
      STAR : PCGameKey_Access;
      QUESTION : PCGameKey_Access;
      PERIOD : PCGameKey_Access;
      ESCAPE : PCGameKey_Access;
      BACK_SPACE : PCGameKey_Access;
   end record;
   SINGLETON : PCKeyFactory_Access;

   procedure Initialize (This : in out PCKeyFactory'Class);
   function Create return PCKeyFactory_Access;
   function getInstance return PCKeyFactory_Access;
   procedure getInstance;
   function isSubmission (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isSubmission (This : in out PCKeyFactory; input : Input_Access);
   function isDelete (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isDelete (This : in out PCKeyFactory; input : Input_Access);
   function isBackSpace (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isBackSpace (This : in out PCKeyFactory; input : Input_Access);
   function isUp (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isUp (This : in out PCKeyFactory; input : Input_Access);
   function isDown (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isDown (This : in out PCKeyFactory; input : Input_Access);
   function isLeft (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isLeft (This : in out PCKeyFactory; input : Input_Access);
   function isRight (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isRight (This : in out PCKeyFactory; input : Input_Access);
   function isEnter (This : in out PCKeyFactory; input : Input_Access) return Boolean;
   procedure isEnter (This : in out PCKeyFactory; input : Input_Access);

end org.allbinary.game.input.PCKeyFactory_Package;


