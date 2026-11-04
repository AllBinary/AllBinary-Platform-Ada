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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.special.SpecialAnimationInterface_Package; use org.allbinary.animation.special.SpecialAnimationInterface_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package body org.allbinary.animation.image.ImageArraySpecialAnimation_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out ImageArraySpecialAnimation'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (270);
      This.loopCount := 0;
      This.loopCountTotal := 1;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArraySpecialAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageArrayAnimation_Package.Initialize (This, imageArray, animationBehavior);
        Initialize_Fields (This);
        ImageArraySpecialAnimation'Class (This).reset;
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArraySpecialAnimation_Access is
      This : constant ImageArraySpecialAnimation_Access := new ImageArraySpecialAnimation;
   begin
      ImageArraySpecialAnimation_Package.Initialize (This.all, imageArray, animationBehavior_Param);
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
        ImageArraySpecialAnimation'Class (This).setFrame ((ImageArraySpecialAnimation'Class (This).getSize) - (1));
        This.loopCount := 0;
   end reset;

   procedure nextFrame (This : in out ImageArraySpecialAnimation) is
   begin
        if (ImageArraySpecialAnimation'Class (This).getFrame) > (0) then
            if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
                ImageArraySpecialAnimation'Class (This).previousFrame;
                if (ImageArraySpecialAnimation'Class (This).getFrame) = (0) then
                    This.loopCount := This.loopCount + 1;
                end if;
            end if;
        end if;
   end nextFrame;

   function isComplete (This : in out ImageArraySpecialAnimation) return Boolean is
   begin
        if ((This.loopCount) < (This.loopCountTotal)) or else ((ImageArraySpecialAnimation'Class (This).getFrame) /= (0)) then
            return False;
        else
            return True;
        end if;
   end isComplete;

   procedure paintXY (This : in out ImageArraySpecialAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x_Param : Integer; y_Param : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      x : Integer := x_Param;
      y : Integer := y_Param;
   begin
        x := (DisplayInfoSingleton_Package.getInstance.getLastHalfWidth) - ((Java_Shift_Right_Arithmetic (ImageArraySpecialAnimation'Class (This).getImage (This.circularIndexUtil.getIndex).getWidth, 1)));
        y := 5;
        ImageArrayAnimation_Package.ImageArrayAnimation (This).paintXY (graphics, x, y);
   end paintXY;

end org.allbinary.animation.image.ImageArraySpecialAnimation_Package;


