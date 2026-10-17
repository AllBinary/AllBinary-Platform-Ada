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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package org.allbinary.game.displayable.canvas.CanvasUtil_Package is

   package CommonPhoneStrings_Package renames org.allbinary.string_Id.CommonPhoneStrings_Package;

   type CanvasUtil is tagged;
   type CanvasUtil_Access is access all CanvasUtil'Class;
   type CanvasUtil_Access_Array is array (Natural range <>) of CanvasUtil_Access;
   type CanvasUtil_Access_Array_Access is access all CanvasUtil_Access_Array;

   type CanvasUtil is new Java_Object with null record;

   procedure Initialize (This : in out CanvasUtil'Class);
   function Create return CanvasUtil_Access;
   function getKeyName (key : Integer) return Unbounded_String;
   procedure getKeyName (key : Integer);

end org.allbinary.game.displayable.canvas.CanvasUtil_Package;


