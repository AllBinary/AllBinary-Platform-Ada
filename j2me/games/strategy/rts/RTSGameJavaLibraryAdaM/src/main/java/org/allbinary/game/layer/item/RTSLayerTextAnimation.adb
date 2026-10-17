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


package body org.allbinary.game.layer.item.RTSLayerTextAnimation_Package is

   procedure Initialize_Fields (This : in out RTSLayerTextAnimation'Class) is
   begin
      null;
      
      
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerTextAnimation'Class; text : Unbounded_String; image : Image_Access) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.text := text;
        This.image := image;
   end Initialize;

   function Create (text : Unbounded_String; image : Image_Access) return RTSLayerTextAnimation_Access is
      This : constant RTSLayerTextAnimation_Access := new RTSLayerTextAnimation;
   begin
      Initialize (This.all, text, image);
      return This;
   end Create;

   procedure updateMeasurement (This : in out RTSLayerTextAnimation; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paintXY (This : in out RTSLayerTextAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      adjustedCostY : Integer;
   begin
        This.myFontProcessor.process (graphics);
        Animation (This).paintXY (graphics, x, y);
        adjustedCostY := (This.image.getHeight) - (This.fontHeight);
        graphics.drawString (This.text, x, (y) + (adjustedCostY), 0);
   end paintXY;

end org.allbinary.game.layer.item.RTSLayerTextAnimation_Package;


