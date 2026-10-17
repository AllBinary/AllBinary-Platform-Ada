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


package body org.allbinary.emulator.swt.SWTProcessor_Package is

   procedure Initialize_Fields (This : in out SWTProcessor'Class) is
   begin
      null;
      This.runnable := NullRunnable_Package.getInstance;
   end Initialize_Fields;


   function getInstance return SWTProcessor_Access is
   begin
        return SWTProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SWTProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SWTProcessor_Access is
      This : constant SWTProcessor_Access := new SWTProcessor;
   begin
      SWTProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out SWTProcessor; display_Param : access Display_Package.Display'Class) is
      display : constant Display_Access := Display_Access (display_Param);
   begin
        display.sleep;
   end process;

begin
   null;
   instance := SWTProcessor_Package.Create;

end org.allbinary.emulator.swt.SWTProcessor_Package;


