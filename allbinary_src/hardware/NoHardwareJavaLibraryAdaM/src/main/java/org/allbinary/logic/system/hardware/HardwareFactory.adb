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


package body org.allbinary.logic.system.hardware.HardwareFactory_Package is

   procedure Initialize_Fields (This : in out HardwareFactory'Class) is
   begin
      null;
      This.SINGLETON := NoHardware_Package.getInstance;
   end Initialize_Fields;


   function getInstance return HardwareFactory_Access is
   begin
        return HardwareFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HardwareFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HardwareFactory_Access is
      This : constant HardwareFactory_Access := new HardwareFactory;
   begin
      HardwareFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out HardwareFactory; os_Param : access OperatingSystemInterface'Class) return HardwareInterface_Access is
      os : OperatingSystemInterface_Access := OperatingSystemInterface_Access (os_Param);
   begin
        begin
            return This.SINGLETON;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out HardwareFactory; os_Param : access OperatingSystemInterface'Class) is
      Java_Result : constant HardwareInterface_Access := HardwareFactory'Class (This).getInstance (os_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


