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


package body org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access is
      This : constant SimultaneousCompoundIndexAnimationInterfaceFactory_Access := new SimultaneousCompoundIndexAnimationInterfaceFactory;
   begin
      Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
      size : Integer;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArray'Length;
        animationInterfaceArray := new IndexedAnimation_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            animationInterfaceArray (index) := IndexedAnimation_Access (This.basicAnimationInterfaceFactoryInterfaceArray (index).getInstance (instanceId));
        end loop;
        return This.getOrCreate (animationInterfaceArray);
   end getInstance;

   function getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) return Animation_Access is
   begin
        return SimultaneousCompoundIndexAnimation_Package.Create (animationInterfaceArray, This.animationBehaviorFactory.getOrCreateInstance);
   end getOrCreate;

   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.basicAnimationInterfaceFactoryInterfaceArray;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) is
      Java_Result : constant Animation_Access := SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getOrCreate (animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrCreate;

   procedure getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory) is
      Java_Result : constant AnimationInterfaceFactoryInterface_Access_Array_Access := SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getBasicAnimationInterfaceFactoryInterfaceArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package;


