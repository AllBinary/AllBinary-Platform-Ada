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


package body org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package is

   procedure Initialize_Fields (This : in out AllBinaryPreloaderActivator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryPreloaderActivator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryPreloaderActivator_Access is
      This : constant AllBinaryPreloaderActivator_Access := new AllBinaryPreloaderActivator;
   begin
      AllBinaryPreloaderActivator_Package.Initialize (This.all);
      return This;
   end Create;

   function getBundleContext return BundleContext_Access is
   begin
        return AllBinaryPreloaderActivator_Package.context;
   end getBundleContext;

   --  throws Exception
   procedure start (This : in out AllBinaryPreloaderActivator; context_Param : access BundleContext'Class) is
      context : BundleContext_Access := BundleContext_Access (context_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AllBinaryPreloaderActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("start"));
            AllBinaryPreloaderActivator_Package.context := context;
            This.registerAsService;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryPreloaderActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("start"), e);
            Java_Throw (e);
                end;
        end;
   end start;

   --  throws Exception
   procedure registerAsService (This : in out AllBinaryPreloaderActivator) is
      properties : ABHashtable_Access;
      serviceRegistration : ServiceRegistration_Access;
      serviceReference : ServiceReference_Access;
   begin
        properties := StdUtil_Package.getInstance.createHashtable;
        serviceRegistration := AllBinaryPreloaderActivator_Package.context.registerService (CRYPT_REGISTRY_NAME, CryptServiceFactory_Package.Create, properties);
        serviceReference := serviceRegistration.getReference;
        serviceReference := AllBinaryPreloaderActivator_Package.context.getServiceReference (CRYPT_REGISTRY_NAME);
        if (serviceReference) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Service Reference")));
        end if;
   end registerAsService;

   --  throws Exception
   procedure stop (This : in out AllBinaryPreloaderActivator; context_Param : access BundleContext'Class) is
      context : BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryPreloaderActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"));
   end stop;

begin
   null;
   context := null;
   CRYPT_REGISTRY_NAME := To_Unbounded_String ("bundle.abcs.logic.system.loader.CryptService");

end org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package;


