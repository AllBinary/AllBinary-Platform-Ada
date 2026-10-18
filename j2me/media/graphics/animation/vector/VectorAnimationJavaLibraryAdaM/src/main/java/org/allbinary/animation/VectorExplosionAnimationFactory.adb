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


package body org.allbinary.animation.VectorExplosionAnimationFactory_Package is

   procedure Initialize_Fields (This : in out VectorExplosionAnimationFactory'Class) is
   begin
      null;
      This.vectorExplosionGenerator := VectorExplosionGenerator_Package.getInstance;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out VectorExplosionAnimationFactory'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.animationBehaviorFactory := animationBehaviorFactory;
        VectorExplosionAnimationFactory'Class (This).setBasicColorP (basicColor);
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorExplosionAnimationFactory_Access is
      This : constant VectorExplosionAnimationFactory_Access := new VectorExplosionAnimationFactory;
   begin
      VectorExplosionAnimationFactory_Package.Initialize (This.all, basicColor_Param, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      vectorRotationAnimationInterface : VectorAnimationInterface_Access;
      frame : Integer;
      framePoints : Integer_Array_Access_Array_Access;
      points : Integer_Array_Access_Array_Access_Array_Access;
   begin
        vectorRotationAnimationInterface := VectorAnimationInterface_Access (animationInterface);
        frame := vectorRotationAnimationInterface.getFrame;
        framePoints := vectorRotationAnimationInterface.getPoints (frame);
        points := This.vectorExplosionGenerator.getInstance (framePoints, 6, This.vectorExplosionGenerator.ROTATION);
        return VectorRotationAnimation_Package.Create (points, VectorExplosionAnimationFactory'Class (This).getBasicColorP, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstanceAnimation;

   procedure setBasicColorP (This : in out VectorExplosionAnimationFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out VectorExplosionAnimationFactory) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := VectorExplosionAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.VectorExplosionAnimationFactory_Package;


