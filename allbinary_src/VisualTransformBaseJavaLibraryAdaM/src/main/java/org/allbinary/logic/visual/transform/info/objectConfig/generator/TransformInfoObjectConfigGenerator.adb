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



package body org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectConfigGenerator'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out TransformInfoObjectConfigGenerator'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TransformInfoObjectConfigGenerator_Access is
      This : constant TransformInfoObjectConfigGenerator_Access := new TransformInfoObjectConfigGenerator;
   begin
      TransformInfoObjectConfigGenerator_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end process;

   procedure process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfigGenerator'Class (This).process (input => input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;


