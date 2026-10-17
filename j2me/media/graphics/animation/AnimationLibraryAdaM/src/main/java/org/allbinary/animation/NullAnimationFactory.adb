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


package body org.allbinary.animation.NullAnimationFactory_Package is

   procedure Initialize_Fields (This : in out NullAnimationFactory'Class) is
   begin
      null;
      This.NULL_ANIMATION := Animation_Package.Create  --  Java anonymous class body: implement it as a named type
--          
--     procedure paintXY (This : in out ; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
--        graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
--     begin
--              null;
--     end paintXY;
;
      This.EMPTY_ARRAY := new Animation_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;


   procedure Initialize (This : in out NullAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullAnimationFactory_Access is
      This : constant NullAnimationFactory_Access := new NullAnimationFactory;
   begin
      NullAnimationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getFactoryInstance return NullAnimationFactory_Access is
   begin
        return NullAnimationFactory_Package.NULL_ANIMATION_FACTORY;
   end getFactoryInstance;

   function getInstance (This : in out NullAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return This.NULL_ANIMATION;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out NullAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return This.NULL_ANIMATION;
   end getInstanceAnimation;

   procedure setInitialScale (This : in out NullAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out NullAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := NullAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out NullAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := NullAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

begin
   null;
   NULL_NOT_FOR_USE_ANIMATION_FACTORY := NullAnimationFactory_Package.Create;
   NULL_ANIMATION_FACTORY := NullAnimationFactory_Package.Create;

end org.allbinary.animation.NullAnimationFactory_Package;


