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


package body org.allbinary.logic.system.hardware.NoHardware_Package is

   procedure Initialize_Fields (This : in out NoHardware'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoHardware'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoHardware_Access is
      This : constant NoHardware_Access := new NoHardware;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return HardwareInterface_Access is
   begin
        return NoHardware_Package.instance;
   end getInstance;

   function getComponent (This : in out NoHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        return NoHardwareComponent_Package.getInstance;
   end getComponent;

   function toString (This : in out NoHardware) return Unbounded_String is
   begin
        return To_Unbounded_String ("No Hardware");
   end toString;

   function compareTo (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function difference (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end difference;

   procedure getInstance is
      Java_Result : constant HardwareInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getComponent (This : in out NoHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := NoHardware'Class (This).getComponent (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure toString (This : in out NoHardware) is
      Java_Result : constant Unbounded_String := NoHardware'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure compareTo (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant Boolean := NoHardware'Class (This).compareTo (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant ABHashtable_Access := NoHardware'Class (This).difference (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

begin
   null;
   instance := NoHardware_Package.Create;

end org.allbinary.logic.system.hardware.NoHardware_Package;


