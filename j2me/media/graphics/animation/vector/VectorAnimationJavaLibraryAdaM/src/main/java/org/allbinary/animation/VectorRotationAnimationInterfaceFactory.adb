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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.animation.VectorRotationAnimation_Package; use org.allbinary.animation.VectorRotationAnimation_Package;

package body org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out VectorRotationAnimationInterfaceFactory'Class) is
   begin
      null;
      This.currentPoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out VectorRotationAnimationInterfaceFactory'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.currentPoints := currentPoints;
        VectorRotationAnimationInterfaceFactory'Class (This).setBasicColorP (basicColor);
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorRotationAnimationInterfaceFactory_Access is
      This : constant VectorRotationAnimationInterfaceFactory_Access := new VectorRotationAnimationInterfaceFactory;
   begin
      VectorRotationAnimationInterfaceFactory_Package.Initialize (This.all, currentPoints, basicColor_Param, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return Animation_Access (VectorRotationAnimation_Package.Create (This.currentPoints, VectorRotationAnimationInterfaceFactory'Class (This).getBasicColorP, This.animationBehaviorFactory.getOrCreateInstance));
   end getInstance;

   procedure setBasicColorP (This : in out VectorRotationAnimationInterfaceFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out VectorRotationAnimationInterfaceFactory) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setInitialScale (This : in out VectorRotationAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := VectorRotationAnimationInterfaceFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package;


