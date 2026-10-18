--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.animation.vector.RectangleFilledAnimation_Package; use org.allbinary.animation.vector.RectangleFilledAnimation_Package;

package org.allbinary.animation.vector.ARectangleFilledAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;

   type ARectangleFilledAnimation is tagged;
   type ARectangleFilledAnimation_Access is access all ARectangleFilledAnimation'Class;
   type ARectangleFilledAnimation_Access_Array is array (Natural range <>) of ARectangleFilledAnimation_Access;
   type ARectangleFilledAnimation_Access_Array_Access is access all ARectangleFilledAnimation_Access_Array;

   type ARectangleFilledAnimation is new RectangleFilledAnimation with record
      x : Integer;
      y : Integer;
   end record;

   procedure Initialize (This : in out ARectangleFilledAnimation'Class);
   function Create return ARectangleFilledAnimation_Access;
   procedure nextFrame (This : in out ARectangleFilledAnimation);
   procedure paintXY (This : in out ARectangleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; unusedX : Integer; unusedY : Integer);

end org.allbinary.animation.vector.ARectangleFilledAnimation_Package;


