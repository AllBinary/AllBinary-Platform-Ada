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

limited with org.allbinary.animation.vector.LineAnimationFactory_Package;
package org.allbinary.animation.vector.LineAnimationFactory_Package_References is
   type LineAnimationFactory_Access is access all org.allbinary.animation.vector.LineAnimationFactory_Package.LineAnimationFactory'Class;
   type LineAnimationFactory_Access_Array is array (Natural range <>) of LineAnimationFactory_Access;
   type LineAnimationFactory_Access_Array_Access is access all LineAnimationFactory_Access_Array;
   type LineAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of LineAnimationFactory_Access_Array_Access;
   type LineAnimationFactory_Access_Array_Access_Array_Access is access all LineAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.vector.LineAnimationFactory_Package_References;

with org.allbinary.animation.vector.LineAnimationFactory_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.vector.LineAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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


   subtype LineAnimationFactory_Access is org.allbinary.animation.vector.LineAnimationFactory_Package_References.LineAnimationFactory_Access;
   function "=" (Left, Right : LineAnimationFactory_Access) return Boolean renames org.allbinary.animation.vector.LineAnimationFactory_Package_References."=";
   subtype LineAnimationFactory_Access_Array is org.allbinary.animation.vector.LineAnimationFactory_Package_References.LineAnimationFactory_Access_Array;
   function "=" (Left, Right : LineAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.vector.LineAnimationFactory_Package_References."=";
   subtype LineAnimationFactory_Access_Array_Access is org.allbinary.animation.vector.LineAnimationFactory_Package_References.LineAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : LineAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.LineAnimationFactory_Package_References."=";
   subtype LineAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.vector.LineAnimationFactory_Package_References.LineAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LineAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.LineAnimationFactory_Package_References."=";
   subtype LineAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.vector.LineAnimationFactory_Package_References.LineAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LineAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.LineAnimationFactory_Package_References."=";

   type LineAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      basicColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out LineAnimationFactory'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return LineAnimationFactory_Access;
   function getInstance (This : in out LineAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out LineAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out LineAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.vector.LineAnimationFactory_Package;


