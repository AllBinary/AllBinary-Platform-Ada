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


package body org.allbinary.animation.caption.CaptionIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out CaptionIndexedAnimation'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CaptionIndexedAnimation'Class; animationInterface : Animation_Access; movieIndexedAnimationInterface : IndexedAnimation_Access; player : Player_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior : AnimationBehavior_Access) is
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
        This.END_EVENT := AllBinaryEventObject_Package.Create (This'Unchecked_Access);
        timePerFrame := (This.time) / (This.getSize);
        This.timeDelayHelper := TimeDelayHelper_Package.Create (timePerFrame);
        This.player := player;
        This.player.start;
   end Initialize;

   function Create (animationInterface : Animation_Access; movieIndexedAnimationInterface : IndexedAnimation_Access; player : Player_Access; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior : AnimationBehavior_Access) return CaptionIndexedAnimation_Access is
      This : constant CaptionIndexedAnimation_Access := new CaptionIndexedAnimation;
   begin
      Initialize (This.all, animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure nextFrame (This : in out CaptionIndexedAnimation) is
   begin
        if This.timeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.movieIndexedAnimationInterface.nextFrame;
        end if;
        if This.isLastFrame then
            AnimationEventHandler_Package.getInstance.fireEvent (This.END_EVENT);
        end if;
   end nextFrame;

   function isLastFrame (This : in out CaptionIndexedAnimation) return Boolean is
   begin
        if (This.movieIndexedAnimationInterface.getFrame) = ((This.getSize) - (1)) then
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

   procedure paintXY (This : in out CaptionIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.animationInterface.paintXY (graphics, (x) + (This.captionDx), (y) + (This.captionDy));
        This.movieIndexedAnimationInterface.paintXY (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy));
   end paintXY;

   procedure paintThreedXYZ (This : in out CaptionIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
   begin
        This.animationInterface.paintThreedXYZ (graphics, (x) + (This.captionDx), (y) + (This.captionDy), z);
        This.movieIndexedAnimationInterface.paintThreedXYZ (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy), z);
   end paintThreedXYZ;

   procedure isLastFrame (This : in out CaptionIndexedAnimation) is
      Java_Result : constant Boolean := CaptionIndexedAnimation'Class (This).isLastFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLastFrame;

   procedure getFrame (This : in out CaptionIndexedAnimation) is
      Java_Result : constant Integer := CaptionIndexedAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getSize (This : in out CaptionIndexedAnimation) is
      Java_Result : constant Integer := CaptionIndexedAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out CaptionIndexedAnimation) is
      Java_Result : constant Integer_Array_Access := CaptionIndexedAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

end org.allbinary.animation.caption.CaptionIndexedAnimation_Package;


