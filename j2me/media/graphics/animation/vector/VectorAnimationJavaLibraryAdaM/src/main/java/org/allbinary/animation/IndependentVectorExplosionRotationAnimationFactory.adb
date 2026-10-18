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


package body org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out IndependentVectorExplosionRotationAnimationFactory'Class) is
   begin
      null;
      This.framePoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      
      
      
      This.vectorExplosionGenerator := VectorExplosionGenerator_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out IndependentVectorExplosionRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class) is
      vectorInfo : constant VectorInfo_Access := VectorInfo_Access (vectorInfo_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      vectorAnimationFactoryInterface : constant VectorAnimationFactoryInterface_Access := VectorAnimationFactoryInterface_Access (vectorAnimationFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.vectorInfo := vectorInfo;
        This.basicColor := basicColor;
        This.vectorAnimationFactoryInterface := vectorAnimationFactoryInterface;
        IndependentVectorExplosionRotationAnimationFactory'Class (This).init;
   end Initialize;

   function Create (vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class) return IndependentVectorExplosionRotationAnimationFactory_Access is
      This : constant IndependentVectorExplosionRotationAnimationFactory_Access := new IndependentVectorExplosionRotationAnimationFactory;
   begin
      IndependentVectorExplosionRotationAnimationFactory_Package.Initialize (This.all, vectorInfo_Param, basicColor_Param, vectorAnimationFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out IndependentVectorExplosionRotationAnimationFactory) is
   begin
        This.framePoints := VectorRotationGenerator_Package.getInstance.getInstance (This.vectorInfo);
   end init;

   --  throws Exception
   function getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      frame : Integer;
      rotationAnimationInterface : IndexedAnimation_Access;
      points : Integer_Array_Access_Array_Access_Array_Access;
   begin
        frame := 0;
        if (animationInterface) /= (null) then
            rotationAnimationInterface := IndexedAnimation_Access (animationInterface);
            frame := rotationAnimationInterface.getFrame;
        end if;
        points := This.vectorExplosionGenerator.getInstance (This.framePoints (frame), 6, This.vectorExplosionGenerator.ROTATION);
        return This.vectorAnimationFactoryInterface.getInstance (points, This.basicColor);
   end getInstanceAnimation;

   procedure getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := IndependentVectorExplosionRotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package;


