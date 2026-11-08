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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package; use org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package; use org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;

package body org.allbinary.animation.image.BaseImageAnimationFactory_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
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
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   procedure Initialize_Fields (This : in out BaseImageAnimationFactory'Class) is
   begin
      null;
      This.animationFactoryImageScaleUtil := AnimationFactoryImageScaleUtil_Package.getInstance;
      
      
      
      
      This.scaleProperties := ScaleProperties_Access (ScaleProperties_Package.instance);
   end Initialize_Fields;


   --  throws Exception
   function createFactoryBase (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return BaseImageAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return BaseImageAnimationFactory_Package.Create (image, sequenceArray, width, height, 0, 0, animationBehaviorFactory);
   end createFactoryBase;

   procedure Initialize (This : in out BaseImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.animationFactoryInitializationVisitor := AnimationFactoryInitializationVisitor_Package.Create;
        This.image := image;
        This.animationFactoryInitializationVisitor.width := width;
        This.animationFactoryInitializationVisitor.height := height;
        This.animationBehaviorFactory := animationBehaviorFactory;
        This.sequenceArray := sequenceArray;
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return BaseImageAnimationFactory_Access is
      This : constant BaseImageAnimationFactory_Access := new BaseImageAnimationFactory;
   begin
      BaseImageAnimationFactory_Package.Initialize (This.all, image_Param, sequenceArray, width, height, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.getInstance (instanceId);
   end getInstance;

   function getImage (This : in out BaseImageAnimationFactory) return Image_Access is
   begin
        return This.image;
   end getImage;

   function getSequenceArray (This : in out BaseImageAnimationFactory) return Integer_Array_Access is
   begin
        return This.sequenceArray;
   end getSequenceArray;

   procedure setInitialScale (This : in out BaseImageAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        This.scaleProperties := scaleProperties;
        if This.scaleProperties.shouldScale then
            This.scaleProperties.scaleWidth := Integer (((Float (This.animationFactoryInitializationVisitor.width)) * (This.scaleProperties.scaleX)));
            This.scaleProperties.scaleHeight := Integer (((Float (This.animationFactoryInitializationVisitor.height)) * (This.scaleProperties.scaleY)));
        else
            null;
        end if;
   end setInitialScale;

   function getAnimationFactoryInitializationVisitorP (This : in out BaseImageAnimationFactory) return AnimationFactoryInitializationVisitor_Access is
   begin
        return This.animationFactoryInitializationVisitor;
   end getAnimationFactoryInitializationVisitorP;

   function getScalePropertiesP (This : in out BaseImageAnimationFactory) return ScaleProperties_Access is
   begin
        return This.scaleProperties;
   end getScalePropertiesP;

   function toString (This : in out BaseImageAnimationFactory) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (Java_Object (This).toString);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (This.image.getHeight);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (This.animationFactoryInitializationVisitor.toString);
        return stringBuffer.toString;
   end toString;

   procedure createFactoryBase (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant BaseImageAnimationFactory_Access := createFactoryBase (image_Param => image_Param, sequenceArray => sequenceArray, width => width, height => height, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryBase;

   procedure getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := BaseImageAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.BaseImageAnimationFactory_Package;


