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
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.SingletonAnimationInterfaceFactory_Package; use org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.image.ImageAnimation_Package;

package body org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AnimationFrameToImageUtil_Package renames Standard.org.allbinary.image.AnimationFrameToImageUtil_Package;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   procedure Initialize_Fields (This : in out ImageAnimationSingletonInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnimationSingletonInterfaceFactory'Class; animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        SingletonAnimationInterfaceFactory_Package.Initialize (This, ImageAnimation_Package.Create (AnimationFrameToImageUtil_Package.getInstance.getInstanceWH (width, height, animationInterface), AnimationBehavior_Package.getInstance));
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return ImageAnimationSingletonInterfaceFactory_Access is
      This : constant ImageAnimationSingletonInterfaceFactory_Access := new ImageAnimationSingletonInterfaceFactory;
   begin
      ImageAnimationSingletonInterfaceFactory_Package.Initialize (This.all, animationInterface_Param, width, height);
      return This;
   end Create;

end org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package;


