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


package body org.allbinary.logic.system.os.solaris.SolarisOS_Package is

   procedure Initialize_Fields (This : in out SolarisOS'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SolarisOS'Class) is
   begin
      GenericOperatingSystem_Package.Initialize (This);
      Initialize_Fields (This);
        This.scalable := True;
   end Initialize;

   function Create return SolarisOS_Access is
      This : constant SolarisOS_Access := new SolarisOS;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isAutoHide (This : in out SolarisOS) return Boolean is
   begin
        return True;
   end isAutoHide;

   procedure isAutoHide (This : in out SolarisOS) is
      Java_Result : constant Boolean := SolarisOS'Class (This).isAutoHide;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAutoHide;

end org.allbinary.logic.system.os.solaris.SolarisOS_Package;


