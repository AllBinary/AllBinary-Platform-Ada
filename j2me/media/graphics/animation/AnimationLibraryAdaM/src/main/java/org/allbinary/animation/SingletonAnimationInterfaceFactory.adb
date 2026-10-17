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


package body org.allbinary.animation.SingletonAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out SingletonAnimationInterfaceFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SingletonAnimationInterfaceFactory'Class; animationInterface : Animation_Access) is
   begin
      Initialize_Fields (This);
        This.animationInterface := animationInterface;
   end Initialize;

   function Create (animationInterface : Animation_Access) return SingletonAnimationInterfaceFactory_Access is
      This : constant SingletonAnimationInterfaceFactory_Access := new SingletonAnimationInterfaceFactory;
   begin
      Initialize (This.all, animationInterface);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out SingletonAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
   begin
        return This.animationInterface;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out SingletonAnimationInterfaceFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.animationInterface;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out SingletonAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out SingletonAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := SingletonAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out SingletonAnimationInterfaceFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := SingletonAnimationInterfaceFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;


