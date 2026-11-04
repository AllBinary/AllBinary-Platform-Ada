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

limited with org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package;
package org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References is
   type ColorFromEventUtil_Access is access all org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package.ColorFromEventUtil'Class;
   type ColorFromEventUtil_Access_Array is array (Natural range <>) of ColorFromEventUtil_Access;
   type ColorFromEventUtil_Access_Array_Access is access all ColorFromEventUtil_Access_Array;
   type ColorFromEventUtil_Access_Array_Access_Array is array (Natural range <>) of ColorFromEventUtil_Access_Array_Access;
   type ColorFromEventUtil_Access_Array_Access_Array_Access is access all ColorFromEventUtil_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References;

with org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorFromEventUtil_Access is org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References.ColorFromEventUtil_Access;
   function "=" (Left, Right : ColorFromEventUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References."=";
   subtype ColorFromEventUtil_Access_Array is org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References.ColorFromEventUtil_Access_Array;
   function "=" (Left, Right : ColorFromEventUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References."=";
   subtype ColorFromEventUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References.ColorFromEventUtil_Access_Array_Access;
   function "=" (Left, Right : ColorFromEventUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References."=";
   subtype ColorFromEventUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References.ColorFromEventUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFromEventUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References."=";
   subtype ColorFromEventUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References.ColorFromEventUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFromEventUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package_References."=";

   type ColorFromEventUtil is new Java_Object with record
      YELLOW : BasicColor_Access;
      COLOR_INT : Integer;
   end record;
   instance : ColorFromEventUtil_Access;

   procedure Initialize (This : in out ColorFromEventUtil'Class);
   function Create return ColorFromEventUtil_Access;
   function getInstance return ColorFromEventUtil_Access;
   function getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return BasicColor_Access;
   procedure getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);

end org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package;


