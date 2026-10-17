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


package body org.allbinary.animation.vector.LineAnimationFactory_Package is

   procedure Initialize_Fields (This : in out LineAnimationFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LineAnimationFactory'Class; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Initialize_Fields (This);
        This.basicColor := basicColor;
   end Initialize;

   function Create (basicColor_Param : access BasicColor'Class) return LineAnimationFactory_Access is
      This : constant LineAnimationFactory_Access := new LineAnimationFactory;
   begin
      LineAnimationFactory_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out LineAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return LineAnimation_Package.Create (This.basicColor);
   end getInstance;

   procedure setInitialScale (This : in out LineAnimationFactory; scaleProperties_Param : access ScaleProperties'Class) is
      scaleProperties : ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out LineAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := LineAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.vector.LineAnimationFactory_Package;


