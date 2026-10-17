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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (os : GenericOperatingSystem_Access) return HardwareInterface_Access is
      operatingSystems : OperatingSystems_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            if (os.getName.compareTo (operatingSystems.LINUX)) = (0) then
                return HardwareInterface_Access (LinuxHardware_Package.Create);
            elsif (os.getName.indexOf (operatingSystems.WINDOWS)) >= (0) then
                return HardwareInterface_Access (WindowsHardware_Package.Create);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Hardware Imp for: ") & os.getName));
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant HardwareFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (os : GenericOperatingSystem_Access) is
      Java_Result : constant HardwareInterface_Access := getInstance (os);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


