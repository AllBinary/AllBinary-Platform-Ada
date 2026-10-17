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


package body org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package is

   procedure Initialize_Fields (This : in out GameInputMotionInfoAPI1'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameInputMotionInfoAPI1_Access is
   begin
        return GameInputMotionInfoAPI1_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameInputMotionInfoAPI1'Class) is
   begin
        GameInputMotionInfo_Package.Initialize (This, 4, 1);
   end Initialize;

   function Create return GameInputMotionInfoAPI1_Access is
      This : constant GameInputMotionInfoAPI1_Access := new GameInputMotionInfoAPI1;
   begin
      GameInputMotionInfoAPI1_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameInputMotionInfoAPI1_Package.Create;

end org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1_Package;


