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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;

package org.allbinary.game.layer.item.RTSLayerTextAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;

   type RTSLayerTextAnimation is tagged;
   type RTSLayerTextAnimation_Access is access all RTSLayerTextAnimation'Class;
   type RTSLayerTextAnimation_Access_Array is array (Natural range <>) of RTSLayerTextAnimation_Access;
   type RTSLayerTextAnimation_Access_Array_Access is access all RTSLayerTextAnimation_Access_Array;

   type RTSLayerTextAnimation is new Animation and UpdateMyFontInterface with record
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


