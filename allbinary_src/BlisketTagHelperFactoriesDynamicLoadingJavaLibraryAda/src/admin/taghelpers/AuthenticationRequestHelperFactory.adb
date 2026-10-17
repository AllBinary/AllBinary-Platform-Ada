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


package body admin.taghelpers.AuthenticationRequestHelperFactory_Package is

   procedure Initialize_Fields (This : in out AuthenticationRequestHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthenticationRequestHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AuthenticationRequestHelperFactory_Access is
      This : constant AuthenticationRequestHelperFactory_Access := new AuthenticationRequestHelperFactory;
   begin
      AuthenticationRequestHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return Java_Object_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return HelperFactory_Package.getInstance (AuthenticationRequestHelperFactory_Package.FACTORYNAME, AuthenticationRequestHelperFactory_Package.CLASSNAME, hashMap, pageContext);
   end getInstance;

   --  throws LicensingException
   function getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; httpServletRequest_Param : access HttpServletRequest'Class) return Java_Object_Access is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      httpServletRequest : HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
   begin
        return HelperFactory_Package.getInstance (AuthenticationRequestHelperFactory_Package.FACTORYNAME, AuthenticationRequestHelperFactory_Package.CLASSNAME, hashMap, httpServletRequest);
   end getInstance;

   procedure getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      Java_Result : constant Java_Object_Access := AuthenticationRequestHelperFactory'Class (This).getInstance (hashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; httpServletRequest_Param : access HttpServletRequest'Class) is
      Java_Result : constant Java_Object_Access := AuthenticationRequestHelperFactory'Class (This).getInstance (hashMap_Param, httpServletRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("admin.taghelpers.AuthenticationRequestHelper");
   FACTORYNAME := To_Unbounded_String ("AuthenticationRequestHelperFactory");

end admin.taghelpers.AuthenticationRequestHelperFactory_Package;


