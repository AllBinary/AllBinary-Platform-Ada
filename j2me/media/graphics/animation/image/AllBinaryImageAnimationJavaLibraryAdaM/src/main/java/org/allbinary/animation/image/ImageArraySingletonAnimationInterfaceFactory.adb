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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.image.IndexedAnimationToImageArrayUtil_Package; use org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;
with org.allbinary.animation.image.ImageArrayAnimation_Package; use org.allbinary.animation.image.ImageArrayAnimation_Package;

package body org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package IndexedAnimationToImageArrayUtil_Package renames Standard.org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;
   procedure Initialize_Fields (This : in out ImageArraySingletonAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArraySingletonAnimationInterfaceFactory'Class; imageArray : Image_Access_Array_Access) is
   begin
        SingletonAnimationInterfaceFactory_Package.Initialize (This, ImageArrayAnimation_Package.Create (imageArray, AnimationBehavior_Package.getInstance));
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access) return ImageArraySingletonAnimationInterfaceFactory_Access is
      This : constant ImageArraySingletonAnimationInterfaceFactory_Access := new ImageArraySingletonAnimationInterfaceFactory;
   begin
      ImageArraySingletonAnimationInterfaceFactory_Package.Initialize (This.all, imageArray);
      return This;
   end Create;

end org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package;


