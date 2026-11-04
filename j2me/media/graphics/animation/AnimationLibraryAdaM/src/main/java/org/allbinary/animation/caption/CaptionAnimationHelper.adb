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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.animation.text.TextAnimation_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.animation.caption.CaptionAnimation_Package; use org.allbinary.animation.caption.CaptionAnimation_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.caption.CaptionAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.animation.text.TextChangeListener_Package;

package body org.allbinary.animation.caption.CaptionAnimationHelper_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype TextAnimation_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access;
   function "=" (Left, Right : TextAnimation_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array;
   function "=" (Left, Right : TextAnimation_Access_Array) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access;
   function "=" (Left, Right : TextAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : TextAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
        This.captionAnimation := Animation_Access (CaptionAnimation_Package.Create (captionAnimation, This.textAnimation, captionDx, captionDy, dx, dy));
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


