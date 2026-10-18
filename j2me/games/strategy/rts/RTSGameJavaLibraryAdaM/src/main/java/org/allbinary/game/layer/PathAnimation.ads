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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.LinePathAnimation_Package; use org.allbinary.game.layer.LinePathAnimation_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

package org.allbinary.game.layer.PathAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PathAnimation is tagged;
   type PathAnimation_Access is access all PathAnimation'Class;
   type PathAnimation_Access_Array is array (Natural range <>) of PathAnimation_Access;
   type PathAnimation_Access_Array_Access is access all PathAnimation_Access_Array;
   type PathAnimation_Access_Array_Access_Array is array (Natural range <>) of PathAnimation_Access_Array_Access;
   type PathAnimation_Access_Array_Access_Array_Access is access all PathAnimation_Access_Array_Access_Array;

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


