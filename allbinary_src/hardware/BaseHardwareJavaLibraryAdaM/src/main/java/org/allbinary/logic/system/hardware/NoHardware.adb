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
      NoHardware_Package.Initialize (This.all);
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

   function compareTo (This : in out NoHardware; hardwareInterface_Param : access HardwareInterface'Class) return Boolean is
      hardwareInterface : HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return True;
   end compareTo;

   function difference (This : in out NoHardware; hardwareInterface_Param : access HardwareInterface'Class) return ABHashtable_Access is
      hardwareInterface : HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end difference;

   procedure getComponent (This : in out NoHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := NoHardware'Class (This).getComponent (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out NoHardware; hardwareInterface_Param : access HardwareInterface'Class) is
      Java_Result : constant Boolean := NoHardware'Class (This).compareTo (hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out NoHardware; hardwareInterface_Param : access HardwareInterface'Class) is
      Java_Result : constant ABHashtable_Access := NoHardware'Class (This).difference (hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

begin
   null;
   instance := NoHardware_Package.Create;

end org.allbinary.logic.system.hardware.NoHardware_Package;


