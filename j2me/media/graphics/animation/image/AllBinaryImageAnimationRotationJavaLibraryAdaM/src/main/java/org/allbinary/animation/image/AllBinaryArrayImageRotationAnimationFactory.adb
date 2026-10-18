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
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package; use org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package; use org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;

package body org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageToRotationImageArrayUtil_Package renames Standard.org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
   procedure Initialize_Fields (This : in out AllBinaryArrayImageRotationAnimationFactory'Class) is
   begin
      null;
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      
   end Initialize_Fields;


   --  throws Exception
   function createFactory (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer) return AllBinaryArrayImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      arrayImageRotationAnimationFactory : AllBinaryArrayImageRotationAnimationFactory_Access;
   begin
        arrayImageRotationAnimationFactory := AllBinaryArrayImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, (AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity), AnimationBehaviorFactory_Package.getInstance);
        arrayImageRotationAnimationFactory.initDXY (dx, dy);
        return arrayImageRotationAnimationFactory;
   end createFactory;

   --  throws Exception
   function createFactoryA (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; angleIncrement : Integer) return AllBinaryArrayImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      arrayImageRotationAnimationFactory : AllBinaryArrayImageRotationAnimationFactory_Access;
   begin
        arrayImageRotationAnimationFactory := AllBinaryArrayImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, angleIncrement, AnimationBehaviorFactory_Package.getInstance);
        arrayImageRotationAnimationFactory.initDXY (dx, dy);
        return arrayImageRotationAnimationFactory;
   end createFactoryA;

   procedure Initialize (This : in out AllBinaryArrayImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
        AllBinaryArrayImageRotationAnimationFactory'Class (This).init;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryArrayImageRotationAnimationFactory_Access is
      This : constant AllBinaryArrayImageRotationAnimationFactory_Access := new AllBinaryArrayImageRotationAnimationFactory;
   begin
      AllBinaryArrayImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AllBinaryArrayImageRotationAnimationFactory) is
   begin
        AllBinaryArrayImageRotationAnimationFactory'Class (This).setImageArray (ImageToRotationImageArrayUtil_Package.getInstance.generate (AllBinaryArrayImageRotationAnimationFactory'Class (This).getImage, AllBinaryArrayImageRotationAnimationFactory'Class (This).getAngleIncrement, Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE)));
   end init;

   procedure initDXY (This : in out AllBinaryArrayImageRotationAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
        This.animationFactoryInitializationVisitor.originalDx := dx;
        This.animationFactoryInitializationVisitor.originalDy := dy;
   end initDXY;

   --  throws Exception
   function getInstance (This : in out AllBinaryArrayImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImageArray : Image_Access_Array_Access;
      size : Integer;
      image : Image_Access;
      index : Integer;
   begin
        scaledImageArray := new Image_Access_Array'(0 .. (This.imageArray'Length) - 1 => null);
        size := scaledImageArray'Length;
        image := AllBinaryArrayImageRotationAnimationFactory'Class (This).getImage;
        for index in 0 .. (size) - 1 loop
            scaledImageArray (index) := This.animationFactoryImageScaleUtil.createImage (image, image.getWidth, image.getHeight, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        end loop;
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (AllBinaryArrayImageRotationAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AdjustedImageArrayRotationAnimation_Package.Create (scaledImageArray, AngleInfo_Package.getInstance (Short_Integer (AllBinaryArrayImageRotationAnimationFactory'Class (This).getAngleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (ImageArrayRotationAnimation_Package.Create (scaledImageArray, AngleInfo_Package.getInstance (Short_Integer (AllBinaryArrayImageRotationAnimationFactory'Class (This).getAngleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   procedure setImageArray (This : in out AllBinaryArrayImageRotationAnimationFactory; imageArray : Image_Access_Array_Access) is
   begin
        This.imageArray := imageArray;
   end setImageArray;

   function getAngleIncrement (This : in out AllBinaryArrayImageRotationAnimationFactory) return Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure createFactory (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer) is
      Java_Result : constant AllBinaryArrayImageRotationAnimationFactory_Access := createFactory (image_Param => image_Param, dx => dx, dy => dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure createFactoryA (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; angleIncrement : Integer) is
      Java_Result : constant AllBinaryArrayImageRotationAnimationFactory_Access := createFactoryA (image_Param => image_Param, dx => dx, dy => dy, angleIncrement => angleIncrement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryA;

   procedure getInstance (This : in out AllBinaryArrayImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryArrayImageRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory_Package;


