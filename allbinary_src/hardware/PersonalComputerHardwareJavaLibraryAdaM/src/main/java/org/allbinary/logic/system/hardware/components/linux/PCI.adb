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


package body org.allbinary.logic.system.hardware.components.linux.PCI_Package is

   procedure Initialize_Fields (This : in out PCI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PCI'Class; data : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Unbounded_String) return PCI_Access is
      This : constant PCI_Access := new PCI;
   begin
      Initialize (This.all, data);
      return This;
   end Create;

   function compareTo (This : in out PCI; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function toString (This : in out PCI) return Unbounded_String is
   begin
        return This.data;
   end toString;

   procedure compareTo (This : in out PCI; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := PCI'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure toString (This : in out PCI) is
      Java_Result : constant Unbounded_String := PCI'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.system.hardware.components.linux.PCI_Package;


