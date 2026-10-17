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


package body org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package is

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
      Initialize (This.all, imageArray);
      return This;
   end Create;

end org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package;


