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

limited with org.allbinary.input.motion.button.TouchButton_Package;
package org.allbinary.input.motion.button.TouchButton_Package_References is
   type TouchButton_Access is access all org.allbinary.input.motion.button.TouchButton_Package.TouchButton'Class;
   type TouchButton_Access_Array is array (Natural range <>) of TouchButton_Access;
   type TouchButton_Access_Array_Access is access all TouchButton_Access_Array;
   type TouchButton_Access_Array_Access_Array is array (Natural range <>) of TouchButton_Access_Array_Access;
   type TouchButton_Access_Array_Access_Array_Access is access all TouchButton_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButton_Package_References;

with org.allbinary.input.motion.button.TouchButton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package_References;

package org.allbinary.input.motion.button.TouchButton_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype TouchButton_Access is org.allbinary.input.motion.button.TouchButton_Package_References.TouchButton_Access;
   function "=" (Left, Right : TouchButton_Access) return Boolean renames org.allbinary.input.motion.button.TouchButton_Package_References."=";
   subtype TouchButton_Access_Array is org.allbinary.input.motion.button.TouchButton_Package_References.TouchButton_Access_Array;
   function "=" (Left, Right : TouchButton_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButton_Package_References."=";
   subtype TouchButton_Access_Array_Access is org.allbinary.input.motion.button.TouchButton_Package_References.TouchButton_Access_Array_Access;
   function "=" (Left, Right : TouchButton_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButton_Package_References."=";
   subtype TouchButton_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButton_Package_References.TouchButton_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButton_Package_References."=";
   subtype TouchButton_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButton_Package_References.TouchButton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButton_Package_References."=";

   type TouchButton is new Paintable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      touchButtonInput : TouchButtonInput_Access;
      animationInterface : Animation_Access;
      hintAnimationInterface : Animation_Access;
      rawRectangle : Rectangle_Access;
      xBorder : Integer;
      yBorder : Integer;
      rectangleP : Rectangle_Access;
      cellPositionP : CellPosition_Access;
      animationX : Integer;
      animationY : Integer;
      hintAnimationY : Integer;
   end record;

   procedure Initialize (This : in out TouchButton'Class; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   function Create (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return TouchButton_Access;
   function createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return TouchButton_Access;
   procedure createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer);
   procedure paintHint (This : in out TouchButton; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out TouchButton; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateRectangle (This : in out TouchButton);
   function getCellPosition (This : in out TouchButton) return CellPosition_Access;
   function getRectangle (This : in out TouchButton) return Rectangle_Access;
   function getTouchButtonInput (This : in out TouchButton) return TouchButtonInput_Access;
   function toString (This : in out TouchButton) return Unbounded_String;

end org.allbinary.input.motion.button.TouchButton_Package;


