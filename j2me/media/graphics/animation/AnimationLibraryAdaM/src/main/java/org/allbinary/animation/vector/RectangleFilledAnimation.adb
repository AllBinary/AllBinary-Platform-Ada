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


package body org.allbinary.animation.vector.RectangleFilledAnimation_Package is

   procedure Initialize_Fields (This : in out RectangleFilledAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleFilledAnimation'Class; width : Integer; height : Integer; basicColor : BasicColor_Access) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.widthP := width;
        This.heightP := height;
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; basicColor : BasicColor_Access) return RectangleFilledAnimation_Access is
      This : constant RectangleFilledAnimation_Access := new RectangleFilledAnimation;
   begin
      RectangleFilledAnimation_Package.Initialize (This.all, width, height, basicColor);
      return This;
   end Create;

   procedure nextFrame (This : in out RectangleFilledAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out RectangleFilledAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
        graphics.fillRect (x, y, This.widthP, This.heightP);
   end paintXY;

   procedure setWidth (This : in out RectangleFilledAnimation; width : Integer) is
   begin
        This.widthP := width;
   end setWidth;

   procedure setHeight (This : in out RectangleFilledAnimation; height : Integer) is
   begin
        This.heightP := height;
   end setHeight;

end org.allbinary.animation.vector.RectangleFilledAnimation_Package;


