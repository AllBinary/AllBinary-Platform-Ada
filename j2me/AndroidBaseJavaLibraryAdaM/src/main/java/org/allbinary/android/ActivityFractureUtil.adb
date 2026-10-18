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



package body org.allbinary.android.ActivityFractureUtil_Package is

   procedure Initialize_Fields (This : in out ActivityFractureUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureUtil_Access is
      This : constant ActivityFractureUtil_Access := new ActivityFractureUtil;
   begin
      ActivityFractureUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure process (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        null;
   end process;

   procedure setFullScreen (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        null;
   end setFullScreen;

end org.allbinary.android.ActivityFractureUtil_Package;


