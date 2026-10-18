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
with org.allbinary.graphics.ScreenListenerInterface_Package; use org.allbinary.graphics.ScreenListenerInterface_Package;

package org.allbinary.graphics.ScreenEmptyListener_Package is


   type ScreenEmptyListener is tagged;
   type ScreenEmptyListener_Access is access all ScreenEmptyListener'Class;
   type ScreenEmptyListener_Access_Array is array (Natural range <>) of ScreenEmptyListener_Access;
   type ScreenEmptyListener_Access_Array_Access is access all ScreenEmptyListener_Access_Array;
   type ScreenEmptyListener_Access_Array_Access_Array is array (Natural range <>) of ScreenEmptyListener_Access_Array_Access;
   type ScreenEmptyListener_Access_Array_Access_Array_Access is access all ScreenEmptyListener_Access_Array_Access_Array;

   type ScreenEmptyListener is new Java_Object and ScreenListenerInterface with null record;

   procedure Initialize (This : in out ScreenEmptyListener'Class);
   function Create return ScreenEmptyListener_Access;
   procedure onFullScreen (This : in out ScreenEmptyListener; isFullScreen : Boolean);
   procedure onFullScreenDisplay (This : in out ScreenEmptyListener);

end org.allbinary.graphics.ScreenEmptyListener_Package;


