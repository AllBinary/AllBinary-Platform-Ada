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


with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;

package body org.allbinary.animation.NullSpecialAnimationFactory_Package is

   package SpecialAnimation_Package renames Standard.org.allbinary.animation.special.SpecialAnimation_Package;
   procedure Initialize_Fields (This : in out NullSpecialAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullSpecialAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullSpecialAnimationFactory_Access is
      This : constant NullSpecialAnimationFactory_Access := new NullSpecialAnimationFactory;
   begin
      NullSpecialAnimationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getFactoryInstance return NullSpecialAnimationFactory_Access is
   begin
        return NullSpecialAnimationFactory_Package.NULL_SPECIAL_ANIMATION_FACTORY;
   end getFactoryInstance;

   --  throws Exception
   function getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return SpecialAnimation_Package.getInstance;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return SpecialAnimation_Package.getInstance;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullSpecialAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullSpecialAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := NullSpecialAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_SPECIAL_ANIMATION_FACTORY := NullSpecialAnimationFactory_Package.Create;

end org.allbinary.animation.NullSpecialAnimationFactory_Package;


