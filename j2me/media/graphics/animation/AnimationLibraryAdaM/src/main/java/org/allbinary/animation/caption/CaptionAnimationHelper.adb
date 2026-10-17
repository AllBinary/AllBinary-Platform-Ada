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


package body org.allbinary.animation.caption.CaptionAnimationHelper_Package is

   procedure Initialize_Fields (This : in out CaptionAnimationHelper'Class) is
   begin
      null;
      This.timeHelper := TimeDelayHelper_Package.Create (620);
      This.textAnimation := TextAnimation_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, AnimationBehavior_Package.getInstance);
      
      This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end Initialize_Fields;


   procedure Initialize (This : in out CaptionAnimationHelper'Class; captionAnimation_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) is
      captionAnimation : constant Animation_Access := Animation_Access (captionAnimation_Param);
   begin
      CaptionAnimationHelperBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.captionAnimation := CaptionAnimation_Package.Create (captionAnimation, This.textAnimation, captionDx, captionDy, dx, dy);
   end Initialize;

   function Create (captionAnimation_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimationHelper_Access is
      This : constant CaptionAnimationHelper_Access := new CaptionAnimationHelper;
   begin
      CaptionAnimationHelper_Package.Initialize (This.all, captionAnimation_Param, captionDx, captionDy, dx, dy);
      return This;
   end Create;

   function isShowing (This : in out CaptionAnimationHelper) return Boolean is
   begin
        if (This.animation) = (This.captionAnimation) then
            return True;
        else
            return False;
        end if;
   end isShowing;

   procedure tick (This : in out CaptionAnimationHelper) is
   begin
        if This.timeHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        end if;
   end tick;

   procedure update (This : in out CaptionAnimationHelper; message : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.textAnimation.setBasicColorP (basicColor);
        This.textAnimation.setText (message);
        This.animation := This.captionAnimation;
        This.timeHelper.setStartTimeTNT;
   end update;

   procedure paintXY (This : in out CaptionAnimationHelper; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animation.paintXY (graphics, x, y);
   end paintXY;

end org.allbinary.animation.caption.CaptionAnimationHelper_Package;


