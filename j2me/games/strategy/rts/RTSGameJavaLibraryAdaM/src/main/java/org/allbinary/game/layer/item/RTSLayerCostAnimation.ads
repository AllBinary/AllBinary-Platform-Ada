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
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package; use org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.game.layer.item.RTSLayerCostAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CostLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;
   package TechEventListenerInterface_Package renames Standard.org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type RTSLayerCostAnimation is tagged;
   type RTSLayerCostAnimation_Access is access all RTSLayerCostAnimation'Class;
   type RTSLayerCostAnimation_Access_Array is array (Natural range <>) of RTSLayerCostAnimation_Access;
   type RTSLayerCostAnimation_Access_Array_Access is access all RTSLayerCostAnimation_Access_Array;

   type RTSLayerCostAnimation is new Animation and TechEventListenerInterface and UpdateMyFontInterface with record
      logUtil : LogUtil_Access;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      DOLLAR : Unbounded_String;
      image : Image_Access;
      layerInterfaceFactoryInterface : CostLayerInterfaceFactoryInterface_Access;
      myFontProcessor : MyFontProcessor_Access;
      costString : Character_Array_Access;
      len : Integer;
      adjustedCostX : Integer;
      fontHeight : Integer;
   end record;

   procedure Initialize (This : in out RTSLayerCostAnimation'Class; image_Param : access Image_Package.Image'Class; layerInterfaceFactoryInterface_Param : access CostLayerInterfaceFactoryInterface_Package.CostLayerInterfaceFactoryInterface'Class);
   function Create (image_Param : access Image_Package.Image'Class; layerInterfaceFactoryInterface_Param : access CostLayerInterfaceFactoryInterface_Package.CostLayerInterfaceFactoryInterface'Class) return RTSLayerCostAnimation_Access;
   procedure updateMeasurement (This : in out RTSLayerCostAnimation; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onEvent (This : in out RTSLayerCostAnimation; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onTechEvent (This : in out RTSLayerCostAnimation; event_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure update (This : in out RTSLayerCostAnimation);
   procedure paintXY (This : in out RTSLayerCostAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.item.RTSLayerCostAnimation_Package;


