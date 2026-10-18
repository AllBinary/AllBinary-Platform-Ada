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


with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package body org.allbinary.animation.RotationAnimationFactory_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
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
   function getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return NullRotationAnimation_Package.createTotalAngle (AngleInfo_Package.getInstance (This.angleIncrement), This.totalAngle, AnimationBehavior_Package.getInstance);
   end getInstanceAnimation;

   procedure setInitialScale (This : in out RotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out RotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := RotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := RotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.RotationAnimationFactory_Package;


