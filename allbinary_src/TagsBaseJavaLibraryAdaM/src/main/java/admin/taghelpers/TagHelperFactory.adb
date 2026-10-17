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


package body admin.taghelpers.TagHelperFactory_Package is

   procedure Initialize_Fields (This : in out TagHelperFactory'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out TagHelperFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TagHelperFactory_Access is
      This : constant TagHelperFactory_Access := new TagHelperFactory;
   begin
      TagHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception, LicensingException
   function getInstance (This : in out TagHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return Java_Object_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out TagHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      Java_Result : constant Java_Object_Access := TagHelperFactory'Class (This).getInstance (hashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end admin.taghelpers.TagHelperFactory_Package;


