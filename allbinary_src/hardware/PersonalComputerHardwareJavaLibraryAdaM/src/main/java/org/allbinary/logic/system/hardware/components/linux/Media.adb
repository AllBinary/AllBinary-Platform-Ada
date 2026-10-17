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


package body org.allbinary.logic.system.hardware.components.linux.Media_Package is

   procedure Initialize_Fields (This : in out Media'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Media'Class; data : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.data := data;
   end Initialize;

   function Create (data : Unbounded_String) return Media_Access is
      This : constant Media_Access := new Media;
   begin
      Media_Package.Initialize (This.all, data);
      return This;
   end Create;

   function compareTo (This : in out Media; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function toString (This : in out Media) return Unbounded_String is
   begin
        return This.data;
   end toString;

   procedure compareTo (This : in out Media; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := Media'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.system.hardware.components.linux.Media_Package;


