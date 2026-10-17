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


package body org.allbinary.animation.TimedVectorAnimation_Package is

   procedure Initialize_Fields (This : in out TimedVectorAnimation'Class) is
   begin
      null;
      This.timeElapsedHelper := TimeDelayHelper_Package.Create (200);
   end Initialize_Fields;


   procedure Initialize (This : in out TimedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        VectorAnimation_Package.Initialize (This, currentPoints, basicColor, animationBehavior);
        Initialize_Fields (This);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TimedVectorAnimation_Access is
      This : constant TimedVectorAnimation_Access := new TimedVectorAnimation;
   begin
      TimedVectorAnimation_Package.Initialize (This.all, currentPoints, basicColor_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out TimedVectorAnimation) is
   begin
        if This.timeElapsedHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            VectorAnimation (This).nextFrame;
        end if;
   end nextFrame;

end org.allbinary.animation.TimedVectorAnimation_Package;


