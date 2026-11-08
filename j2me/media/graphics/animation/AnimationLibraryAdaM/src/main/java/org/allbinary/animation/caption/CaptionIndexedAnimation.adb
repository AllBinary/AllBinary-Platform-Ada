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
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.AnimationEventHandler_Package; use org.allbinary.animation.AnimationEventHandler_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.caption.CaptionIndexedAnimation_Package is

   package AnimationEventHandler_Package renames Standard.org.allbinary.animation.AnimationEventHandler_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
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
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   function "=" (Left, Right : Player_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   function "=" (Left, Right : Player_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   function "=" (Left, Right : Player_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
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
   procedure Initialize_Fields (This : in out CaptionIndexedAnimation'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CaptionIndexedAnimation'Class; animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      movieIndexedAnimationInterface : constant IndexedAnimation_Access := IndexedAnimation_Access (movieIndexedAnimationInterface_Param);
      player : constant Player_Access := Player_Access (player_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
      timePerFrame : Integer;
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.animationInterface := animationInterface;
        This.movieIndexedAnimationInterface := movieIndexedAnimationInterface;
        This.captionDx := captionDx;
        This.captionDy := captionDy;
        This.dx := dx;
        This.dy := dy;
        This.time := time;
        This.END_EVENT := AllBinaryEventObject_Package.Create (CaptionIndexedAnimation_Access'(This'Unchecked_Access));
        timePerFrame := (This.time) / (CaptionIndexedAnimation'Class (This).getSize);
        This.timeDelayHelper := TimeDelayHelper_Package.Create (timePerFrame);
        This.player := player;
        This.player.start;
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CaptionIndexedAnimation_Access is
      This : constant CaptionIndexedAnimation_Access := new CaptionIndexedAnimation;
   begin
      CaptionIndexedAnimation_Package.Initialize (This.all, animationInterface_Param, movieIndexedAnimationInterface_Param, player_Param, captionDx, captionDy, dx, dy, time, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure nextFrame (This : in out CaptionIndexedAnimation) is
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.movieIndexedAnimationInterface.nextFrame;
        end if;
        if CaptionIndexedAnimation'Class (This).isLastFrame then
            AnimationEventHandler_Package.getInstance.fireEvent (This.END_EVENT);
        end if;
   end nextFrame;

   function isLastFrame (This : in out CaptionIndexedAnimation) return Boolean is
   begin
        if (This.movieIndexedAnimationInterface.getFrame) = ((CaptionIndexedAnimation'Class (This).getSize) - (1)) then
            return True;
        else
            return False;
        end if;
   end isLastFrame;

   procedure previousFrame (This : in out CaptionIndexedAnimation) is
   begin
        This.movieIndexedAnimationInterface.previousFrame;
   end previousFrame;

   procedure setFrame (This : in out CaptionIndexedAnimation; index : Integer) is
   begin
        This.movieIndexedAnimationInterface.setFrame (index);
   end setFrame;

   function getFrame (This : in out CaptionIndexedAnimation) return Integer is
   begin
        return This.movieIndexedAnimationInterface.getFrame;
   end getFrame;

   function getSize (This : in out CaptionIndexedAnimation) return Integer is
   begin
        return This.movieIndexedAnimationInterface.getSize;
   end getSize;

   procedure setSequence (This : in out CaptionIndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out CaptionIndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, (x) + (This.captionDx), (y) + (This.captionDy));
        This.movieIndexedAnimationInterface.paintXY (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy));
   end paintXY;

   procedure paintThreedXYZ (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintThreedXYZ (graphics, (x) + (This.captionDx), (y) + (This.captionDy), z);
        This.movieIndexedAnimationInterface.paintThreedXYZ (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy), z);
   end paintThreedXYZ;

end org.allbinary.animation.caption.CaptionIndexedAnimation_Package;


