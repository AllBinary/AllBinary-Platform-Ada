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


package body org.allbinary.data.tree.dom.URIResolverStrings_Package is

   procedure Initialize_Fields (This : in out URIResolverStrings'Class) is
   begin
      null;
      This.IMPORT_URL := To_Unbounded_String ("/{import url}");
      This.ATTEMPT := To_Unbounded_String ("attempt to use xsl:import: href=");
      This.BASE := To_Unbounded_String ("" & ASCII.LF & "Base= ");
      This.NEW_PATH := To_Unbounded_String ("" & ASCII.LF & "New path= ");
      This.NOTE := To_Unbounded_String ("" & ASCII.LF & "Note: ");
      This.URL_GLOBAL := To_Unbounded_String (" is a urlglobal");
      This.REQUIRED_EXTENSION := To_Unbounded_String ("" & ASCII.LF & "Required Extension: ");
      This.RESOLVE := To_Unbounded_String ("resolve");
   end Initialize_Fields;

   procedure Initialize (This : in out URIResolverStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return URIResolverStrings_Access is
      This : constant URIResolverStrings_Access := new URIResolverStrings;
   begin
      URIResolverStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return URIResolverStrings_Access is
   begin
        return URIResolverStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := URIResolverStrings_Package.Create;

end org.allbinary.data.tree.dom.URIResolverStrings_Package;


