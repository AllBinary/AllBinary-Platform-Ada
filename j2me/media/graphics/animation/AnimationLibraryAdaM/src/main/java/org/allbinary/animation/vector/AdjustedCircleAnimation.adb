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


package body org.allbinary.animation.vector.AdjustedCircleAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedCircleAnimation'Class) is
   begin
      null;
      This.xAdjustment := 0;
      This.yAdjustment := 0;
   end Initialize_Fields;


   function createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      adjustedCircleAnimation : AdjustedCircleAnimation_Access;
   begin
        adjustedCircleAnimation := AdjustedCircleAnimation_Package.Create (width, height, basicColor);
        adjustedCircleAnimation.initXY (xAdjustment, yAdjustment);
        return adjustedCircleAnimation;
   end createAnimation;

   function createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      adjustedCircleAnimation : AdjustedCircleAnimation_Access;
   begin
        adjustedCircleAnimation := AdjustedCircleAnimation_Package.Create (width, height, basicColor);
        adjustedCircleAnimation.init (innerWidth);
        return adjustedCircleAnimation;
   end createW;

   procedure Initialize (This : in out AdjustedCircleAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        CircleAnimation_Package.Initialize (This, width, height, basicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AdjustedCircleAnimation_Access is
      This : constant AdjustedCircleAnimation_Access := new AdjustedCircleAnimation;
   begin
      AdjustedCircleAnimation_Package.Initialize (This.all, width, height, basicColor_Param);
      return This;
   end Create;

   procedure initXY (This : in out AdjustedCircleAnimation; xAdjustment : Integer; yAdjustment : Integer) is
   begin
        This.xAdjustment := xAdjustment;
        This.yAdjustment := yAdjustment;
   end initXY;

   procedure init (This : in out AdjustedCircleAnimation; innerWidth : Integer) is
      widthPortion : Integer;
   begin
        if AndroidUtil_Package.isAndroid then
            widthPortion := ((((((innerWidth) / (3))) * (10))) / (7));
            This.xAdjustment := -((((Java_Shift_Right_Arithmetic (This.width, 1))) - (widthPortion)));
            This.yAdjustment := This.xAdjustment;
        else
            This.xAdjustment := -((((Java_Shift_Right_Arithmetic (This.width, 1))) - (innerWidth)));
            This.yAdjustment := This.xAdjustment;
        end if;
   end init;

   procedure paintXY (This : in out AdjustedCircleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.getBasicColorP, This.getColor);
        graphics.drawArc ((x) + (This.xAdjustment), (y) + (This.yAdjustment), This.width, This.height, 0, This.TOTAL_ANGLE);
   end paintXY;

   procedure createAnimation (width : Integer; height : Integer; xAdjustment : Integer; yAdjustment : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant AdjustedCircleAnimation_Access := createAnimation (width, height, xAdjustment, yAdjustment, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

   procedure createW (width : Integer; height : Integer; innerWidth : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant AdjustedCircleAnimation_Access := createW (width, height, innerWidth, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createW;

end org.allbinary.animation.vector.AdjustedCircleAnimation_Package;


