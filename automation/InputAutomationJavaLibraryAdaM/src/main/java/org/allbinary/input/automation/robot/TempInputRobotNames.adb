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


package body org.allbinary.input.automation.robot.TempInputRobotNames_Package is

   procedure Initialize_Fields (This : in out TempInputRobotNames'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TempInputRobotNames'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TempInputRobotNames_Access is
      This : constant TempInputRobotNames_Access := new TempInputRobotNames;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   LOW_NAME := To_Unbounded_String ("Low Level");
   SYS_NAME := To_Unbounded_String ("System Drivers");
   DX_NAME := To_Unbounded_String ("DirectX");

end org.allbinary.input.automation.robot.TempInputRobotNames_Package;


