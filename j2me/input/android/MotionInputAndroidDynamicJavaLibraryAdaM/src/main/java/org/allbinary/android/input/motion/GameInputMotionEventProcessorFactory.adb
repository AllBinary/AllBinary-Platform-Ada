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


with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package; use org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;
with org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package; use org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;

package body org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package GameInputMotionEventProcessorAPI1_Package renames Standard.org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;
   package GameInputMotionEventProcessorAPI5_Package renames Standard.org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;
   procedure Initialize_Fields (This : in out GameInputMotionEventProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameInputMotionEventProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInputMotionEventProcessorFactory_Access is
      This : constant GameInputMotionEventProcessorFactory_Access := new GameInputMotionEventProcessorFactory;
   begin
      GameInputMotionEventProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BaseGameInputMotionEventProcessor_Access is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (4) then
            return GameInputMotionEventProcessorAPI1_Package.getInstance;
        else
            return GameInputMotionEventProcessorAPI5_Package.getInstance;
        end if;
   end getInstance;

end org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;


