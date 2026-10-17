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


package body org.allbinary.math.NamedAngle_Package is

   procedure Initialize_Fields (This : in out NamedAngle'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NamedAngle'Class; angle : Short_Integer; name : Unbounded_String) is
   begin
        Angle_Package.Initialize (This, angle);
        Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (angle : Short_Integer; name : Unbounded_String) return NamedAngle_Access is
      This : constant NamedAngle_Access := new NamedAngle;
   begin
      NamedAngle_Package.Initialize (This.all, angle, name);
      return This;
   end Create;

end org.allbinary.math.NamedAngle_Package;


