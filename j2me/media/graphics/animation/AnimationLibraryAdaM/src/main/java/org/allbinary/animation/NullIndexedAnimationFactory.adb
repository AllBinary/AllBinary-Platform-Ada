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


package body org.allbinary.animation.NullIndexedAnimationFactory_Package is

   procedure Initialize_Fields (This : in out NullIndexedAnimationFactory'Class) is
   begin
      null;
      This.NULL_ANIMATION := NullIndexedAnimationInner_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out NullIndexedAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullIndexedAnimationFactory_Access is
      This : constant NullIndexedAnimationFactory_Access := new NullIndexedAnimationFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getFactoryInstance return NullIndexedAnimationFactory_Access is
   begin
        return NullIndexedAnimationFactory_Package.NULL_INDEXED_ANIMATION_FACTORY;
   end getFactoryInstance;

   --  throws Exception
   function getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullIndexedAnimationFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getFactoryInstance is
      Java_Result : constant NullIndexedAnimationFactory_Access := getFactoryInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFactoryInstance;

   procedure getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullIndexedAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := NullIndexedAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_INDEXED_ANIMATION_ARRAY := new IndexedAnimation_Access_Array'(0 .. (0) - 1 => null);
   NULL_INDEXED_ANIMATION_FACTORY := NullIndexedAnimationFactory_Package.Create;

end org.allbinary.animation.NullIndexedAnimationFactory_Package;


package body org.allbinary.animation.NullIndexedAnimationInner_Package is

   procedure Initialize_Fields (This : in out NullIndexedAnimationInner'Class) is
   begin
      null;
   end Initialize_Fields;

    
   procedure Initialize (This : in out NullIndexedAnimationInner'Class) is
   begin
            null;
   end Initialize;

   function Create return NullIndexedAnimationInner_Access is
      This : constant NullIndexedAnimationInner_Access := new NullIndexedAnimationInner;
   begin
      Initialize (This.all);
      return This;
   end Create;
    
   procedure paintXY (This : in out NullIndexedAnimationInner; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
            null;
   end paintXY;

end org.allbinary.animation.NullIndexedAnimationInner_Package;


