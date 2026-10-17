-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryPlatformImageRotationAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryPlatformImageRotationAnimationFactory'Class; image_Param : access Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) is
      image : Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        AllBinaryJ2SEImageRotationAnimationFactory_Package.Initialize (This, image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
   end Initialize;

   function Create (image_Param : access Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryPlatformImageRotationAnimationFactory_Access is
      This : constant AllBinaryPlatformImageRotationAnimationFactory_Access := new AllBinaryPlatformImageRotationAnimationFactory;
   begin
      AllBinaryPlatformImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param, resizeCanvasForRotation);
      return This;
   end Create;

end org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package;


