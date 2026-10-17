-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.animation.ShapeType_Package is

   procedure Initialize_Fields (This : in out ShapeType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShapeType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return ShapeType_Access is
      This : constant ShapeType_Access := new ShapeType;
   begin
      ShapeType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out ShapeType) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.animation.ShapeType_Package;


