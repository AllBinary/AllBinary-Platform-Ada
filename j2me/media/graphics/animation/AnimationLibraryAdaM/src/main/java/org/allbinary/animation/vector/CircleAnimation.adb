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


package body org.allbinary.animation.vector.CircleAnimation_Package is

   procedure Initialize_Fields (This : in out CircleAnimation'Class) is
   begin
      null;
      This.TOTAL_ANGLE := Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE);
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CircleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.width := width;
        This.height := height;
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return CircleAnimation_Access is
      This : constant CircleAnimation_Access := new CircleAnimation;
   begin
      CircleAnimation_Package.Initialize (This.all, width, height, basicColor_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out CircleAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out CircleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
        graphics.drawArc (x, y, This.width, This.height, 0, This.TOTAL_ANGLE);
   end paintXY;

end org.allbinary.animation.vector.CircleAnimation_Package;


