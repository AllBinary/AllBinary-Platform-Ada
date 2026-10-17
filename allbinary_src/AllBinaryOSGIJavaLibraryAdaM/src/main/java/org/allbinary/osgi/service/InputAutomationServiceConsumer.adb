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


package body org.allbinary.osgi.service.InputAutomationServiceConsumer_Package is

   procedure Initialize_Fields (This : in out InputAutomationServiceConsumer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.osgiServiceUtil := OSGIServiceUtil_Package.getInstance;
      This.registryName := Null_Unbounded_String;
      This.bundleContext := null;
      This.osgiServiceVisitorInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationServiceConsumer'Class; registryName : Unbounded_String; bundleContext_Param : access BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface'Class) is
      bundleContext : BundleContext_Access := BundleContext_Access (bundleContext_Param);
      osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access := OSGIServiceVisitorInterface_Access (osgiServiceVisitorInterface_Param);
   begin
      Initialize_Fields (This);
        This.setRegistryName (registryName);
        This.setBundleContext (bundleContext);
        This.setOsgiServiceVisitorInterface (osgiServiceVisitorInterface);
   end Initialize;

   function Create (registryName : Unbounded_String; bundleContext_Param : access BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface'Class) return InputAutomationServiceConsumer_Access is
      This : constant InputAutomationServiceConsumer_Access := new InputAutomationServiceConsumer;
   begin
      InputAutomationServiceConsumer_Package.Initialize (This.all, registryName, bundleContext_Param, osgiServiceVisitorInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out InputAutomationServiceConsumer) is
      vector : BasicArrayList_Access;
      size : Integer;
      osgiServiceInterface : OSGIServiceInterface_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationServiceConsumer_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        vector := This.osgiServiceUtil.getServicesObjectVector (This.getBundleContext, This.getServiceReferences);
        This.logUtil.putF (To_Unbounded_String ("Processing ") & Java_Image (vector.size) & To_Unbounded_String (" Services"), InputAutomationServiceConsumer_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        size := vector.size;
        osgiServiceInterface := null;
        for index in 0 .. (size) - 1 loop
            osgiServiceInterface := OSGIServiceInterface_Access (vector.get (index));
            if not (This.getOsgiServiceVisitorInterface.visit (osgiServiceInterface)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to process service: ") & Java_Image (osgiServiceInterface)));
            end if;
        end loop;
   end process;

   --  throws Exception
   function getServiceReferences (This : in out InputAutomationServiceConsumer) return ServiceReference_Access_Array_Access is
   begin
        return This.getBundleContext.getServiceReferences (This.getRegistryName, null);
   end getServiceReferences;

   function getBundleContext (This : in out InputAutomationServiceConsumer) return BundleContext_Access is
   begin
        return This.bundleContext;
   end getBundleContext;

   procedure setBundleContext (This : in out InputAutomationServiceConsumer; aBundleContext_Param : access BundleContext'Class) is
      aBundleContext : BundleContext_Access := BundleContext_Access (aBundleContext_Param);
   begin
        This.bundleContext := aBundleContext;
   end setBundleContext;

   function getRegistryName (This : in out InputAutomationServiceConsumer) return Unbounded_String is
   begin
        return This.registryName;
   end getRegistryName;

   procedure setRegistryName (This : in out InputAutomationServiceConsumer; registryName : Unbounded_String) is
   begin
        This.registryName := registryName;
   end setRegistryName;

   function getOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer) return OSGIServiceVisitorInterface_Access is
   begin
        return This.osgiServiceVisitorInterface;
   end getOsgiServiceVisitorInterface;

   procedure setOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface'Class) is
      osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access := OSGIServiceVisitorInterface_Access (osgiServiceVisitorInterface_Param);
   begin
        This.osgiServiceVisitorInterface := osgiServiceVisitorInterface;
   end setOsgiServiceVisitorInterface;

end org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;


