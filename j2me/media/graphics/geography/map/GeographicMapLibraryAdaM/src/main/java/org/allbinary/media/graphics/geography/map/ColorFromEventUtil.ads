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
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package is

   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;

   type ColorFromEventUtil is tagged;
   type ColorFromEventUtil_Access is access all ColorFromEventUtil'Class;
   type ColorFromEventUtil_Access_Array is array (Natural range <>) of ColorFromEventUtil_Access;
   type ColorFromEventUtil_Access_Array_Access is access all ColorFromEventUtil_Access_Array;

   type ColorFromEventUtil is new Java_Object with record
      YELLOW : BasicColor_Access;
      COLOR_INT : Integer;
   end record;
   instance : ColorFromEventUtil_Access;

   procedure Initialize (This : in out ColorFromEventUtil'Class);
   function Create return ColorFromEventUtil_Access;
   function getInstance return ColorFromEventUtil_Access;
   procedure getInstance;
   function getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface : AllBinaryGameCanvas_Access) return BasicColor_Access;
   procedure getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface : AllBinaryGameCanvas_Access);

end org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package;


