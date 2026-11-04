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


with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.health.HealthBar_Package; use org.allbinary.game.health.HealthBar_Package;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package; use org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;
with org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;

package body org.allbinary.game.health.HealthBarFactory_Package is

   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype HealthBar_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access;
   function "=" (Left, Right : HealthBar_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array;
   function "=" (Left, Right : HealthBar_Access_Array) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access;
   function "=" (Left, Right : HealthBar_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBar_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   function "=" (Left, Right : Health_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   function "=" (Left, Right : Health_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   function "=" (Left, Right : Health_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
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
      HealthBarFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out HealthBarFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) return HealthBar_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
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

   procedure getInstance (This : in out HealthBarFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) is
      Java_Result : constant HealthBar_Access := HealthBarFactory'Class (This).getInstance (layerInterface_Param => layerInterface_Param, healthInterface_Param => healthInterface_Param, location => location, direction => direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.health.HealthBarFactory_Package;


