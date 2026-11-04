-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package;
package org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References is
   type CustomTextBoxIndexedAnimationFactory_Access is access all org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package.CustomTextBoxIndexedAnimationFactory'Class;
   type CustomTextBoxIndexedAnimationFactory_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimationFactory_Access;
   type CustomTextBoxIndexedAnimationFactory_Access_Array_Access is access all CustomTextBoxIndexedAnimationFactory_Access_Array;
   type CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimationFactory_Access_Array_Access;
   type CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array_Access is access all CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References;

with org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype CustomTextBoxIndexedAnimationFactory_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References.CustomTextBoxIndexedAnimationFactory_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimationFactory_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References."=";
   subtype CustomTextBoxIndexedAnimationFactory_Access_Array is org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References.CustomTextBoxIndexedAnimationFactory_Access_Array;
   function "=" (Left, Right : CustomTextBoxIndexedAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References."=";
   subtype CustomTextBoxIndexedAnimationFactory_Access_Array_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References.CustomTextBoxIndexedAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References."=";
   subtype CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References.CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References."=";
   subtype CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References.CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package_References."=";

   type CustomTextBoxIndexedAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
      scaleProperties : ScaleProperties_Access;
      maxLength : Integer;
   end record;

   procedure Initialize (This : in out CustomTextBoxIndexedAnimationFactory'Class; fontSize : Integer; maxLength : Integer);
   function Create (fontSize : Integer; maxLength : Integer) return CustomTextBoxIndexedAnimationFactory_Access;
   function getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out CustomTextBoxIndexedAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out CustomTextBoxIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory_Package;


