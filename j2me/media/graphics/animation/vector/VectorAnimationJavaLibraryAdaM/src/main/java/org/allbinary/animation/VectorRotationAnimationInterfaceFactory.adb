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


package body org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out VectorRotationAnimationInterfaceFactory'Class) is
   begin
      null;
      This.currentPoints := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out VectorRotationAnimationInterfaceFactory'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.currentPoints := currentPoints;
        This.setBasicColorP (basicColor);
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return VectorRotationAnimationInterfaceFactory_Access is
      This : constant VectorRotationAnimationInterfaceFactory_Access := new VectorRotationAnimationInterfaceFactory;
   begin
      Initialize (This.all, currentPoints, basicColor, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return VectorRotationAnimation_Package.Create (This.currentPoints, This.getBasicColorP, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   procedure setBasicColorP (This : in out VectorRotationAnimationInterfaceFactory; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out VectorRotationAnimationInterfaceFactory) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setInitialScale (This : in out VectorRotationAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := VectorRotationAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getBasicColorP (This : in out VectorRotationAnimationInterfaceFactory) is
      Java_Result : constant BasicColor_Access := VectorRotationAnimationInterfaceFactory'Class (This).getBasicColorP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColorP;

end org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package;


