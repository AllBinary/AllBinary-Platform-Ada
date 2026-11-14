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

with AllBinary_Java;
limited with org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;
package org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References is
   type RTSLayerTextAnimation_Access is access all org.allbinary.game.layer.item.RTSLayerTextAnimation_Package.RTSLayerTextAnimation'Class;
   type RTSLayerTextAnimation_Access_Array is array (Natural range <>) of RTSLayerTextAnimation_Access;
   type RTSLayerTextAnimation_Access_Array_Access is access all RTSLayerTextAnimation_Access_Array;
   type RTSLayerTextAnimation_Access_Array_Access_Array is array (Natural range <>) of RTSLayerTextAnimation_Access_Array_Access;
   type RTSLayerTextAnimation_Access_Array_Access_Array_Access is access all RTSLayerTextAnimation_Access_Array_Access_Array;
   type RTSLayerTextAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerTextAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerTextAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerTextAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerTextAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerTextAnimation_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerTextAnimation_Access_Array_Object'Class then RTSLayerTextAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayerTextAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerTextAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerTextAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerTextAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerTextAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerTextAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerTextAnimation_Access_Array_Access_Array_Object'Class then RTSLayerTextAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References;

with org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package org.allbinary.game.layer.item.RTSLayerTextAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayerTextAnimation_Access is org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.RTSLayerTextAnimation_Access;
   function "=" (Left, Right : RTSLayerTextAnimation_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References."=";
   subtype RTSLayerTextAnimation_Access_Array is org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.RTSLayerTextAnimation_Access_Array;
   function "=" (Left, Right : RTSLayerTextAnimation_Access_Array) return Boolean renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References."=";
   subtype RTSLayerTextAnimation_Access_Array_Access is org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.RTSLayerTextAnimation_Access_Array_Access;
   function "=" (Left, Right : RTSLayerTextAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References."=";
   function Java_Box (Value : RTSLayerTextAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.Java_Box;
   function Java_Unbox_RTSLayerTextAnimation_Access_Array (Value : access Java_Object'Class) return RTSLayerTextAnimation_Access_Array_Access renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.Java_Unbox_RTSLayerTextAnimation_Access_Array;
   subtype RTSLayerTextAnimation_Access_Array_Access_Array is org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.RTSLayerTextAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerTextAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References."=";
   subtype RTSLayerTextAnimation_Access_Array_Access_Array_Access is org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.RTSLayerTextAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerTextAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References."=";
   function Java_Box (Value : RTSLayerTextAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.Java_Box;
   function Java_Unbox_RTSLayerTextAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayerTextAnimation_Access_Array_Access_Array_Access renames org.allbinary.game.layer.item.RTSLayerTextAnimation_Package_References.Java_Unbox_RTSLayerTextAnimation_Access_Array_Access_Array;

   type RTSLayerTextAnimation is new Animation_Package.Animation and UpdateMyFontInterface with record
      image : Image_Access;
      text : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      fontHeight : Integer;
   end record;

   procedure Initialize (This : in out RTSLayerTextAnimation'Class; text : Unbounded_String; image_Param : access Image_Package.Image'Class);
   function Create (text : Unbounded_String; image_Param : access Image_Package.Image'Class) return RTSLayerTextAnimation_Access;
   procedure updateMeasurement (This : in out RTSLayerTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintXY (This : in out RTSLayerTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;


