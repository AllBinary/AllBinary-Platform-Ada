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


package body org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out CompoundAnimationInterfaceFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.basicAnimationInterfaceFactoryInterfaceArrayP := basicAnimationInterfaceFactoryInterfaceArray;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return CompoundAnimationInterfaceFactory_Access is
      This : constant CompoundAnimationInterfaceFactory_Access := new CompoundAnimationInterfaceFactory;
   begin
      CompoundAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
      size : Integer;
      animationInterfaceArray : Animation_Access_Array_Access;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArrayP'Length;
        animationInterfaceArray := This.createArray (size);
        for index in 0 .. (size) - 1 loop
            animationInterfaceArray (index) := This.basicAnimationInterfaceFactoryInterfaceArrayP (index).getInstance (instanceId);
        end loop;
        return This.createAnimation (animationInterfaceArray);
   end getInstance;

   function createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.EMPTY_ARRAY;
   end createArray;

   function createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end createAnimation;

   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out CompoundAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.basicAnimationInterfaceFactoryInterfaceArrayP;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out CompoundAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access) is
      size : Integer;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArrayP'Length;
        for index in 0 .. (size) - 1 loop
            This.basicAnimationInterfaceFactoryInterfaceArrayP (index).setInitialScale (scaleProperties);
        end loop;
   end setInitialScale;

   procedure getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := CompoundAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := CompoundAnimationInterfaceFactory'Class (This).createArray (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := CompoundAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;


