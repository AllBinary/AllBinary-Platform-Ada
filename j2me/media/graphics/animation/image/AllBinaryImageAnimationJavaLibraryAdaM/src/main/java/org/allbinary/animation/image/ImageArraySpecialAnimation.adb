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


package body org.allbinary.animation.image.ImageArraySpecialAnimation_Package is

   procedure Initialize_Fields (This : in out ImageArraySpecialAnimation'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (270);
      This.loopCount := 0;
      This.loopCountTotal := 1;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArraySpecialAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageArrayAnimation_Package.Initialize (This, imageArray, animationBehavior);
        Initialize_Fields (This);
        This.reset;
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return ImageArraySpecialAnimation_Access is
      This : constant ImageArraySpecialAnimation_Access := new ImageArraySpecialAnimation;
   begin
      ImageArraySpecialAnimation_Package.Initialize (This.all, imageArray, animationBehavior);
      return This;
   end Create;

   function getLoopCount (This : in out ImageArraySpecialAnimation) return Integer is
   begin
        return This.loopCount;
   end getLoopCount;

   procedure setLastFrame (This : in out ImageArraySpecialAnimation) is
   begin
        This.circularIndexUtil.setIndex ((This.circularIndexUtil.getSize) - (1));
   end setLastFrame;

   procedure reset (This : in out ImageArraySpecialAnimation) is
   begin
        This.setFrame ((This.getSize) - (1));
        This.loopCount := 0;
   end reset;

   procedure nextFrame (This : in out ImageArraySpecialAnimation) is
   begin
        if (This.getFrame) > (0) then
            if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
                This.previousFrame;
                if (This.getFrame) = (0) then
                    This.loopCount := This.loopCount + 1;
                end if;
            end if;
        end if;
   end nextFrame;

   function isComplete (This : in out ImageArraySpecialAnimation) return Boolean is
   begin
        if ((This.loopCount) < (This.loopCountTotal)) or else ((This.getFrame) /= (0)) then
            return False;
        else
            return True;
        end if;
   end isComplete;

   procedure paintXY (This : in out ImageArraySpecialAnimation; graphics : Graphics_Access; x_Param : Integer; y_Param : Integer) is
      x : Integer := x_Param;
      y : Integer := y_Param;
   begin
        x := (DisplayInfoSingleton_Package.getInstance.getLastHalfWidth) - ((Java_Shift_Right_Arithmetic (This.getImage (This.circularIndexUtil.getIndex).getWidth, 1)));
        y := 5;
        ImageArrayAnimation (This).paintXY (graphics, x, y);
   end paintXY;

end org.allbinary.animation.image.ImageArraySpecialAnimation_Package;


