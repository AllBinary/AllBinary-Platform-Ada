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


package body org.allbinary.animation.NullSpecialAnimationFactory_Package is

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
   function getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return SpecialAnimation_Package.getInstance;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullSpecialAnimationFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullSpecialAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := NullSpecialAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_SPECIAL_ANIMATION_FACTORY := NullSpecialAnimationFactory_Package.Create;

end org.allbinary.animation.NullSpecialAnimationFactory_Package;


