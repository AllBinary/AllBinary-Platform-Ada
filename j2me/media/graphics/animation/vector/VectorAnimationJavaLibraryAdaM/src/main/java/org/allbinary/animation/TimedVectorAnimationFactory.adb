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


with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.animation.TimedVectorAnimation_Package; use org.allbinary.animation.TimedVectorAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.VectorAnimation_Package_References;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.animation.TimedVectorAnimation_Package;

package body org.allbinary.animation.TimedVectorAnimationFactory_Package is

   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype VectorAnimation_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access;
   function "=" (Left, Right : VectorAnimation_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array;
   function "=" (Left, Right : VectorAnimation_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
   subtype VectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimation_Package_References."=";
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


   function getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) return VectorAnimation_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        return VectorAnimation_Access (TimedVectorAnimation_Package.Create (points, basicColor, AnimationBehavior_Package.getInstance));
   end getInstance;

   procedure getInstance (This : in out TimedVectorAnimationFactory; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant VectorAnimation_Access := TimedVectorAnimationFactory'Class (This).getInstance (points => points, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.TimedVectorAnimationFactory_Package;


