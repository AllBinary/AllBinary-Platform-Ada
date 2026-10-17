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
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;

package org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package is


   type ScreenRepaintUtil is tagged;
   type ScreenRepaintUtil_Access is access all ScreenRepaintUtil'Class;
   type ScreenRepaintUtil_Access_Array is array (Natural range <>) of ScreenRepaintUtil_Access;
   type ScreenRepaintUtil_Access_Array_Access is access all ScreenRepaintUtil_Access_Array;

   type ScreenRepaintUtil is new Java_Object with null record;

   procedure Initialize (This : in out ScreenRepaintUtil'Class);
   function Create return ScreenRepaintUtil_Access;
   procedure repaint (displayable : Displayable_Access);

end org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;


