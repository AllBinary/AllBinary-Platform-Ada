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
with org.allbinary.graphics.paint.LocationPaintableInterface_Package; use org.allbinary.graphics.paint.LocationPaintableInterface_Package;

package org.allbinary.graphics.paint.LocationPaintable_Package is


   type LocationPaintable is tagged;
   type LocationPaintable_Access is access all LocationPaintable'Class;
   type LocationPaintable_Access_Array is array (Natural range <>) of LocationPaintable_Access;
   type LocationPaintable_Access_Array_Access is access all LocationPaintable_Access_Array;

   type LocationPaintable is new LocationPaintableInterface with null record;
   instance : LocationPaintable_Access;

   procedure Initialize (This : in out LocationPaintable'Class);
   function Create return LocationPaintable_Access;
   function getInstance return LocationPaintable_Access;
   procedure paintXY (This : in out LocationPaintable; graphics_Param : access Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.paint.LocationPaintable_Package;


