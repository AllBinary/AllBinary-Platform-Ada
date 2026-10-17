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

package org.allbinary.graphics.ScreenListenerInterface_Package is


   type ScreenListenerInterface is interface;
   type ScreenListenerInterface_Access is access all ScreenListenerInterface'Class;
   type ScreenListenerInterface_Access_Array is array (Natural range <>) of ScreenListenerInterface_Access;
   type ScreenListenerInterface_Access_Array_Access is access all ScreenListenerInterface_Access_Array;
   procedure onFullScreen (This : in out ScreenListenerInterface; isFullScreen : Boolean) is abstract;
   procedure onFullScreenDisplay (This : in out ScreenListenerInterface) is abstract;

end org.allbinary.graphics.ScreenListenerInterface_Package;


