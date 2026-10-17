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


package body org.allbinary.animation.vector.RectangleAnimation_Package is

   procedure Initialize_Fields (This : in out RectangleAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleAnimation'Class; width : Integer; height : Integer; basicColor : BasicColor_Access) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.width := width;
        This.height := height;
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; basicColor : BasicColor_Access) return RectangleAnimation_Access is
      This : constant RectangleAnimation_Access := new RectangleAnimation;
   begin
      RectangleAnimation_Package.Initialize (This.all, width, height, basicColor);
      return This;
   end Create;

   procedure nextFrame (This : in out RectangleAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out RectangleAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
        graphics.drawRect (x, y, This.width, This.height);
   end paintXY;

   procedure setWidth (This : in out RectangleAnimation; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   procedure setHeight (This : in out RectangleAnimation; height : Integer) is
   begin
        This.height := height;
   end setHeight;

end org.allbinary.animation.vector.RectangleAnimation_Package;


