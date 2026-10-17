--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


package body org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package is

   procedure Initialize_Fields (This : in out GameInputMotionInfoAPI5'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameInputMotionInfoAPI5_Access is
   begin
        return GameInputMotionInfoAPI5_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameInputMotionInfoAPI5'Class) is
   begin
        GameInputMotionInfo_Package.Initialize (This, Integer_Package.MAX_VALUE, 10);
   end Initialize;

   function Create return GameInputMotionInfoAPI5_Access is
      This : constant GameInputMotionInfoAPI5_Access := new GameInputMotionInfoAPI5;
   begin
      GameInputMotionInfoAPI5_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameInputMotionInfoAPI5_Package.Create;

end org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;


