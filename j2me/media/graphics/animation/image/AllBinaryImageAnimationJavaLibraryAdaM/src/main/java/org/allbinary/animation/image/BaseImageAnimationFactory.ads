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

limited with org.allbinary.animation.image.BaseImageAnimationFactory_Package;
package org.allbinary.animation.image.BaseImageAnimationFactory_Package_References is
   type BaseImageAnimationFactory_Access is access all org.allbinary.animation.image.BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class;
   type BaseImageAnimationFactory_Access_Array is array (Natural range <>) of BaseImageAnimationFactory_Access;
   type BaseImageAnimationFactory_Access_Array_Access is access all BaseImageAnimationFactory_Access_Array;
   type BaseImageAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of BaseImageAnimationFactory_Access_Array_Access;
   type BaseImageAnimationFactory_Access_Array_Access_Array_Access is access all BaseImageAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;

with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
limited with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References;

package org.allbinary.animation.image.BaseImageAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package AnimationFactoryImageScaleUtil_Package renames Standard.org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   use type AnimationBehaviorFactory_Access;
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   use type AnimationBehaviorFactory_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   use type AnimationBehaviorFactory_Access_Array_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   subtype AnimationFactoryImageScaleUtil_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access;
   use type AnimationFactoryImageScaleUtil_Access;
   subtype AnimationFactoryImageScaleUtil_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array;
   use type AnimationFactoryImageScaleUtil_Access_Array;
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access;
   use type AnimationFactoryImageScaleUtil_Access_Array_Access;
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array;
   use type AnimationFactoryImageScaleUtil_Access_Array_Access_Array;
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access;
   use type AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access;
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   use type ScaleProperties_Access;
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   use type ScaleProperties_Access_Array;
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access;
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   use type ScaleProperties_Access_Array_Access_Array;
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access_Array_Access;
   subtype AnimationFactoryInitializationVisitor_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access;
   use type AnimationFactoryInitializationVisitor_Access;
   subtype AnimationFactoryInitializationVisitor_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array;
   use type AnimationFactoryInitializationVisitor_Access_Array;
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access;
   use type AnimationFactoryInitializationVisitor_Access_Array_Access;
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array;
   use type AnimationFactoryInitializationVisitor_Access_Array_Access_Array;
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access;
   use type AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseImageAnimationFactory_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";

   type BaseImageAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil_Access;
      image : Image_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
      sequenceArray : Integer_Array_Access;
      animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out BaseImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return BaseImageAnimationFactory_Access;
   function createFactoryBase (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return BaseImageAnimationFactory_Access;
   procedure createFactoryBase (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer);
   function getImage (This : in out BaseImageAnimationFactory) return Image_Access;
   function getSequenceArray (This : in out BaseImageAnimationFactory) return Integer_Array_Access;
   procedure setInitialScale (This : in out BaseImageAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);
   function getAnimationFactoryInitializationVisitorP (This : in out BaseImageAnimationFactory) return AnimationFactoryInitializationVisitor_Access;
   function getScalePropertiesP (This : in out BaseImageAnimationFactory) return ScaleProperties_Access;
   function toString (This : in out BaseImageAnimationFactory) return Unbounded_String;

end org.allbinary.animation.image.BaseImageAnimationFactory_Package;


