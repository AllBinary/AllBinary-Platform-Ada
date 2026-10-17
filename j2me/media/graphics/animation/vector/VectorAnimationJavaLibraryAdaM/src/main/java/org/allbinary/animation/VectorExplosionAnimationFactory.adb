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


   procedure Initialize (This : in out VectorExplosionAnimationFactory'Class; basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.animationBehaviorFactory := animationBehaviorFactory;
        This.setBasicColorP (basicColor);
   end Initialize;

   function Create (basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return VectorExplosionAnimationFactory_Access is
      This : constant VectorExplosionAnimationFactory_Access := new VectorExplosionAnimationFactory;
   begin
      VectorExplosionAnimationFactory_Package.Initialize (This.all, basicColor, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
      vectorRotationAnimationInterface : VectorAnimationInterface_Access;
      frame : Integer;
      framePoints : Integer_Array_Access_Array_Access;
      points : Integer_Array_Access_Array_Access_Array_Access;
   begin
        vectorRotationAnimationInterface := VectorAnimationInterface_Access (animationInterface);
        frame := vectorRotationAnimationInterface.getFrame;
        framePoints := vectorRotationAnimationInterface.getPoints (frame);
        points := This.vectorExplosionGenerator.getInstance (framePoints, 6, This.vectorExplosionGenerator.ROTATION);
        return VectorRotationAnimation_Package.Create (points, This.getBasicColorP, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstanceAnimation;

   procedure setBasicColorP (This : in out VectorExplosionAnimationFactory; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out VectorExplosionAnimationFactory) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := VectorExplosionAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.VectorExplosionAnimationFactory_Package;


