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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.graphics.opengles.shader.ModelViewProjection_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out ModelViewProjection'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ModelViewProjection'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ModelViewProjection_Access is
      This : constant ModelViewProjection_Access := new ModelViewProjection;
   begin
      ModelViewProjection_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ModelViewProjection_Access is
   begin
        return ModelViewProjection_Package.instance;
   end getInstance;

   function get (This : in out ModelViewProjection) return Float_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_FLOAT_ARRAY;
   end get;

begin
   null;
   instance := ModelViewProjection_Package.Create;

end org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;


