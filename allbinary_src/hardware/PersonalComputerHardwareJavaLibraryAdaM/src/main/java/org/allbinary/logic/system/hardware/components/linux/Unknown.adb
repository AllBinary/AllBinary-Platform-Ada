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


package body org.allbinary.logic.system.hardware.components.linux.Unknown_Package is

   procedure Initialize_Fields (This : in out Unknown'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Unknown'Class; data : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Unbounded_String) return Unknown_Access is
      This : constant Unknown_Access := new Unknown;
   begin
      Unknown_Package.Initialize (This.all, data);
      return This;
   end Create;

   function compareTo (This : in out Unknown; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function toString (This : in out Unknown) return Unbounded_String is
   begin
        return This.data;
   end toString;

   procedure compareTo (This : in out Unknown; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := Unknown'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.system.hardware.components.linux.Unknown_Package;


