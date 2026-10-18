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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.graphics.displayable.ScreenRelationalUtil_Package; use org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package body org.allbinary.animation.image.AllBinaryScreenRelationalImageAnimationInterfaceFactory_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package ScreenRelationalUtil_Package renames Standard.org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   procedure Initialize_Fields (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class) is
   begin
      null;
      This.lastImage := NullImage_Package.NULL_IMAGE;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class; image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      androidImageInterface : AndroidImageInterface_Access;
      scale : Float;
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, 0, 0, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        if (This.lastImage) /= (NullImage_Package.NULL_IMAGE) then
            androidImageInterface := AndroidImageInterface_Access (This.lastImage);
            androidImageInterface.getBitmap.recycle;
        end if;
        scale := ScreenRelationalUtil_Package.getInstance.getScaleImage (image);
        This.lastImage := ImageScaleUtil_Package.getInstance.createImage (GameFeatureImageCacheFactory_Package.getInstance, AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class (This).getImage, scale, scale, False);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access is
      This : constant AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access := new AllBinaryScreenRelationalImageAnimationInterfaceFactory;
   begin
      AllBinaryScreenRelationalImageAnimationInterfaceFactory_Package.Initialize (This.all, image_Param, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return Animation_Access (ImageAnimation_Package.Create (This.lastImage, This.animationBehaviorFactory.getOrCreateInstance));
   end getInstance;

   procedure getInstance (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryScreenRelationalImageAnimationInterfaceFactory_Package;


