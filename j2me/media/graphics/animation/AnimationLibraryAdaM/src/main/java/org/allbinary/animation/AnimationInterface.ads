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

package org.allbinary.animation.AnimationInterface_Package is

   package LocationPaintableInterface_Package renames Standard.org.allbinary.graphics.paint.LocationPaintableInterface_Package;

   type AnimationInterface is interface and LocationPaintableInterface;
   type AnimationInterface_Access is access all AnimationInterface'Class;
   type AnimationInterface_Access_Array is array (Natural range <>) of AnimationInterface_Access;
   type AnimationInterface_Access_Array_Access is access all AnimationInterface_Access_Array;
   procedure nextFrame (This : in out AnimationInterface) is abstract;
   procedure paintThreedXYZ (This : in out AnimationInterface; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is abstract;

end org.allbinary.animation.AnimationInterface_Package;


