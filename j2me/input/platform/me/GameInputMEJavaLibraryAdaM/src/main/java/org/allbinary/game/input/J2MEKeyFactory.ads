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
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.J2MEKeyFactory_Package is


   type J2MEKeyFactory is tagged;
   type J2MEKeyFactory_Access is access all J2MEKeyFactory'Class;
   type J2MEKeyFactory_Access_Array is array (Natural range <>) of J2MEKeyFactory_Access;
   type J2MEKeyFactory_Access_Array_Access is access all J2MEKeyFactory_Access_Array;

   type J2MEKeyFactory is new Java_Object with record
      gameKeyFactory : GameKeyFactory_Access;
   end record;
   instance : J2MEKeyFactory_Access;

   procedure Initialize (This : in out J2MEKeyFactory'Class);
   function Create return J2MEKeyFactory_Access;
   function getInstance return J2MEKeyFactory_Access;
   procedure init (This : in out J2MEKeyFactory);
   function isSubmission (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isSubmission (This : in out J2MEKeyFactory; input : Input_Access);
   function isDelete (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isDelete (This : in out J2MEKeyFactory; input : Input_Access);
   function isBackSpace (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isBackSpace (This : in out J2MEKeyFactory; input : Input_Access);
   function isUp (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isUp (This : in out J2MEKeyFactory; input : Input_Access);
   function isDown (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isDown (This : in out J2MEKeyFactory; input : Input_Access);
   function isLeft (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isLeft (This : in out J2MEKeyFactory; input : Input_Access);
   function isRight (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isRight (This : in out J2MEKeyFactory; input : Input_Access);
   function isEnter (This : in out J2MEKeyFactory; input : Input_Access) return Boolean;
   procedure isEnter (This : in out J2MEKeyFactory; input : Input_Access);

end org.allbinary.game.input.J2MEKeyFactory_Package;


