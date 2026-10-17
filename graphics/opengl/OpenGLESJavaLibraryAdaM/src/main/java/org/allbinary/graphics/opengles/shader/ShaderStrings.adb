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


package body org.allbinary.graphics.opengles.shader.ShaderStrings_Package is

   procedure Initialize_Fields (This : in out ShaderStrings'Class) is
   begin
      null;
      This.NO_PROGRAM_HANDLE := To_Unbounded_String ("No program handle");
      This.UNIFORM_BLOCK_HANDLE := To_Unbounded_String ("Uniform Block Handle: ");
      This.UNIFORM_HANDLE := To_Unbounded_String ("Uniform Handle: ");
      This.UNIFORM_ATTRIBUTE_HANDLE := To_Unbounded_String ("Uniform Attribute Handle: ");
   end Initialize_Fields;

   procedure Initialize (This : in out ShaderStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShaderStrings_Access is
      This : constant ShaderStrings_Access := new ShaderStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShaderStrings_Access is
   begin
        return ShaderStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ShaderStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ShaderStrings_Package.Create;

end org.allbinary.graphics.opengles.shader.ShaderStrings_Package;


