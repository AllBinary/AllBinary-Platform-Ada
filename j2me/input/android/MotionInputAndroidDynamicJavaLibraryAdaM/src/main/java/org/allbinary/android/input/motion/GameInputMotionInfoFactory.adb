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


package body org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package is

   procedure Initialize_Fields (This : in out GameInputMotionInfoFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameInputMotionInfoFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInputMotionInfoFactory_Access is
      This : constant GameInputMotionInfoFactory_Access := new GameInputMotionInfoFactory;
   begin
      GameInputMotionInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameInputMotionInfo_Access is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (4) then
            return GameInputMotionInfoAPI1_Package.getInstance;
        else
            return GameInputMotionInfoAPI5_Package.getInstance;
        end if;
   end getInstance;

end org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package;


