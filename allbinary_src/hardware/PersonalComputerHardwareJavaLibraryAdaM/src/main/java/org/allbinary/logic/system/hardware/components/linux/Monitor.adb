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



package body org.allbinary.logic.system.hardware.components.linux.Monitor_Package is

   procedure Initialize_Fields (This : in out Monitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Monitor'Class; data : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Unbounded_String) return Monitor_Access is
      This : constant Monitor_Access := new Monitor;
   begin
      Monitor_Package.Initialize (This.all, data);
      return This;
   end Create;

   function compareTo (This : in out Monitor; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean is
      componentInterface : constant HardwareComponentInterface_Access := HardwareComponentInterface_Access (componentInterface_Param);
   begin
        return True;
   end compareTo;

   function toString (This : in out Monitor) return Unbounded_String is
   begin
        return This.data;
   end toString;

   procedure compareTo (This : in out Monitor; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) is
      Java_Result : constant Boolean := Monitor'Class (This).compareTo (componentInterface_Param => componentInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.system.hardware.components.linux.Monitor_Package;


