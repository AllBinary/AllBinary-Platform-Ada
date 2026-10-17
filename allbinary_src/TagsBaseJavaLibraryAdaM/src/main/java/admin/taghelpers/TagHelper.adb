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


package body admin.taghelpers.TagHelper_Package is

   procedure Initialize_Fields (This : in out TagHelper'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out TagHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TagHelper_Access is
      This : constant TagHelper_Access := new TagHelper;
   begin
      TagHelper_Package.Initialize (This.all);
      return This;
   end Create;


end admin.taghelpers.TagHelper_Package;


