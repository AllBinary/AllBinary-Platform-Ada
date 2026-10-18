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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;

package body org.allbinary.game.layer.item.RTSLayerTextAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   procedure Initialize_Fields (This : in out RTSLayerTextAnimation'Class) is
   begin
      null;
      
      
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (RTSLayerTextAnimation_Access'(This'Unchecked_Access)));
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerTextAnimation'Class; text : Unbounded_String; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.text := text;
        This.image := image;
   end Initialize;

   function Create (text : Unbounded_String; image_Param : access Image_Package.Image'Class) return RTSLayerTextAnimation_Access is
      This : constant RTSLayerTextAnimation_Access := new RTSLayerTextAnimation;
   begin
      RTSLayerTextAnimation_Package.Initialize (This.all, text, image_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out RTSLayerTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paintXY (This : in out RTSLayerTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      adjustedCostY : Integer;
   begin
        This.myFontProcessor.process (graphics);
        Animation (This).paintXY (graphics, x, y);
        adjustedCostY := (This.image.getHeight) - (This.fontHeight);
        graphics.drawString (This.text, x, (y) + (adjustedCostY), 0);
   end paintXY;

end org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;


