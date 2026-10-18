-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.emulator.swt.SWTProcessorUtil_Package is

   procedure Initialize_Fields (This : in out SWTProcessorUtil'Class) is
   begin
      null;
      This.swtProcessor := SWTProcessor_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SWTProcessorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SWTProcessorUtil_Access is
      This : constant SWTProcessorUtil_Access := new SWTProcessorUtil;
   begin
      SWTProcessorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SWTProcessorUtil_Access is
   begin
        return SWTProcessorUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := SWTProcessorUtil_Package.Create;

end org.allbinary.emulator.swt.SWTProcessorUtil_Package;


