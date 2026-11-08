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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.osgi.service.OSGIServiceUtil_Package; use org.allbinary.osgi.service.OSGIServiceUtil_Package;
with org.allbinary.osgi.service.OSGIServiceUtil_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.osgi.service.OSGIServiceUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package;

package body org.allbinary.osgi.service.InputAutomationServiceConsumer_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   function "=" (Left, Right : BundleContext_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   function "=" (Left, Right : ServiceReference_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   function "=" (Left, Right : ServiceReference_Access_Array) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   function "=" (Left, Right : ServiceReference_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceReference_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceReference_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype OSGIServiceVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References.OSGIServiceVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype OSGIServiceUtil_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access;
   function "=" (Left, Right : OSGIServiceUtil_Access) return Boolean renames org.allbinary.osgi.service.OSGIServiceUtil_Package_References."=";
   subtype OSGIServiceUtil_Access_Array is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array;
   function "=" (Left, Right : OSGIServiceUtil_Access_Array) return Boolean renames org.allbinary.osgi.service.OSGIServiceUtil_Package_References."=";
   subtype OSGIServiceUtil_Access_Array_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceUtil_Access_Array_Access) return Boolean renames org.allbinary.osgi.service.OSGIServiceUtil_Package_References."=";
   subtype OSGIServiceUtil_Access_Array_Access_Array is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIServiceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.service.OSGIServiceUtil_Package_References."=";
   subtype OSGIServiceUtil_Access_Array_Access_Array_Access is org.allbinary.osgi.service.OSGIServiceUtil_Package_References.OSGIServiceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.service.OSGIServiceUtil_Package_References."=";
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


   procedure Initialize (This : in out InputAutomationServiceConsumer'Class; registryName : Unbounded_String; bundleContext_Param : access BundleContext_Package.BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
      osgiServiceVisitorInterface : constant OSGIServiceVisitorInterface_Access := OSGIServiceVisitorInterface_Access (osgiServiceVisitorInterface_Param);
   begin
      Initialize_Fields (This);
        InputAutomationServiceConsumer'Class (This).setRegistryName (registryName);
        InputAutomationServiceConsumer'Class (This).setBundleContext (bundleContext);
        InputAutomationServiceConsumer'Class (This).setOsgiServiceVisitorInterface (osgiServiceVisitorInterface);
   end Initialize;

   function Create (registryName : Unbounded_String; bundleContext_Param : access BundleContext_Package.BundleContext'Class; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class) return InputAutomationServiceConsumer_Access is
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
        vector := This.osgiServiceUtil.getServicesObjectVector (InputAutomationServiceConsumer'Class (This).getBundleContext, InputAutomationServiceConsumer'Class (This).getServiceReferences);
        This.logUtil.putF (To_Unbounded_String ("Processing ") & Java_Image (vector.size) & To_Unbounded_String (" Services"), InputAutomationServiceConsumer_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        size := vector.size;
        osgiServiceInterface := null;
        for index in 0 .. (size) - 1 loop
            osgiServiceInterface := OSGIServiceInterface_Access (vector.get (index));
            if not (InputAutomationServiceConsumer'Class (This).getOsgiServiceVisitorInterface.visit (osgiServiceInterface)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to process service: ") & Java_Image (osgiServiceInterface)));
            end if;
        end loop;
   end process;

   --  throws Exception
   function getServiceReferences (This : in out InputAutomationServiceConsumer) return ServiceReference_Access_Array_Access is
   begin
        return InputAutomationServiceConsumer'Class (This).getBundleContext.getServiceReferences (InputAutomationServiceConsumer'Class (This).getRegistryName, null);
   end getServiceReferences;

   function getBundleContext (This : in out InputAutomationServiceConsumer) return BundleContext_Access is
   begin
        return This.bundleContext;
   end getBundleContext;

   procedure setBundleContext (This : in out InputAutomationServiceConsumer; aBundleContext_Param : access BundleContext_Package.BundleContext'Class) is
      aBundleContext : constant BundleContext_Access := BundleContext_Access (aBundleContext_Param);
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

   procedure setOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer; osgiServiceVisitorInterface_Param : access OSGIServiceVisitorInterface_Package.OSGIServiceVisitorInterface'Class) is
      osgiServiceVisitorInterface : constant OSGIServiceVisitorInterface_Access := OSGIServiceVisitorInterface_Access (osgiServiceVisitorInterface_Param);
   begin
        This.osgiServiceVisitorInterface := osgiServiceVisitorInterface;
   end setOsgiServiceVisitorInterface;

end org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;


