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



package body org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package is

   procedure Initialize_Fields (This : in out CryptServiceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.cryptService := CryptService_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out CryptServiceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CryptServiceFactory_Access is
      This : constant CryptServiceFactory_Access := new CryptServiceFactory;
   begin
      CryptServiceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access is
      bundle : constant Bundle_Access := Bundle_Access (bundle_Param);
      registration : constant ServiceRegistration_Access := ServiceRegistration_Access (registration_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, CryptServiceFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getService"));
        return Java_Object_Access (This.cryptService);
   end getService;

   procedure ungetService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class) is
      bundle : constant Bundle_Access := Bundle_Access (bundle_Param);
      registration : constant ServiceRegistration_Access := ServiceRegistration_Access (registration_Param);
      service : constant Java_Object_Access := Java_Object_Access (service_Param);
   begin
        null;
   end ungetService;

   procedure getService (This : in out CryptServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) is
      Java_Result : constant Java_Object_Access := CryptServiceFactory'Class (This).getService (bundle_Param => bundle_Param, registration_Param => registration_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getService;

end org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;


