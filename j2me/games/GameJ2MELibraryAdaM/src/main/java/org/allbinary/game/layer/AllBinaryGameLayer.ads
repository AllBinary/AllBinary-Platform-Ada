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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package; use org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEventListenerInterface_Package; use org.allbinary.view.event.ViewPositionEventListenerInterface_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.game.layer.GameLayerUtil_Package; use org.allbinary.game.layer.GameLayerUtil_Package;

package org.allbinary.game.layer.AllBinaryGameLayer_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionEvent_Package renames Standard.org.allbinary.view.event.ViewPositionEvent_Package;
   package ViewPositionEventListenerInterface_Package renames Standard.org.allbinary.view.event.ViewPositionEventListenerInterface_Package;

   type AllBinaryGameLayer is tagged;
   type AllBinaryGameLayer_Access is access all AllBinaryGameLayer'Class;
   type AllBinaryGameLayer_Access_Array is array (Natural range <>) of AllBinaryGameLayer_Access;
   type AllBinaryGameLayer_Access_Array_Access is access all AllBinaryGameLayer_Access_Array;

   type AllBinaryGameLayer is new AllBinaryLayer and ViewPositionEventListenerInterface and OpenGLSurfaceChangedInterface with record
      commonStrings : CommonStrings_Access;
      basicSetColorUtil : BasicColorSetUtil_Access;
      RED : BasicColor_Access;
      paintable : Paintable_Access;
      gameKeyEventList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AllBinaryGameLayer'Class; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AllBinaryGameLayer_Access;
   procedure set (This : in out AllBinaryGameLayer; gl_Param : access GL_Package.GL'Class);
   procedure move (This : in out AllBinaryGameLayer);
   function getGameKeyEventList (This : in out AllBinaryGameLayer) return BasicArrayList_Access;
   procedure processInput (This : in out AllBinaryGameLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure processTick (This : in out AllBinaryGameLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure onEvent (This : in out AllBinaryGameLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onViewPositionChangeEvent (This : in out AllBinaryGameLayer);
   procedure onChangeEvent (This : in out AllBinaryGameLayer; layerManagerEvent_Param : access ViewPositionEvent_Package.ViewPositionEvent'Class);
   procedure paintFirst (This : in out AllBinaryGameLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintDebug (This : in out AllBinaryGameLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setWidth (This : in out AllBinaryGameLayer; width : Integer);
   procedure setHeight (This : in out AllBinaryGameLayer; height : Integer);

end org.allbinary.game.layer.AllBinaryGameLayer_Package;


