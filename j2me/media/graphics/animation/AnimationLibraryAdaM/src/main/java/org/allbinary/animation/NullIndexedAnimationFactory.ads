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

limited with org.allbinary.animation.NullIndexedAnimationFactory_Package;
package org.allbinary.animation.NullIndexedAnimationFactory_Package_References is
   type NullIndexedAnimationFactory_Access is access all org.allbinary.animation.NullIndexedAnimationFactory_Package.NullIndexedAnimationFactory'Class;
   type NullIndexedAnimationFactory_Access_Array is array (Natural range <>) of NullIndexedAnimationFactory_Access;
   type NullIndexedAnimationFactory_Access_Array_Access is access all NullIndexedAnimationFactory_Access_Array;
   type NullIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of NullIndexedAnimationFactory_Access_Array_Access;
   type NullIndexedAnimationFactory_Access_Array_Access_Array_Access is access all NullIndexedAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.NullIndexedAnimationFactory_Package_References;

with org.allbinary.animation.NullIndexedAnimationFactory_Package_References;
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
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
limited with org.allbinary.animation.NullIndexedAnimation_Package;
with org.allbinary.animation.NullIndexedAnimation_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.NullIndexedAnimationFactory_Package is

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
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
   subtype NullIndexedAnimation_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access;
   use type NullIndexedAnimation_Access;
   subtype NullIndexedAnimation_Access_Array is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array;
   use type NullIndexedAnimation_Access_Array;
   subtype NullIndexedAnimation_Access_Array_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access;
   use type NullIndexedAnimation_Access_Array_Access;
   subtype NullIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access_Array;
   use type NullIndexedAnimation_Access_Array_Access_Array;
   subtype NullIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access_Array_Access;
   use type NullIndexedAnimation_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype NullIndexedAnimationFactory_Access is org.allbinary.animation.NullIndexedAnimationFactory_Package_References.NullIndexedAnimationFactory_Access;
   function "=" (Left, Right : NullIndexedAnimationFactory_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationFactory_Package_References."=";
   subtype NullIndexedAnimationFactory_Access_Array is org.allbinary.animation.NullIndexedAnimationFactory_Package_References.NullIndexedAnimationFactory_Access_Array;
   function "=" (Left, Right : NullIndexedAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimationFactory_Package_References."=";
   subtype NullIndexedAnimationFactory_Access_Array_Access is org.allbinary.animation.NullIndexedAnimationFactory_Package_References.NullIndexedAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationFactory_Package_References."=";
   subtype NullIndexedAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.NullIndexedAnimationFactory_Package_References.NullIndexedAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullIndexedAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimationFactory_Package_References."=";
   subtype NullIndexedAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.NullIndexedAnimationFactory_Package_References.NullIndexedAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationFactory_Package_References."=";

   type NullIndexedAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      NULL_ANIMATION : Animation_Access;
   end record;
   NULL_INDEXED_ANIMATION_ARRAY : IndexedAnimation_Access_Array_Access;
   NULL_INDEXED_ANIMATION_FACTORY : NullIndexedAnimationFactory_Access;

   procedure Initialize (This : in out NullIndexedAnimationFactory'Class);
   function Create return NullIndexedAnimationFactory_Access;
   function getFactoryInstance return NullIndexedAnimationFactory_Access;
   function getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out NullIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.NullIndexedAnimationFactory_Package;

limited with org.allbinary.animation.NullIndexedAnimationInner_Package;
package org.allbinary.animation.NullIndexedAnimationInner_Package_References is
   type NullIndexedAnimationInner_Access is access all org.allbinary.animation.NullIndexedAnimationInner_Package.NullIndexedAnimationInner'Class;
   type NullIndexedAnimationInner_Access_Array is array (Natural range <>) of NullIndexedAnimationInner_Access;
   type NullIndexedAnimationInner_Access_Array_Access is access all NullIndexedAnimationInner_Access_Array;
   type NullIndexedAnimationInner_Access_Array_Access_Array is array (Natural range <>) of NullIndexedAnimationInner_Access_Array_Access;
   type NullIndexedAnimationInner_Access_Array_Access_Array_Access is access all NullIndexedAnimationInner_Access_Array_Access_Array;
end org.allbinary.animation.NullIndexedAnimationInner_Package_References;

with org.allbinary.animation.NullIndexedAnimationInner_Package_References;
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
with org.allbinary.animation.NullIndexedAnimation_Package; use org.allbinary.animation.NullIndexedAnimation_Package;
limited with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.NullIndexedAnimationInner_Package is

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
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   use type AnimationInterfaceFactoryInterface_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype NullIndexedAnimationInner_Access is org.allbinary.animation.NullIndexedAnimationInner_Package_References.NullIndexedAnimationInner_Access;
   function "=" (Left, Right : NullIndexedAnimationInner_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationInner_Package_References."=";
   subtype NullIndexedAnimationInner_Access_Array is org.allbinary.animation.NullIndexedAnimationInner_Package_References.NullIndexedAnimationInner_Access_Array;
   function "=" (Left, Right : NullIndexedAnimationInner_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimationInner_Package_References."=";
   subtype NullIndexedAnimationInner_Access_Array_Access is org.allbinary.animation.NullIndexedAnimationInner_Package_References.NullIndexedAnimationInner_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimationInner_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationInner_Package_References."=";
   subtype NullIndexedAnimationInner_Access_Array_Access_Array is org.allbinary.animation.NullIndexedAnimationInner_Package_References.NullIndexedAnimationInner_Access_Array_Access_Array;
   function "=" (Left, Right : NullIndexedAnimationInner_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimationInner_Package_References."=";
   subtype NullIndexedAnimationInner_Access_Array_Access_Array_Access is org.allbinary.animation.NullIndexedAnimationInner_Package_References.NullIndexedAnimationInner_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimationInner_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimationInner_Package_References."=";

   type NullIndexedAnimationInner is new NullIndexedAnimation with null record;

   procedure Initialize (This : in out NullIndexedAnimationInner'Class);
   function Create return NullIndexedAnimationInner_Access;
   procedure paintXY (This : in out NullIndexedAnimationInner; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.NullIndexedAnimationInner_Package;


