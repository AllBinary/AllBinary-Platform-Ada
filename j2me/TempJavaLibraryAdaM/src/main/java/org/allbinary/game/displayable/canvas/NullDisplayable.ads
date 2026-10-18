--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.game.displayable.canvas.NullDisplayable_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type NullDisplayable is tagged;
   type NullDisplayable_Access is access all NullDisplayable'Class;
   type NullDisplayable_Access_Array is array (Natural range <>) of NullDisplayable_Access;
   type NullDisplayable_Access_Array_Access is access all NullDisplayable_Access_Array;

   type NullDisplayable is new Canvas with null record;
   SINGLETON : NullDisplayable_Access;

   procedure Initialize (This : in out NullDisplayable'Class);
   function Create return NullDisplayable_Access;
   function getInstance return NullDisplayable_Access;
   procedure paint (This : in out NullDisplayable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.NullDisplayable_Package;


