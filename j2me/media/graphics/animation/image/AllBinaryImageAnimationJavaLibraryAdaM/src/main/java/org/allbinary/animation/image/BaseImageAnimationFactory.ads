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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package; use org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.animation.image.BaseImageAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package NullAnimationFactory_Package renames org.allbinary.animation.NullAnimationFactory_Package;
   package AnimationFactoryImageScaleUtil_Package renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type BaseImageAnimationFactory is tagged;
   type BaseImageAnimationFactory_Access is access all BaseImageAnimationFactory'Class;
   type BaseImageAnimationFactory_Access_Array is array (Natural range <>) of BaseImageAnimationFactory_Access;
   type BaseImageAnimationFactory_Access_Array_Access is access all BaseImageAnimationFactory_Access_Array;

   type BaseImageAnimationFactory is new AnimationInterfaceFactoryInterface with record
      animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil_Access;
      image : Image_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
      sequenceArray : Integer_Array_Access;
      animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out BaseImageAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return BaseImageAnimationFactory_Access;
   function createFactoryBase (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return BaseImageAnimationFactory_Access;
   procedure createFactoryBase (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out BaseImageAnimationFactory; instanceId : Integer);
   function getImage (This : in out BaseImageAnimationFactory) return Image_Access;
   procedure getImage (This : in out BaseImageAnimationFactory);
   function getSequenceArray (This : in out BaseImageAnimationFactory) return Integer_Array_Access;
   procedure getSequenceArray (This : in out BaseImageAnimationFactory);
   procedure setInitialScale (This : in out BaseImageAnimationFactory; scaleProperties : ScaleProperties_Access);
   function getAnimationFactoryInitializationVisitorP (This : in out BaseImageAnimationFactory) return AnimationFactoryInitializationVisitor_Access;
   procedure getAnimationFactoryInitializationVisitorP (This : in out BaseImageAnimationFactory);
   function getScalePropertiesP (This : in out BaseImageAnimationFactory) return ScaleProperties_Access;
   procedure getScalePropertiesP (This : in out BaseImageAnimationFactory);
   function toString (This : in out BaseImageAnimationFactory) return Unbounded_String;
   procedure toString (This : in out BaseImageAnimationFactory);

end org.allbinary.animation.image.BaseImageAnimationFactory_Package;


