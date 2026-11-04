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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.game.health.HealthBarThreedAnimation_Package; use org.allbinary.game.health.HealthBarThreedAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package_References;
with org.allbinary.game.health.HealthBarThreedAnimation_Package;

package body org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package is

   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
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
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype HealthBarAnimation_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access;
   function "=" (Left, Right : HealthBarAnimation_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
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
   function getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarAnimation_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        return HealthBarAnimation_Access (HealthBarThreedAnimation_Package.Create (layerInterface, location));
   end getInstanceByLocation;

   --  throws Exception
   function getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return null;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return null;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out HealthBarAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) is
      Java_Result : constant HealthBarAnimation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceByLocation (layerInterface_Param => layerInterface_Param, location => location);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceByLocation;

   procedure getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := HealthBarAnimationInterfaceFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;


