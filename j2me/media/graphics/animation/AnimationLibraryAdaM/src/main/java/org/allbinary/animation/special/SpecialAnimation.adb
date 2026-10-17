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


package body org.allbinary.animation.special.SpecialAnimation_Package is

   procedure Initialize_Fields (This : in out SpecialAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return SpecialAnimation_Access is
   begin
        return SpecialAnimation_Package.NULL_SPECIAL_ANIMATION;
   end getInstance;

   procedure Initialize (This : in out SpecialAnimation'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
   end Initialize;

   function Create (animationBehavior_Param : access AnimationBehavior'Class) return SpecialAnimation_Access is
      This : constant SpecialAnimation_Access := new SpecialAnimation;
   begin
      SpecialAnimation_Package.Initialize (This.all, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out SpecialAnimation) is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
   begin
        indexedAnimationBehavior := (IndexedAnimationBehavior_Access (This.animationBehaviorP));
        indexedAnimationBehavior.loopIndex := indexedAnimationBehavior.loopIndex + 1;
   end nextFrame;

   procedure setLastFrame (This : in out SpecialAnimation) is
   begin
        null;
   end setLastFrame;

   function isComplete (This : in out SpecialAnimation) return Boolean is
   begin
        return False;
   end isComplete;

   procedure open (This : in out SpecialAnimation) is
   begin
        null;
   end open;

   procedure close (This : in out SpecialAnimation) is
   begin
        null;
   end close;

   procedure process (This : in out SpecialAnimation) is
   begin
        null;
   end process;

begin
   null;
   NULL_SPECIAL_ANIMATION := SpecialAnimation_Package.Create (IndexedAnimationBehavior_Package.Create (1, 250));

end org.allbinary.animation.special.SpecialAnimation_Package;


