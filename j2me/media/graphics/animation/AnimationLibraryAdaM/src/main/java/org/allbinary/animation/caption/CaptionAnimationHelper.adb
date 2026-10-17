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


   procedure Initialize (This : in out CaptionAnimationHelper'Class; captionAnimation : Animation_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) is
   begin
      CaptionAnimationHelperBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.captionAnimation := CaptionAnimation_Package.Create (captionAnimation, This.textAnimation, captionDx, captionDy, dx, dy);
   end Initialize;

   function Create (captionAnimation : Animation_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimationHelper_Access is
      This : constant CaptionAnimationHelper_Access := new CaptionAnimationHelper;
   begin
      Initialize (This.all, captionAnimation, captionDx, captionDy, dx, dy);
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

   procedure update (This : in out CaptionAnimationHelper; message : Unbounded_String; basicColor : BasicColor_Access) is
   begin
        This.textAnimation.setBasicColorP (basicColor);
        This.textAnimation.setText (message);
        This.animation := This.captionAnimation;
        This.timeHelper.setStartTimeTNT;
   end update;

   procedure paintXY (This : in out CaptionAnimationHelper; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.animation.paintXY (graphics, x, y);
   end paintXY;

   procedure isShowing (This : in out CaptionAnimationHelper) is
      Java_Result : constant Boolean := CaptionAnimationHelper'Class (This).isShowing;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isShowing;

end org.allbinary.animation.caption.CaptionAnimationHelper_Package;


