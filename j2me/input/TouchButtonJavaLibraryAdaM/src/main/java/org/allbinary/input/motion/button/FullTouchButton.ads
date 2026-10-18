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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.FullTouchButton_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type FullTouchButton is tagged;
   type FullTouchButton_Access is access all FullTouchButton'Class;
   type FullTouchButton_Access_Array is array (Natural range <>) of FullTouchButton_Access;
   type FullTouchButton_Access_Array_Access is access all FullTouchButton_Access_Array;
   type FullTouchButton_Access_Array_Access_Array is array (Natural range <>) of FullTouchButton_Access_Array_Access;
   type FullTouchButton_Access_Array_Access_Array_Access is access all FullTouchButton_Access_Array_Access_Array;

   type FullTouchButton is new TouchButton with null record;

   procedure Initialize (This : in out FullTouchButton'Class; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   function Create (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access;
   function createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access;
   procedure createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   procedure updateRectangle (This : in out FullTouchButton);

end org.allbinary.input.motion.button.FullTouchButton_Package;


