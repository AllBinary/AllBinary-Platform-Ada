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

limited with org.allbinary.game.layer.item.RTSLayerCostAnimation_Package;
package org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References is
   type RTSLayerCostAnimation_Access is access all org.allbinary.game.layer.item.RTSLayerCostAnimation_Package.RTSLayerCostAnimation'Class;
   type RTSLayerCostAnimation_Access_Array is array (Natural range <>) of RTSLayerCostAnimation_Access;
   type RTSLayerCostAnimation_Access_Array_Access is access all RTSLayerCostAnimation_Access_Array;
   type RTSLayerCostAnimation_Access_Array_Access_Array is array (Natural range <>) of RTSLayerCostAnimation_Access_Array_Access;
   type RTSLayerCostAnimation_Access_Array_Access_Array_Access is access all RTSLayerCostAnimation_Access_Array_Access_Array;
end org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References;

with org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References;
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
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References;
with org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package; use org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

package org.allbinary.game.layer.item.RTSLayerCostAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CostLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;
   package TechEventListenerInterface_Package renames Standard.org.allbinary.game.rts.technology.event.TechEventListenerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
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
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype CostLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References.CostLayerInterfaceFactoryInterface_Access;
   use type CostLayerInterfaceFactoryInterface_Access;
   subtype CostLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References.CostLayerInterfaceFactoryInterface_Access_Array;
   use type CostLayerInterfaceFactoryInterface_Access_Array;
   subtype CostLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References.CostLayerInterfaceFactoryInterface_Access_Array_Access;
   use type CostLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype CostLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References.CostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package_References.CostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayerCostAnimation_Access is org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References.RTSLayerCostAnimation_Access;
   function "=" (Left, Right : RTSLayerCostAnimation_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References."=";
   subtype RTSLayerCostAnimation_Access_Array is org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References.RTSLayerCostAnimation_Access_Array;
   function "=" (Left, Right : RTSLayerCostAnimation_Access_Array) return Boolean renames org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References."=";
   subtype RTSLayerCostAnimation_Access_Array_Access is org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References.RTSLayerCostAnimation_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCostAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References."=";
   subtype RTSLayerCostAnimation_Access_Array_Access_Array is org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References.RTSLayerCostAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerCostAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References."=";
   subtype RTSLayerCostAnimation_Access_Array_Access_Array_Access is org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References.RTSLayerCostAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCostAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerCostAnimation_Package_References."=";

   type RTSLayerCostAnimation is new Animation_Package.Animation and TechEventListenerInterface and UpdateMyFontInterface with record
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


