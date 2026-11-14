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

with AllBinary_Java;
limited with org.allbinary.animation.NullRotationAnimationFactory_Package;
package org.allbinary.animation.NullRotationAnimationFactory_Package_References is
   type NullRotationAnimationFactory_Access is access all org.allbinary.animation.NullRotationAnimationFactory_Package.NullRotationAnimationFactory'Class;
   type NullRotationAnimationFactory_Access_Array is array (Natural range <>) of NullRotationAnimationFactory_Access;
   type NullRotationAnimationFactory_Access_Array_Access is access all NullRotationAnimationFactory_Access_Array;
   type NullRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of NullRotationAnimationFactory_Access_Array_Access;
   type NullRotationAnimationFactory_Access_Array_Access_Array_Access is access all NullRotationAnimationFactory_Access_Array_Access_Array;
   type NullRotationAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRotationAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRotationAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRotationAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRotationAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRotationAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in NullRotationAnimationFactory_Access_Array_Object'Class then NullRotationAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NullRotationAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRotationAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRotationAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRotationAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRotationAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRotationAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRotationAnimationFactory_Access_Array_Access_Array_Object'Class then NullRotationAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.NullRotationAnimationFactory_Package_References;

with org.allbinary.animation.NullRotationAnimationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullRotationAnimationFactory_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype NullRotationAnimationFactory_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access;
   function "=" (Left, Right : NullRotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.NullRotationAnimationFactory_Package_References."=";
   subtype NullRotationAnimationFactory_Access_Array is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array;
   function "=" (Left, Right : NullRotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimationFactory_Package_References."=";
   subtype NullRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : NullRotationAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.NullRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_NullRotationAnimationFactory_Access_Array (Value : access Java_Object'Class) return NullRotationAnimationFactory_Access_Array_Access renames org.allbinary.animation.NullRotationAnimationFactory_Package_References.Java_Unbox_NullRotationAnimationFactory_Access_Array;
   subtype NullRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullRotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimationFactory_Package_References."=";
   subtype NullRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : NullRotationAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.NullRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_NullRotationAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRotationAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.NullRotationAnimationFactory_Package_References.Java_Unbox_NullRotationAnimationFactory_Access_Array_Access_Array;

   type NullRotationAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      NULL_ROTATION_ANIMATION_ARRAY : RotationAnimation_Access_Array_Access;
      NULL_ANIMATION : Animation_Access;
   end record;
   NULL_ROTATION_ANIMATION_FACTORY : NullRotationAnimationFactory_Access;

   procedure Initialize (This : in out NullRotationAnimationFactory'Class);
   function Create return NullRotationAnimationFactory_Access;
   function getFactoryInstance return NullRotationAnimationFactory_Access;
   function getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out NullRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.NullRotationAnimationFactory_Package;

with AllBinary_Java;
limited with org.allbinary.animation.NullRotationAnimation2_Package;
package org.allbinary.animation.NullRotationAnimation2_Package_References is
   type NullRotationAnimation2_Access is access all org.allbinary.animation.NullRotationAnimation2_Package.NullRotationAnimation2'Class;
   type NullRotationAnimation2_Access_Array is array (Natural range <>) of NullRotationAnimation2_Access;
   type NullRotationAnimation2_Access_Array_Access is access all NullRotationAnimation2_Access_Array;
   type NullRotationAnimation2_Access_Array_Access_Array is array (Natural range <>) of NullRotationAnimation2_Access_Array_Access;
   type NullRotationAnimation2_Access_Array_Access_Array_Access is access all NullRotationAnimation2_Access_Array_Access_Array;
   type NullRotationAnimation2_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRotationAnimation2_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRotationAnimation2_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRotationAnimation2_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRotationAnimation2_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRotationAnimation2_Access_Array_Access is (if Value /= null and then Value.all in NullRotationAnimation2_Access_Array_Object'Class then NullRotationAnimation2_Access_Array_Object'Class (Value.all).Value else null);
   type NullRotationAnimation2_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRotationAnimation2_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRotationAnimation2_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRotationAnimation2_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRotationAnimation2_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRotationAnimation2_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRotationAnimation2_Access_Array_Access_Array_Object'Class then NullRotationAnimation2_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.NullRotationAnimation2_Package_References;

with org.allbinary.animation.NullRotationAnimation2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.NullRotationAnimationFactory_Package;
with org.allbinary.animation.NullRotationAnimationFactory_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullRotationAnimation2_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   subtype NullRotationAnimationFactory_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access;
   use type NullRotationAnimationFactory_Access;
   subtype NullRotationAnimationFactory_Access_Array is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array;
   use type NullRotationAnimationFactory_Access_Array;
   subtype NullRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access;
   use type NullRotationAnimationFactory_Access_Array_Access;
   subtype NullRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access_Array;
   use type NullRotationAnimationFactory_Access_Array_Access_Array;
   subtype NullRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.NullRotationAnimationFactory_Package_References.NullRotationAnimationFactory_Access_Array_Access_Array_Access;
   use type NullRotationAnimationFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullRotationAnimation2_Access is org.allbinary.animation.NullRotationAnimation2_Package_References.NullRotationAnimation2_Access;
   function "=" (Left, Right : NullRotationAnimation2_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation2_Package_References."=";
   subtype NullRotationAnimation2_Access_Array is org.allbinary.animation.NullRotationAnimation2_Package_References.NullRotationAnimation2_Access_Array;
   function "=" (Left, Right : NullRotationAnimation2_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation2_Package_References."=";
   subtype NullRotationAnimation2_Access_Array_Access is org.allbinary.animation.NullRotationAnimation2_Package_References.NullRotationAnimation2_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation2_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation2_Package_References."=";
   function Java_Box (Value : NullRotationAnimation2_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.NullRotationAnimation2_Package_References.Java_Box;
   function Java_Unbox_NullRotationAnimation2_Access_Array (Value : access Java_Object'Class) return NullRotationAnimation2_Access_Array_Access renames org.allbinary.animation.NullRotationAnimation2_Package_References.Java_Unbox_NullRotationAnimation2_Access_Array;
   subtype NullRotationAnimation2_Access_Array_Access_Array is org.allbinary.animation.NullRotationAnimation2_Package_References.NullRotationAnimation2_Access_Array_Access_Array;
   function "=" (Left, Right : NullRotationAnimation2_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation2_Package_References."=";
   subtype NullRotationAnimation2_Access_Array_Access_Array_Access is org.allbinary.animation.NullRotationAnimation2_Package_References.NullRotationAnimation2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation2_Package_References."=";
   function Java_Box (Value : NullRotationAnimation2_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.NullRotationAnimation2_Package_References.Java_Box;
   function Java_Unbox_NullRotationAnimation2_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRotationAnimation2_Access_Array_Access_Array_Access renames org.allbinary.animation.NullRotationAnimation2_Package_References.Java_Unbox_NullRotationAnimation2_Access_Array_Access_Array;

   type NullRotationAnimation2 is new NullRotationAnimation with null record;

   procedure Initialize (This : in out NullRotationAnimation2'Class);
   function Create return NullRotationAnimation2_Access;
   procedure paintXY (This : in out NullRotationAnimation2; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.NullRotationAnimation2_Package;


