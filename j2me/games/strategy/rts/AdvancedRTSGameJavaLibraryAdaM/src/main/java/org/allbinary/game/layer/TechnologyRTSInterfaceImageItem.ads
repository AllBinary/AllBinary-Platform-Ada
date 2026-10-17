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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.form.item.ABCustomImageItem_Package; use org.allbinary.graphics.form.item.ABCustomImageItem_Package;
with org.allbinary.logic.java.character_Id.CharArrayFactory_Package; use org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;

package org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package is

   package ABCustomImageItem_Package renames org.allbinary.graphics.form.item.ABCustomImageItem_Package;
   package CharArrayFactory_Package renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package PrimitiveLongUtil_Package renames org.allbinary.logic.math.PrimitiveLongUtil_Package;

   type TechnologyRTSInterfaceImageItem is tagged;
   type TechnologyRTSInterfaceImageItem_Access is access all TechnologyRTSInterfaceImageItem'Class;
   type TechnologyRTSInterfaceImageItem_Access_Array is array (Natural range <>) of TechnologyRTSInterfaceImageItem_Access;
   type TechnologyRTSInterfaceImageItem_Access_Array_Access is access all TechnologyRTSInterfaceImageItem_Access_Array;

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

   procedure Initialize (This : in out TechnologyRTSInterfaceImageItem'Class; label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; rtsInterface : RTSInterface_Access);
   function Create (label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; rtsInterface : RTSInterface_Access) return TechnologyRTSInterfaceImageItem_Access;
   procedure updateMeasurement (This : in out TechnologyRTSInterfaceImageItem; graphics : Graphics_Access);
   function getRtsInterface (This : in out TechnologyRTSInterfaceImageItem) return RTSInterface_Access;
   procedure getRtsInterface (This : in out TechnologyRTSInterfaceImageItem);
   procedure update (This : in out TechnologyRTSInterfaceImageItem);
   procedure paintXY (This : in out TechnologyRTSInterfaceImageItem; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.game.layer.TechnologyRTSInterfaceImageItem_Package;


