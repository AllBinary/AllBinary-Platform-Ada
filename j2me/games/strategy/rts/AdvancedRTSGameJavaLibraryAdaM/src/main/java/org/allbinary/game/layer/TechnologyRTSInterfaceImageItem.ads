-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package;
package org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References is
   type TechnologyRTSInterfaceImageItem_Access is access all org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package.TechnologyRTSInterfaceImageItem'Class;
   type TechnologyRTSInterfaceImageItem_Access_Array is array (Natural range <>) of TechnologyRTSInterfaceImageItem_Access;
   type TechnologyRTSInterfaceImageItem_Access_Array_Access is access all TechnologyRTSInterfaceImageItem_Access_Array;
   type TechnologyRTSInterfaceImageItem_Access_Array_Access_Array is array (Natural range <>) of TechnologyRTSInterfaceImageItem_Access_Array_Access;
   type TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access is access all TechnologyRTSInterfaceImageItem_Access_Array_Access_Array;
   type TechnologyRTSInterfaceImageItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TechnologyRTSInterfaceImageItem_Access_Array_Access;
   end record;
   function Java_Box (Value : TechnologyRTSInterfaceImageItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TechnologyRTSInterfaceImageItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TechnologyRTSInterfaceImageItem_Access_Array_Access is (if Value /= null and then Value.all in TechnologyRTSInterfaceImageItem_Access_Array_Object'Class then TechnologyRTSInterfaceImageItem_Access_Array_Object'Class (Value.all).Value else null);
   type TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Object'Class then TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References;

with org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References;
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
with org.allbinary.graphics.form.item.ABCustomImageItem_Package; use org.allbinary.graphics.form.item.ABCustomImageItem_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
limited with org.allbinary.game.layer.RTSInterface_Package;
with org.allbinary.game.layer.RTSInterface_Package_References;

package org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ABCustomImageItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomImageItem_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
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
   subtype RTSInterface_Access is org.allbinary.game.layer.RTSInterface_Package_References.RTSInterface_Access;
   use type RTSInterface_Access;
   subtype RTSInterface_Access_Array is org.allbinary.game.layer.RTSInterface_Package_References.RTSInterface_Access_Array;
   use type RTSInterface_Access_Array;
   subtype RTSInterface_Access_Array_Access is org.allbinary.game.layer.RTSInterface_Package_References.RTSInterface_Access_Array_Access;
   use type RTSInterface_Access_Array_Access;
   subtype RTSInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSInterface_Package_References.RTSInterface_Access_Array_Access_Array;
   use type RTSInterface_Access_Array_Access_Array;
   subtype RTSInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSInterface_Package_References.RTSInterface_Access_Array_Access_Array_Access;
   use type RTSInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TechnologyRTSInterfaceImageItem_Access is org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.TechnologyRTSInterfaceImageItem_Access;
   function "=" (Left, Right : TechnologyRTSInterfaceImageItem_Access) return Boolean renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References."=";
   subtype TechnologyRTSInterfaceImageItem_Access_Array is org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.TechnologyRTSInterfaceImageItem_Access_Array;
   function "=" (Left, Right : TechnologyRTSInterfaceImageItem_Access_Array) return Boolean renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References."=";
   subtype TechnologyRTSInterfaceImageItem_Access_Array_Access is org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.TechnologyRTSInterfaceImageItem_Access_Array_Access;
   function "=" (Left, Right : TechnologyRTSInterfaceImageItem_Access_Array_Access) return Boolean renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References."=";
   function Java_Box (Value : TechnologyRTSInterfaceImageItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.Java_Box;
   function Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array (Value : access Java_Object'Class) return TechnologyRTSInterfaceImageItem_Access_Array_Access renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array;
   subtype TechnologyRTSInterfaceImageItem_Access_Array_Access_Array is org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.TechnologyRTSInterfaceImageItem_Access_Array_Access_Array;
   function "=" (Left, Right : TechnologyRTSInterfaceImageItem_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References."=";
   subtype TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access is org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References."=";
   function Java_Box (Value : TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.Java_Box;
   function Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array_Access_Array (Value : access Java_Object'Class) return TechnologyRTSInterfaceImageItem_Access_Array_Access_Array_Access renames org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package_References.Java_Unbox_TechnologyRTSInterfaceImageItem_Access_Array_Access_Array;

   type TechnologyRTSInterfaceImageItem is new ABCustomImageItem and UpdateMyFontInterface with record
      rtsInterface : RTSInterface_Access;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      LEVEL : Unbounded_String;
      COST : Unbounded_String;
      DOLLAR : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      costString : Character_Array_Access;
      costLength : Integer;
      levelString : Character_Array_Access;
      levelLength : Integer;
      adjustedCostLabelY : Integer;
      adjustedCostX : Integer;
      adjustedCostY : Integer;
      adjustedLevelX : Integer;
      adjustedLevelY : Integer;
   end record;

   procedure Initialize (This : in out TechnologyRTSInterfaceImageItem'Class; label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; rtsInterface_Param : access RTSInterface_Package.RTSInterface'Class);
   function Create (label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; rtsInterface_Param : access RTSInterface_Package.RTSInterface'Class) return TechnologyRTSInterfaceImageItem_Access;
   procedure updateMeasurement (This : in out TechnologyRTSInterfaceImageItem; graphics_Param : access Graphics_Package.Graphics'Class);
   function getRtsInterface (This : in out TechnologyRTSInterfaceImageItem) return RTSInterface_Access;
   procedure update (This : in out TechnologyRTSInterfaceImageItem);
   procedure paintXY (This : in out TechnologyRTSInterfaceImageItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package;


