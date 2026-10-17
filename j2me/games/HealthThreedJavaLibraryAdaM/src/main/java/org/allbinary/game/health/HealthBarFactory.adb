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


package body org.allbinary.game.health.HealthBarFactory_Package is

   procedure Initialize_Fields (This : in out HealthBarFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HealthBarFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HealthBarFactory_Access is
      This : constant HealthBarFactory_Access := new HealthBarFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out HealthBarFactory; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; location : Integer; direction : Integer) return HealthBar_Access is
      featuredAnimationInterfaceFactoryInterfaceFactory : FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;
      healthBarAnimationInterfaceFactory : HealthBarAnimationInterfaceFactory_Access;
   begin
        if OpenGLFeatureUtil_Package.getInstance.isAnyThreed then
            featuredAnimationInterfaceFactoryInterfaceFactory := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance;
            healthBarAnimationInterfaceFactory := HealthBarAnimationInterfaceFactory_Access (featuredAnimationInterfaceFactoryInterfaceFactory.get (Health_Package.NAME));
            return HealthBar_Package.Create (layerInterface, healthInterface, healthBarAnimationInterfaceFactory.getInstanceByLocation (layerInterface, location), direction);
        else
            return HealthBar_Package.Create (layerInterface, healthInterface, HealthBarTwodAnimation_Package.Create (layerInterface, location), direction);
        end if;
   end getInstance;

   procedure getInstance (This : in out HealthBarFactory; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; location : Integer; direction : Integer) is
      Java_Result : constant HealthBar_Access := HealthBarFactory'Class (This).getInstance (layerInterface, healthInterface, location, direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.health.HealthBarFactory_Package;


