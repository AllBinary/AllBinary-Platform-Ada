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



package body org.allbinary.animation.vector.RectangleAdjustedAnimation_Package is

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

end org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;


