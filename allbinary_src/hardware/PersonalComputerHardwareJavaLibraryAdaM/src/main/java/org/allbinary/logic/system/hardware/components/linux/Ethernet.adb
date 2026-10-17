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


package body org.allbinary.logic.system.hardware.components.linux.Ethernet_Package is

   procedure Initialize_Fields (This : in out Ethernet'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Ethernet'Class; data : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Unbounded_String) return Ethernet_Access is
      This : constant Ethernet_Access := new Ethernet;
   begin
      Ethernet_Package.Initialize (This.all, data);
      return This;
   end Create;

   function compareTo (This : in out Ethernet; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean is
      componentInterface : constant HardwareComponentInterface_Access := HardwareComponentInterface_Access (componentInterface_Param);
   begin
        return True;
   end compareTo;

   function toString (This : in out Ethernet) return Unbounded_String is
   begin
        return This.data;
   end toString;

   procedure compareTo (This : in out Ethernet; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) is
      Java_Result : constant Boolean := Ethernet'Class (This).compareTo (componentInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;


