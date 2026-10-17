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


package body org.allbinary.animation.IndexedAnimation_Package is

   procedure Initialize_Fields (This : in out IndexedAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out IndexedAnimation'Class; animationBehavior : AnimationBehavior_Access) is
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.animationBehaviorP := animationBehavior;
   end Initialize;

   function Create (animationBehavior : AnimationBehavior_Access) return IndexedAnimation_Access is
      This : constant IndexedAnimation_Access := new IndexedAnimation;
   begin
      Initialize (This.all, animationBehavior);
      return This;
   end Create;

   function getAnimationBehavior (This : in out IndexedAnimation) return AnimationBehavior_Access is
   begin
        return This.animationBehaviorP;
   end getAnimationBehavior;

   procedure reset (This : in out IndexedAnimation) is
   begin
        This.animationBehaviorP.reset;
        This.setFrame (0);
   end reset;

   procedure setFrame (This : in out IndexedAnimation; index : Integer) is
   begin
        null;
   end setFrame;

   function getFrame (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getFrame;

   --  throws Exception
   function getAnimationSize (This : in out IndexedAnimation) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end getAnimationSize;

   function getSize (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getSize;

   procedure previousFrame (This : in out IndexedAnimation) is
   begin
        null;
   end previousFrame;

   function isLastFrame (This : in out IndexedAnimation) return Boolean is
   begin
        if (This.getFrame) = ((This.getSize) - (1)) then
            return True;
        else
            return False;
        end if;
   end isLastFrame;

   procedure setSequence (This : in out IndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out IndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure setState (This : in out IndexedAnimation; indexedAnimation : IndexedAnimation_Access) is
   begin
        This.setFrame (indexedAnimation.getFrame);
        This.setDx (indexedAnimation.getDx);
        This.setDy (indexedAnimation.getDy);
   end setState;

   function getWidth (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getWidth;

   function getHeight (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getHeight;

   procedure getAnimationBehavior (This : in out IndexedAnimation) is
      Java_Result : constant AnimationBehavior_Access := IndexedAnimation'Class (This).getAnimationBehavior;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationBehavior;

   procedure getFrame (This : in out IndexedAnimation) is
      Java_Result : constant Integer := IndexedAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getAnimationSize (This : in out IndexedAnimation) is
      Java_Result : constant Integer := IndexedAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getSize (This : in out IndexedAnimation) is
      Java_Result : constant Integer := IndexedAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure isLastFrame (This : in out IndexedAnimation) is
      Java_Result : constant Boolean := IndexedAnimation'Class (This).isLastFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLastFrame;

   procedure getSequence (This : in out IndexedAnimation) is
      Java_Result : constant Integer_Array_Access := IndexedAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getWidth (This : in out IndexedAnimation) is
      Java_Result : constant Integer := IndexedAnimation'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out IndexedAnimation) is
      Java_Result : constant Integer := IndexedAnimation'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

end org.allbinary.animation.IndexedAnimation_Package;


