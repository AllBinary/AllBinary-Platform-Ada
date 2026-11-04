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

limited with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package;
package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References is
   type AllBinaryJ2SEImageRotationAnimationFactory_Access is access all org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package.AllBinaryJ2SEImageRotationAnimationFactory'Class;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimationFactory_Access;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimationFactory_Access_Array;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References;

with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References;
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
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;

package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryJ2SEImageRotationAnimationFactory_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References.AllBinaryJ2SEImageRotationAnimationFactory_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimationFactory_Access_Array is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References.AllBinaryJ2SEImageRotationAnimationFactory_Access_Array;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References.AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References.AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References.AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package_References."=";

   type AllBinaryJ2SEImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      angleIncrementP : Short_Integer;
      resizeCanvasForRotation : Boolean;
   end record;

   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access;
   function createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access;
   procedure createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function getCanvasImage (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Image_Access;
   function getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer);
   function getAngleIncrement (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Short_Integer;

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package;


