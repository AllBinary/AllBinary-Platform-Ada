--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with android.view.KeyEvent_Package; use android.view.KeyEvent_Package;

package org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package is

   package KeyEvent_Package renames Standard.android.view.KeyEvent_Package;

   type AndroidNumberKeyToJ2MECanvasNumberKey is tagged;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey'Class;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array is array (Natural range <>) of AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   type AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array_Access is access all AndroidNumberKeyToJ2MECanvasNumberKey_Access_Array;

   type AndroidNumberKeyToJ2MECanvasNumberKey is new Java_Object with null record;
   androidtoJavaMicroEditionKeyMap : Integer_Array_Access;

   procedure Initialize (This : in out AndroidNumberKeyToJ2MECanvasNumberKey'Class);
   function Create return AndroidNumberKeyToJ2MECanvasNumberKey_Access;
   procedure init;
   function getKey (key : Integer) return Integer;
   procedure getKey (key : Integer);

end org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey_Package;


