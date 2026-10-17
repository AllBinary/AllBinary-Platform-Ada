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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarAnimation_Access is
   begin
        return HealthBarThreedAnimation_Package.Create (layerInterface, location);
   end getInstanceByLocation;

   --  throws Exception
   function getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return null;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return null;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out HealthBarAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface : AllBinaryLayer_Access; location : Integer) is
      Java_Result : constant HealthBarAnimation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceByLocation (layerInterface, location);
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

   procedure getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;


