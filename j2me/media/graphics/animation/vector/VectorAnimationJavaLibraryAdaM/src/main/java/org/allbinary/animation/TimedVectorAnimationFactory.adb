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


package body org.allbinary.animation.TimedVectorAnimationFactory_Package is

   procedure Initialize_Fields (This : in out TimedVectorAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TimedVectorAnimationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TimedVectorAnimationFactory_Access is
      This : constant TimedVectorAnimationFactory_Access := new TimedVectorAnimationFactory;
   begin
      TimedVectorAnimationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access) return VectorAnimation_Access is
   begin
        return TimedVectorAnimation_Package.Create (points, basicColor, AnimationBehavior_Package.getInstance);
   end getInstance;

   procedure getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access) is
      Java_Result : constant VectorAnimation_Access := TimedVectorAnimationFactory'Class (This).getInstance (points, basicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.TimedVectorAnimationFactory_Package;


