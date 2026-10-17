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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.paint.LocationPaintable_Package; use org.allbinary.graphics.paint.LocationPaintable_Package;

package org.allbinary.graphics.paint.StringLocationPaintable_Package is


   type StringLocationPaintable is tagged;
   type StringLocationPaintable_Access is access all StringLocationPaintable'Class;
   type StringLocationPaintable_Access_Array is array (Natural range <>) of StringLocationPaintable_Access;
   type StringLocationPaintable_Access_Array_Access is access all StringLocationPaintable_Access_Array;

   type StringLocationPaintable is new LocationPaintable with record
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out StringLocationPaintable'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return StringLocationPaintable_Access;
   procedure paintXY (This : in out StringLocationPaintable; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.paint.StringLocationPaintable_Package;


