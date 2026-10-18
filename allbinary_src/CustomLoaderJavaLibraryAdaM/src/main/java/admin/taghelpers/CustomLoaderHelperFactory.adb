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


with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with admin.taghelpers.HelperFactory_Package; use admin.taghelpers.HelperFactory_Package;

package body admin.taghelpers.CustomLoaderHelperFactory_Package is

   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   procedure Initialize_Fields (This : in out CustomLoaderHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomLoaderHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomLoaderHelperFactory_Access is
      This : constant CustomLoaderHelperFactory_Access := new CustomLoaderHelperFactory;
   begin
      CustomLoaderHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out CustomLoaderHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      abeClientInformation : AbeClientInformationInterface_Access;
   begin
        abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
        return HelperFactory_Package.getInstance (abeClientInformation, FACTORYNAME, CLASSNAME, hashMap, pageContext);
   end getInstance;

   --  throws LicensingException
   function getInstance (This : in out CustomLoaderHelperFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        return HelperFactory_Package.getInstance (abeClientInformation, FACTORYNAME, CustomLoaderHelperFactory_Package.CLASSNAME);
   end getInstance;

   procedure getInstance (This : in out CustomLoaderHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := CustomLoaderHelperFactory'Class (This).getInstance (hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CustomLoaderHelperFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant Java_Object_Access := CustomLoaderHelperFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("admin.taghelpers.CustomLoaderHelper");
   FACTORYNAME := To_Unbounded_String ("CustomLoaderHelperFactory");

end admin.taghelpers.CustomLoaderHelperFactory_Package;


