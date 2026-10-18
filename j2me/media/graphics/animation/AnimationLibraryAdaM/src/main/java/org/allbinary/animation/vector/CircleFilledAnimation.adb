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



package body org.allbinary.animation.vector.CircleFilledAnimation_Package is

   procedure Initialize_Fields (This : in out CircleFilledAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CircleFilledAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        Animation_Package.Initialize (This);
        Initialize_Fields (This);
        This.width := width;
        This.height := height;
        CircleFilledAnimation'Class (This).setBasicColorP (basicColor);
   end Initialize;

   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return CircleFilledAnimation_Access is
      This : constant CircleFilledAnimation_Access := new CircleFilledAnimation;
   begin
      CircleFilledAnimation_Package.Initialize (This.all, width, height, basicColor_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out CircleFilledAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out CircleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, CircleFilledAnimation'Class (This).getBasicColorP, CircleFilledAnimation'Class (This).getColor);
        graphics.fillRect (x, y, This.width, This.height);
   end paintXY;

end org.allbinary.animation.vector.CircleFilledAnimation_Package;


