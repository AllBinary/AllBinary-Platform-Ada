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
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.animation.image.ImageArrayAnimation_Package; use org.allbinary.animation.image.ImageArrayAnimation_Package;
with org.allbinary.animation.image.AdjustedImageArrayAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayAnimation_Package;

package body org.allbinary.animation.image.ImageArrayAnimationFactory_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   procedure Initialize_Fields (This : in out ImageArrayAnimationFactory'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayAnimationFactory'Class; imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.imageArray := imageArray;
        This.animationBehaviorFactory := animationBehaviorFactory;
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ImageArrayAnimationFactory_Access is
      This : constant ImageArrayAnimationFactory_Access := new ImageArrayAnimationFactory;
   begin
      ImageArrayAnimationFactory_Package.Initialize (This.all, imageArray, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        if ((This.dx) /= (0)) or else ((This.dy) /= (0)) then
            return Animation_Access (AdjustedImageArrayAnimation_Package.Create (This.imageArray, This.dx, This.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (ImageArrayAnimation_Package.Create (This.imageArray, AnimationBehavior_Package.getInstance));
        end if;
   end getInstance;

   procedure setInitialScale (This : in out ImageArrayAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ImageArrayAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.ImageArrayAnimationFactory_Package;


