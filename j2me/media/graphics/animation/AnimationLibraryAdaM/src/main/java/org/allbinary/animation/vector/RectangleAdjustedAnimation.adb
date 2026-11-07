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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package;

package body org.allbinary.animation.vector.RectangleAdjustedAnimation_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out RectangleAdjustedAnimation'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleAdjustedAnimation'Class; width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.width := width;
        This.height := height;
        This.offsetX := offsetX;
        This.offsetY := offsetY;
        RectangleAdjustedAnimation'Class (This).setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleAdjustedAnimation_Access is
      This : constant RectangleAdjustedAnimation_Access := new RectangleAdjustedAnimation;
   begin
      RectangleAdjustedAnimation_Package.Initialize (This.all, width, height, offsetX, offsetY, basicColor_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out RectangleAdjustedAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out RectangleAdjustedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, RectangleAdjustedAnimation'Class (This).getBasicColorP, RectangleAdjustedAnimation'Class (This).getColor);
        graphics.drawRect ((x) + (This.offsetX), (y) + (This.offsetY), This.width, This.height);
   end paintXY;

   procedure setWidth (This : in out RectangleAdjustedAnimation; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   procedure setHeight (This : in out RectangleAdjustedAnimation; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   procedure setOffsetX (This : in out RectangleAdjustedAnimation; offsetX : Integer) is
   begin
        This.offsetX := offsetX;
   end setOffsetX;

   procedure setOffsetY (This : in out RectangleAdjustedAnimation; offsetY : Integer) is
   begin
        This.offsetY := offsetY;
   end setOffsetY;

   function getBasicColorP (This : in out RectangleAdjustedAnimation) return BasicColor_Access is
   begin
        return Animation_Package.Animation (This).getBasicColorP;
   end getBasicColorP;

   procedure setBasicColorP (This : in out RectangleAdjustedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        Animation_Package.Animation (This).setBasicColorP (basicColor);
   end setBasicColorP;

end org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;


