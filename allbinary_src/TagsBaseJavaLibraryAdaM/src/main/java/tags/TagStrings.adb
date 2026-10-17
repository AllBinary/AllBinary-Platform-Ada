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


package body tags.TagStrings_Package is

   procedure Initialize_Fields (This : in out TagStrings'Class) is
   begin
      null;
      This.DO_START_TAG := To_Unbounded_String ("doStartTag");
   end Initialize_Fields;

   procedure Initialize (This : in out TagStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TagStrings_Access is
      This : constant TagStrings_Access := new TagStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TagStrings_Access is
   begin
        return TagStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant TagStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TagStrings_Package.Create;

end tags.TagStrings_Package;


