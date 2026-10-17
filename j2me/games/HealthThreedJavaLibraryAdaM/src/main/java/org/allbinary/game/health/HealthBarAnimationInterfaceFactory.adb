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


package body org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out HealthBarAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBarAnimationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HealthBarAnimationInterfaceFactory_Access is
      This : constant HealthBarAnimationInterfaceFactory_Access := new HealthBarAnimationInterfaceFactory;
   begin
      HealthBarAnimationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer'Class; location : Integer) return HealthBarAnimation_Access is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        return HealthBarThreedAnimation_Package.Create (layerInterface, location);
   end getInstanceByLocation;

   --  throws Exception
   function getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return null;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation'Class) return Animation_Access is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return null;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out HealthBarAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties'Class) is
      scaleProperties : ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer'Class; location : Integer) is
      Java_Result : constant HealthBarAnimation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceByLocation (layerInterface_Param, location);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceByLocation;

   procedure getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation'Class) is
      Java_Result : constant Animation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;


