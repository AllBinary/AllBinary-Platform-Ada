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


with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package body org.allbinary.animation.IndexedAnimation_Package is

   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out IndexedAnimation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out IndexedAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.animationBehaviorP := animationBehavior;
   end Initialize;

   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return IndexedAnimation_Access is
      This : constant IndexedAnimation_Access := new IndexedAnimation;
   begin
      IndexedAnimation_Package.Initialize (This.all, animationBehavior_Param);
      return This;
   end Create;

   function getAnimationBehavior (This : in out IndexedAnimation) return AnimationBehavior_Access is
   begin
        return This.animationBehaviorP;
   end getAnimationBehavior;

   procedure reset (This : in out IndexedAnimation) is
   begin
        This.animationBehaviorP.reset;
        IndexedAnimation'Class (This).setFrame (0);
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
        return 0;
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
        if (IndexedAnimation'Class (This).getFrame) = ((IndexedAnimation'Class (This).getSize) - (1)) then
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

   procedure setState (This : in out IndexedAnimation; indexedAnimation_Var_Param : access IndexedAnimation_Package.IndexedAnimation'Class) is
      indexedAnimation_Var : constant IndexedAnimation_Access := IndexedAnimation_Access (indexedAnimation_Var_Param);
   begin
        IndexedAnimation'Class (This).setFrame (indexedAnimation_Var.getFrame);
        IndexedAnimation'Class (This).setDx (indexedAnimation_Var.getDx);
        IndexedAnimation'Class (This).setDy (indexedAnimation_Var.getDy);
   end setState;

   function getWidth (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getWidth;

   function getHeight (This : in out IndexedAnimation) return Integer is
   begin
        return 0;
   end getHeight;

end org.allbinary.animation.IndexedAnimation_Package;


