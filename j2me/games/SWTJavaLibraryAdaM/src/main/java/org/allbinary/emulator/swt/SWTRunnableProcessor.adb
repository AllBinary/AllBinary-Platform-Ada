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


package body org.allbinary.emulator.swt.SWTRunnableProcessor_Package is

   procedure Initialize_Fields (This : in out SWTRunnableProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return SWTRunnableProcessor_Access is
   begin
        return SWTRunnableProcessor_Package.instanceR;
   end getInstance;

   procedure Initialize (This : in out SWTRunnableProcessor'Class) is
   begin
      SWTProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SWTRunnableProcessor_Access is
      This : constant SWTRunnableProcessor_Access := new SWTRunnableProcessor;
   begin
      SWTRunnableProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out SWTRunnableProcessor; display_Param : access Display_Package.Display'Class) is
      display : constant Display_Access := Display_Access (display_Param);
   begin
        This.runnable.run;
   end process;

begin
   null;
   instanceR := SWTRunnableProcessor_Package.Create;

end org.allbinary.emulator.swt.SWTRunnableProcessor_Package;


