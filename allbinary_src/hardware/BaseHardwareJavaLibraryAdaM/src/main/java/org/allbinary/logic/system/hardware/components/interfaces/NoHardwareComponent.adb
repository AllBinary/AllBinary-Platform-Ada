-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package is

   procedure Initialize_Fields (This : in out NoHardwareComponent'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoHardwareComponent'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoHardwareComponent_Access is
      This : constant NoHardwareComponent_Access := new NoHardwareComponent;
   begin
      NoHardwareComponent_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NoHardwareComponent_Access is
   begin
        return NoHardwareComponent_Package.instance;
   end getInstance;

   function compareTo (This : in out NoHardwareComponent; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        if (This'Unchecked_Access) = (componentInterface) then
            return True;
        end if;
        return False;
   end compareTo;

   function toString (This : in out NoHardwareComponent) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.NULL_STRING;
   end toString;

   procedure compareTo (This : in out NoHardwareComponent; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := NoHardwareComponent'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

begin
   null;
   instance := NoHardwareComponent_Package.Create;

end org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;


