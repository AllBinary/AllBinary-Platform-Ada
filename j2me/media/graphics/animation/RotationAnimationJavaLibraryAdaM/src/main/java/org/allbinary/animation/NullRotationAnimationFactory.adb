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


package body org.allbinary.animation.NullRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out NullRotationAnimationFactory'Class) is
   begin
      null;
      This.NULL_ROTATION_ANIMATION_ARRAY := new RotationAnimation_Access_Array'(0 .. (0) - 1 => null);
      This.NULL_ANIMATION := NullRotationAnimation2_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out NullRotationAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullRotationAnimationFactory_Access is
      This : constant NullRotationAnimationFactory_Access := new NullRotationAnimationFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getFactoryInstance return NullRotationAnimationFactory_Access is
   begin
        return NullRotationAnimationFactory_Package.NULL_ROTATION_ANIMATION_FACTORY;
   end getFactoryInstance;

   function getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullRotationAnimationFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getFactoryInstance is
      Java_Result : constant NullRotationAnimationFactory_Access := getFactoryInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFactoryInstance;

   procedure getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := NullRotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_ROTATION_ANIMATION_FACTORY := NullRotationAnimationFactory_Package.Create;

end org.allbinary.animation.NullRotationAnimationFactory_Package;


package body org.allbinary.animation.NullRotationAnimation2_Package is

   procedure Initialize_Fields (This : in out NullRotationAnimation2'Class) is
   begin
      null;
   end Initialize_Fields;

    
   procedure Initialize (This : in out NullRotationAnimation2'Class) is
   begin
            null;
   end Initialize;

   function Create return NullRotationAnimation2_Access is
      This : constant NullRotationAnimation2_Access := new NullRotationAnimation2;
   begin
      Initialize (This.all);
      return This;
   end Create;
    
   procedure paintXY (This : in out NullRotationAnimation2; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
            null;
   end paintXY;

end org.allbinary.animation.NullRotationAnimation2_Package;


