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

limited with org.allbinary.input.motion.button.FullTouchButton_Package;
package org.allbinary.input.motion.button.FullTouchButton_Package_References is
   type FullTouchButton_Access is access all org.allbinary.input.motion.button.FullTouchButton_Package.FullTouchButton'Class;
   type FullTouchButton_Access_Array is array (Natural range <>) of FullTouchButton_Access;
   type FullTouchButton_Access_Array_Access is access all FullTouchButton_Access_Array;
   type FullTouchButton_Access_Array_Access_Array is array (Natural range <>) of FullTouchButton_Access_Array_Access;
   type FullTouchButton_Access_Array_Access_Array_Access is access all FullTouchButton_Access_Array_Access_Array;
end org.allbinary.input.motion.button.FullTouchButton_Package_References;

with org.allbinary.input.motion.button.FullTouchButton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package_References;

package org.allbinary.input.motion.button.FullTouchButton_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   use type CellPosition_Access;
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   use type CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   use type CellPosition_Access_Array_Access;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   use type CellPosition_Access_Array_Access_Array;
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   use type CellPosition_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   subtype TouchButtonResource_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access;
   use type TouchButtonResource_Access;
   subtype TouchButtonResource_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array;
   use type TouchButtonResource_Access_Array;
   subtype TouchButtonResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access;
   use type TouchButtonResource_Access_Array_Access;
   subtype TouchButtonResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array;
   use type TouchButtonResource_Access_Array_Access_Array;
   subtype TouchButtonResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array_Access;
   use type TouchButtonResource_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FullTouchButton_Access is org.allbinary.input.motion.button.FullTouchButton_Package_References.FullTouchButton_Access;
   function "=" (Left, Right : FullTouchButton_Access) return Boolean renames org.allbinary.input.motion.button.FullTouchButton_Package_References."=";
   subtype FullTouchButton_Access_Array is org.allbinary.input.motion.button.FullTouchButton_Package_References.FullTouchButton_Access_Array;
   function "=" (Left, Right : FullTouchButton_Access_Array) return Boolean renames org.allbinary.input.motion.button.FullTouchButton_Package_References."=";
   subtype FullTouchButton_Access_Array_Access is org.allbinary.input.motion.button.FullTouchButton_Package_References.FullTouchButton_Access_Array_Access;
   function "=" (Left, Right : FullTouchButton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.FullTouchButton_Package_References."=";
   subtype FullTouchButton_Access_Array_Access_Array is org.allbinary.input.motion.button.FullTouchButton_Package_References.FullTouchButton_Access_Array_Access_Array;
   function "=" (Left, Right : FullTouchButton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.FullTouchButton_Package_References."=";
   subtype FullTouchButton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.FullTouchButton_Package_References.FullTouchButton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullTouchButton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.FullTouchButton_Package_References."=";

   type FullTouchButton is new TouchButton with null record;

   procedure Initialize (This : in out FullTouchButton'Class; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   function Create (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access;
   function createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access;
   procedure createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   procedure updateRectangle (This : in out FullTouchButton);

end org.allbinary.input.motion.button.FullTouchButton_Package;


