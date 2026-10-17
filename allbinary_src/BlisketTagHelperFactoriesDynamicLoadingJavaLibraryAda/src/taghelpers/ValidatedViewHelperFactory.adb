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


package body taghelpers.ValidatedViewHelperFactory_Package is

   procedure Initialize_Fields (This : in out ValidatedViewHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ValidatedViewHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ValidatedViewHelperFactory_Access is
      This : constant ValidatedViewHelperFactory_Access := new ValidatedViewHelperFactory;
   begin
      ValidatedViewHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out ValidatedViewHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access is
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out ValidatedViewHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant Java_Object_Access := ValidatedViewHelperFactory'Class (This).getInstance (hashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("taghelpers.ValidationViewHelper");
   FACTORYNAME := To_Unbounded_String ("taghelpers.ValidationViewHelperFactory");

end taghelpers.ValidatedViewHelperFactory_Package;


