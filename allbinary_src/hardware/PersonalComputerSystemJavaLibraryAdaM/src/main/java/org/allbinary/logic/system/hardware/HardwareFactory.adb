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


with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.logic.system.hardware.linux.LinuxHardware_Package; use org.allbinary.logic.system.hardware.linux.LinuxHardware_Package;
with org.allbinary.logic.system.hardware.windows.WindowsHardware_Package; use org.allbinary.logic.system.hardware.windows.WindowsHardware_Package;

package body org.allbinary.logic.system.hardware.HardwareFactory_Package is

   package OperatingSystems_Package renames Standard.org.allbinary.logic.system.os.OperatingSystems_Package;
   package LinuxHardware_Package renames Standard.org.allbinary.logic.system.hardware.linux.LinuxHardware_Package;
   package WindowsHardware_Package renames Standard.org.allbinary.logic.system.hardware.windows.WindowsHardware_Package;
   procedure Initialize_Fields (This : in out HardwareFactory'Class) is
   begin
      null;
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
   function getInstance (os_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) return HardwareInterface_Access is
      os : constant GenericOperatingSystem_Access := GenericOperatingSystem_Access (os_Param);
      operatingSystems : OperatingSystems_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            if (Java_Compare_To (os.getName, operatingSystems.LINUX)) = (0) then
                return HardwareInterface_Access (LinuxHardware_Package.Create);
            elsif (Java_Index_Of (os.getName, Java_Image (operatingSystems.WINDOWS))) >= (0) then
                return HardwareInterface_Access (WindowsHardware_Package.Create);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Hardware Imp for: ") & os.getName));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (os_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) is
      Java_Result : constant HardwareInterface_Access := getInstance (os_Param => os_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


