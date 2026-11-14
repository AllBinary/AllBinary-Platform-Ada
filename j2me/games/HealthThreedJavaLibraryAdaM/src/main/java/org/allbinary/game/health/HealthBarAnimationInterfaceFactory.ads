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
limited with org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;
package org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References is
   type HealthBarAnimationInterfaceFactory_Access is access all org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package.HealthBarAnimationInterfaceFactory'Class;
   type HealthBarAnimationInterfaceFactory_Access_Array is array (Natural range <>) of HealthBarAnimationInterfaceFactory_Access;
   type HealthBarAnimationInterfaceFactory_Access_Array_Access is access all HealthBarAnimationInterfaceFactory_Access_Array;
   type HealthBarAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of HealthBarAnimationInterfaceFactory_Access_Array_Access;
   type HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all HealthBarAnimationInterfaceFactory_Access_Array_Access_Array;
   type HealthBarAnimationInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthBarAnimationInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthBarAnimationInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthBarAnimationInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthBarAnimationInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in HealthBarAnimationInterfaceFactory_Access_Array_Object'Class then HealthBarAnimationInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class then HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References;

with org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
limited with org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package_References;

package org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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
   subtype HealthBarAnimation_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access;
   use type HealthBarAnimation_Access;
   subtype HealthBarAnimation_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array;
   use type HealthBarAnimation_Access_Array;
   subtype HealthBarAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access;
   use type HealthBarAnimation_Access_Array_Access;
   subtype HealthBarAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array;
   use type HealthBarAnimation_Access_Array_Access_Array;
   subtype HealthBarAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array_Access;
   use type HealthBarAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthBarAnimationInterfaceFactory_Access is org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.HealthBarAnimationInterfaceFactory_Access;
   function "=" (Left, Right : HealthBarAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References."=";
   subtype HealthBarAnimationInterfaceFactory_Access_Array is org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.HealthBarAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : HealthBarAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References."=";
   subtype HealthBarAnimationInterfaceFactory_Access_Array_Access is org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.HealthBarAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : HealthBarAnimationInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array (Value : access Java_Object'Class) return HealthBarAnimationInterfaceFactory_Access_Array_Access renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array;
   subtype HealthBarAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.HealthBarAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References."=";
   subtype HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthBarAnimationInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package_References.Java_Unbox_HealthBarAnimationInterfaceFactory_Access_Array_Access_Array;

   type HealthBarAnimationInterfaceFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out HealthBarAnimationInterfaceFactory'Class);
   function Create return HealthBarAnimationInterfaceFactory_Access;
   function getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarAnimation_Access;
   procedure getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out HealthBarAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;


