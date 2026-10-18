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



package body tags.CustomTagSupport_Package is

   procedure Initialize_Fields (This : in out CustomTagSupport'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tagStrings := TagStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomTagSupport'Class) is
   begin
      TagSupport_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomTagSupport_Access is
      This : constant CustomTagSupport_Access := new CustomTagSupport;
   begin
      CustomTagSupport_Package.Initialize (This.all);
      return This;
   end Create;


end tags.CustomTagSupport_Package;


