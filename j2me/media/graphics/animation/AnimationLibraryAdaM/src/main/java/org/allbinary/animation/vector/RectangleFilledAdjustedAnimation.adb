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


package body org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package is

   procedure Initialize_Fields (This : in out RectangleFilledAdjustedAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleFilledAdjustedAnimation'Class; width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor : BasicColor_Access) is
   begin
        RectangleFilledAnimation_Package.Initialize (This, width, height, basicColor);
        Initialize_Fields (This);
        This.offsetX := offsetX;
        This.offsetY := offsetY;
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor : BasicColor_Access) return RectangleFilledAdjustedAnimation_Access is
      This : constant RectangleFilledAdjustedAnimation_Access := new RectangleFilledAdjustedAnimation;
   begin
      Initialize (This.all, width, height, offsetX, offsetY, basicColor);
      return This;
   end Create;

   procedure nextFrame (This : in out RectangleFilledAdjustedAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out RectangleFilledAdjustedAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
        RectangleFilledAnimation (This).paintXY (graphics, (x) + (This.offsetX), (y) + (This.offsetY));
   end paintXY;

   procedure setOffsetX (This : in out RectangleFilledAdjustedAnimation; offsetX : Integer) is
   begin
        This.offsetX := offsetX;
   end setOffsetX;

   procedure setOffsetY (This : in out RectangleFilledAdjustedAnimation; offsetY : Integer) is
   begin
        This.offsetY := offsetY;
   end setOffsetY;

end org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package;


