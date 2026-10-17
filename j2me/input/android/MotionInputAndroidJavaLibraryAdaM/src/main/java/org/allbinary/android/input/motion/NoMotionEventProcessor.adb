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


package body org.allbinary.android.input.motion.NoMotionEventProcessor_Package is

   procedure Initialize_Fields (This : in out NoMotionEventProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoMotionEventProcessor'Class) is
   begin
      MotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoMotionEventProcessor_Access is
      This : constant NoMotionEventProcessor_Access := new NoMotionEventProcessor;
   begin
      NoMotionEventProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MotionEventProcessor_Access is
   begin
        return NoMotionEventProcessor_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := MotionEventProcessor_Package.Create;

end org.allbinary.android.input.motion.NoMotionEventProcessor_Package;


