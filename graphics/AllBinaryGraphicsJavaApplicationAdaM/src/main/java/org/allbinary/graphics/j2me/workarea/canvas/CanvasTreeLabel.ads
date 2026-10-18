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

package org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package is


   type CanvasTreeLabel is tagged;
   type CanvasTreeLabel_Access is access all CanvasTreeLabel'Class;
   type CanvasTreeLabel_Access_Array is array (Natural range <>) of CanvasTreeLabel_Access;
   type CanvasTreeLabel_Access_Array_Access is access all CanvasTreeLabel_Access_Array;
   type CanvasTreeLabel_Access_Array_Access_Array is array (Natural range <>) of CanvasTreeLabel_Access_Array_Access;
   type CanvasTreeLabel_Access_Array_Access_Array_Access is access all CanvasTreeLabel_Access_Array_Access_Array;

   type CanvasTreeLabel is new Java_Object with record
      label : Unbounded_String;
   end record;

   procedure Initialize (This : in out CanvasTreeLabel'Class; str : Unbounded_String);
   function Create (str : Unbounded_String) return CanvasTreeLabel_Access;
   function toString (This : in out CanvasTreeLabel) return Unbounded_String;

end org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;


