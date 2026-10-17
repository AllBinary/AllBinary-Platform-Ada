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


package body org.allbinary.animation.RotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out RotationAnimationFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   function createFactory return RotationAnimationFactory_Access is
      totalAngle : Short_Integer;
   begin
        totalAngle := AngleFactory_Package.getInstance.TOTAL_ANGLE;
        return RotationAnimationFactory_Package.Create (totalAngle, Short_Integer (((totalAngle) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))));
   end createFactory;

   procedure Initialize (This : in out RotationAnimationFactory'Class; totalAngle : Short_Integer; angleIncrement : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.totalAngle := totalAngle;
        This.angleIncrement := angleIncrement;
   end Initialize;

   function Create (totalAngle : Short_Integer; angleIncrement : Short_Integer) return RotationAnimationFactory_Access is
      This : constant RotationAnimationFactory_Access := new RotationAnimationFactory;
   begin
      RotationAnimationFactory_Package.Initialize (This.all, totalAngle, angleIncrement);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out RotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return NullRotationAnimation_Package.createTotalAngle (AngleInfo_Package.getInstance (This.angleIncrement), This.totalAngle, AnimationBehavior_Package.getInstance);
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation'Class) return Animation_Access is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return NullRotationAnimation_Package.createTotalAngle (AngleInfo_Package.getInstance (This.angleIncrement), This.totalAngle, AnimationBehavior_Package.getInstance);
   end getInstanceAnimation;

   procedure setInitialScale (This : in out RotationAnimationFactory; scaleProperties_Param : access ScaleProperties'Class) is
      scaleProperties : ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out RotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := RotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation'Class) is
      Java_Result : constant Animation_Access := RotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.RotationAnimationFactory_Package;


