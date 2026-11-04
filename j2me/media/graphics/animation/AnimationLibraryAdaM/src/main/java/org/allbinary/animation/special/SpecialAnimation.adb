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


with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;

package body org.allbinary.animation.special.SpecialAnimation_Package is

   package IndexedAnimationBehavior_Package renames Standard.org.allbinary.animation.IndexedAnimationBehavior_Package;
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
   procedure Initialize_Fields (This : in out SpecialAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return SpecialAnimation_Access is
   begin
        return SpecialAnimation_Access (SpecialAnimation_Package.NULL_SPECIAL_ANIMATION);
   end getInstance;

   procedure Initialize (This : in out SpecialAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
   end Initialize;

   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SpecialAnimation_Access is
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


