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

   procedure Initialize (This : in out SWTProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SWTProcessor_Access is
      This : constant SWTProcessor_Access := new SWTProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return SWTProcessor_Access is
   begin
        return SWTProcessor_Package.instance;
   end getInstance;

   procedure process (This : in out SWTProcessor; display : Display_Access) is
   begin
        display.sleep;
   end process;

   procedure getInstance is
      Java_Result : constant SWTProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := SWTProcessor_Package.Create;

end org.allbinary.emulator.swt.SWTProcessor_Package;


