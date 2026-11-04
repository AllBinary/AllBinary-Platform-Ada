-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.PathAnimation_Package;
package org.allbinary.game.layer.PathAnimation_Package_References is
   type PathAnimation_Access is access all org.allbinary.game.layer.PathAnimation_Package.PathAnimation'Class;
   type PathAnimation_Access_Array is array (Natural range <>) of PathAnimation_Access;
   type PathAnimation_Access_Array_Access is access all PathAnimation_Access_Array;
   type PathAnimation_Access_Array_Access_Array is array (Natural range <>) of PathAnimation_Access_Array_Access;
   type PathAnimation_Access_Array_Access_Array_Access is access all PathAnimation_Access_Array_Access_Array;
end org.allbinary.game.layer.PathAnimation_Package_References;

with org.allbinary.game.layer.PathAnimation_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.layer.LinePathAnimation_Package;
with org.allbinary.game.layer.LinePathAnimation_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;

package org.allbinary.game.layer.PathAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   subtype LinePathAnimation_Access is org.allbinary.game.layer.LinePathAnimation_Package_References.LinePathAnimation_Access;
   use type LinePathAnimation_Access;
   subtype LinePathAnimation_Access_Array is org.allbinary.game.layer.LinePathAnimation_Package_References.LinePathAnimation_Access_Array;
   use type LinePathAnimation_Access_Array;
   subtype LinePathAnimation_Access_Array_Access is org.allbinary.game.layer.LinePathAnimation_Package_References.LinePathAnimation_Access_Array_Access;
   use type LinePathAnimation_Access_Array_Access;
   subtype LinePathAnimation_Access_Array_Access_Array is org.allbinary.game.layer.LinePathAnimation_Package_References.LinePathAnimation_Access_Array_Access_Array;
   use type LinePathAnimation_Access_Array_Access_Array;
   subtype LinePathAnimation_Access_Array_Access_Array_Access is org.allbinary.game.layer.LinePathAnimation_Package_References.LinePathAnimation_Access_Array_Access_Array_Access;
   use type LinePathAnimation_Access_Array_Access_Array_Access;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathAnimation_Access is org.allbinary.game.layer.PathAnimation_Package_References.PathAnimation_Access;
   function "=" (Left, Right : PathAnimation_Access) return Boolean renames org.allbinary.game.layer.PathAnimation_Package_References."=";
   subtype PathAnimation_Access_Array is org.allbinary.game.layer.PathAnimation_Package_References.PathAnimation_Access_Array;
   function "=" (Left, Right : PathAnimation_Access_Array) return Boolean renames org.allbinary.game.layer.PathAnimation_Package_References."=";
   subtype PathAnimation_Access_Array_Access is org.allbinary.game.layer.PathAnimation_Package_References.PathAnimation_Access_Array_Access;
   function "=" (Left, Right : PathAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathAnimation_Package_References."=";
   subtype PathAnimation_Access_Array_Access_Array is org.allbinary.game.layer.PathAnimation_Package_References.PathAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : PathAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathAnimation_Package_References."=";
   subtype PathAnimation_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathAnimation_Package_References.PathAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathAnimation_Package_References."=";

   type PathAnimation is new Animation with record
      logUtil : LogUtil_Access;
      linePathAnimation : LinePathAnimation_Access;
      pathFindingLayer : PathFindingLayerInterface_Access;
      allBinaryGameLayerManagerP : AllBinaryGameLayerManager_Access;
      startColor : BasicColor_Access;
      middleColor : BasicColor_Access;
      endColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out PathAnimation'Class; pathFindingLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; linePathAnimation_Param : access LinePathAnimation_Package.LinePathAnimation'Class);
   function Create (pathFindingLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; linePathAnimation_Param : access LinePathAnimation_Package.LinePathAnimation'Class) return PathAnimation_Access;
   procedure setAllBinaryGameLayerManager (This : in out PathAnimation; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure nextFrame (This : in out PathAnimation);
   procedure paintXY (This : in out PathAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.PathAnimation_Package;


