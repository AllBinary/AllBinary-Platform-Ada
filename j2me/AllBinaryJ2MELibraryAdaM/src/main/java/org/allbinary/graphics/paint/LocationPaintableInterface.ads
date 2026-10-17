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

package org.allbinary.graphics.paint.LocationPaintableInterface_Package is


   type LocationPaintableInterface is interface;
   type LocationPaintableInterface_Access is access all LocationPaintableInterface'Class;
   type LocationPaintableInterface_Access_Array is array (Natural range <>) of LocationPaintableInterface_Access;
   type LocationPaintableInterface_Access_Array_Access is access all LocationPaintableInterface_Access_Array;
   procedure paintXY (This : in out LocationPaintableInterface; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is abstract;

end org.allbinary.graphics.paint.LocationPaintableInterface_Package;


