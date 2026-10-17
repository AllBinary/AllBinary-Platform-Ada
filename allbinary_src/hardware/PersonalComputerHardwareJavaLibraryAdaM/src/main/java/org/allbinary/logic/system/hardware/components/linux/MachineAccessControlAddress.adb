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


package body org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package is

   procedure Initialize_Fields (This : in out MachineAccessControlAddress'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MachineAccessControlAddress'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MachineAccessControlAddress_Access is
      This : constant MachineAccessControlAddress_Access := new MachineAccessControlAddress;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function compareTo (This : in out MachineAccessControlAddress; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function toString (This : in out MachineAccessControlAddress) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end toString;

   procedure compareTo (This : in out MachineAccessControlAddress; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := MachineAccessControlAddress'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure toString (This : in out MachineAccessControlAddress) is
      Java_Result : constant Unbounded_String := MachineAccessControlAddress'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package;


