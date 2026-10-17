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


package body org.allbinary.animation.VectorAnimationFactory_Package is

   procedure Initialize_Fields (This : in out VectorAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VectorAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VectorAnimationFactory_Access is
      This : constant VectorAnimationFactory_Access := new VectorAnimationFactory;
   begin
      VectorAnimationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out VectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class) return VectorAnimation_Access is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        return VectorAnimation_Package.Create (points, basicColor, AnimationBehavior_Package.getInstance);
   end getInstance;

   procedure getInstance (This : in out VectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class) is
      Java_Result : constant VectorAnimation_Access := VectorAnimationFactory'Class (This).getInstance (points, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.VectorAnimationFactory_Package;


