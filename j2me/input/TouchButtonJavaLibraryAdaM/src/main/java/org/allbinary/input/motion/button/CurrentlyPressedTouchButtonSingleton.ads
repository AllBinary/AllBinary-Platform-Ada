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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type CurrentlyPressedTouchButtonSingleton is tagged;
   type CurrentlyPressedTouchButtonSingleton_Access is access all CurrentlyPressedTouchButtonSingleton'Class;
   type CurrentlyPressedTouchButtonSingleton_Access_Array is array (Natural range <>) of CurrentlyPressedTouchButtonSingleton_Access;
   type CurrentlyPressedTouchButtonSingleton_Access_Array_Access is access all CurrentlyPressedTouchButtonSingleton_Access_Array;

   type CurrentlyPressedTouchButtonSingleton is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : CurrentlyPressedTouchButtonSingleton_Access;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingleton'Class);
   function Create return CurrentlyPressedTouchButtonSingleton_Access;
   function getInstance return CurrentlyPressedTouchButtonSingleton_Access;
   procedure getInstance;
   function size (This : in out CurrentlyPressedTouchButtonSingleton) return Integer;
   procedure size (This : in out CurrentlyPressedTouchButtonSingleton);
   function removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access;
   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer);
   function remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput : TouchButtonInput_Access) return Boolean;
   procedure remove (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput : TouchButtonInput_Access);
   function get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer) return TouchButtonInput_Access;
   procedure get (This : in out CurrentlyPressedTouchButtonSingleton; index : Integer);
   function contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput : TouchButtonInput_Access) return Boolean;
   procedure contains (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput : TouchButtonInput_Access);
   procedure add (This : in out CurrentlyPressedTouchButtonSingleton; touchButtonInput : TouchButtonInput_Access);

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;


