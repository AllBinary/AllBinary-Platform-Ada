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


package body org.allbinary.math.Angle_Package is

   procedure Initialize_Fields (This : in out Angle'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Angle'Class; angle : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.value := angle;
   end Initialize;

   function Create (angle : Short_Integer) return Angle_Access is
      This : constant Angle_Access := new Angle;
   begin
      Initialize (This.all, angle);
      return This;
   end Create;

   function getValue (This : in out Angle) return Short_Integer is
   begin
        return This.value;
   end getValue;

   procedure getValue (This : in out Angle) is
      Java_Result : constant Short_Integer := Angle'Class (This).getValue;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

end org.allbinary.math.Angle_Package;


