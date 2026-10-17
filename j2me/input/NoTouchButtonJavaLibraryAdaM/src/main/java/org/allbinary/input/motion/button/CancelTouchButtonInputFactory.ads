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
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type CancelTouchButtonInputFactory is tagged;
   type CancelTouchButtonInputFactory_Access is access all CancelTouchButtonInputFactory'Class;
   type CancelTouchButtonInputFactory_Access_Array is array (Natural range <>) of CancelTouchButtonInputFactory_Access;
   type CancelTouchButtonInputFactory_Access_Array_Access is access all CancelTouchButtonInputFactory_Access_Array;

   type CancelTouchButtonInputFactory is new Java_Object with record
      cancelInputArray : TouchButtonInput_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out CancelTouchButtonInputFactory'Class);
   function Create return CancelTouchButtonInputFactory_Access;
   function getInstance return CancelTouchButtonInputFactory_Access;
   procedure getInstance;
   function getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput : TouchButtonInput_Access) return TouchButtonInput_Access;
   procedure getCancel (This : in out CancelTouchButtonInputFactory; touchButtonInput : TouchButtonInput_Access);

end org.allbinary.input.motion.button.CancelTouchButtonInputFactory_Package;


