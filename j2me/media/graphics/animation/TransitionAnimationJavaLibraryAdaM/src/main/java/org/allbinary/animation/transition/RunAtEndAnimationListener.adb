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


package body org.allbinary.animation.transition.RunAtEndAnimationListener_Package is

   procedure Initialize_Fields (This : in out RunAtEndAnimationListener'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RunAtEndAnimationListener'Class; runnable : Runnable_Access) is
   begin
      Initialize_Fields (This);
        This.runnable := runnable;
   end Initialize;

   function Create (runnable : Runnable_Access) return RunAtEndAnimationListener_Access is
      This : constant RunAtEndAnimationListener_Access := new RunAtEndAnimationListener;
   begin
      Initialize (This.all, runnable);
      return This;
   end Create;

   procedure onPlatformAnimationStart (This : in out RunAtEndAnimationListener) is
   begin
        null;
   end onPlatformAnimationStart;

   procedure onPlatformAnimationEnd (This : in out RunAtEndAnimationListener) is
   begin
        null;
   end onPlatformAnimationEnd;

   procedure onPlatformAnimationRepeat (This : in out RunAtEndAnimationListener) is
   begin
        null;
   end onPlatformAnimationRepeat;

end org.allbinary.animation.transition.RunAtEndAnimationListener_Package;


