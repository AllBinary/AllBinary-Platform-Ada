--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


package body taghelpers.ViewHelperFactory_Package is

   procedure Initialize_Fields (This : in out ViewHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewHelperFactory_Access is
      This : constant ViewHelperFactory_Access := new ViewHelperFactory;
   begin
      ViewHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out ViewHelperFactory; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access is
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, propertiesHashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out ViewHelperFactory; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant Java_Object_Access := ViewHelperFactory'Class (This).getInstance (propertiesHashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("taghelpers.ViewHelper");
   FACTORYNAME := To_Unbounded_String ("taghelpers.ViewHelperFactory");

end taghelpers.ViewHelperFactory_Package;


