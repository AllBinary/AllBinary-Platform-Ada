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
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package_References;

package body org.allbinary.osgi.service.OSGIServiceUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
   procedure Initialize_Fields (This : in out OSGIServiceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return OSGIServiceUtil_Access is
   begin
        return OSGIServiceUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OSGIServiceUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OSGIServiceUtil_Access is
      This : constant OSGIServiceUtil_Access := new OSGIServiceUtil;
   begin
      OSGIServiceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access) return BasicArrayList_Access is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      serviceReference : ServiceReference_Access;
      osgiServiceInterface : OSGIServiceInterface_Access;
      index : Integer;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        if (serviceReferences) /= (null) then
            size := serviceReferences'Length;
            This.logUtil.putF (To_Unbounded_String ("Service References: ") & Java_Image (size), OSGIServiceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getServicesObjectVector"));
            for index in 0 .. (size) - 1 loop
                serviceReference := serviceReferences (index);
                if (serviceReference) /= (null) then
                    osgiServiceInterface := OSGIServiceInterface_Access (bundleContext.getService (serviceReference));
                    if org.allbinary.osgi.OSGIServiceInterface_Package_References."=" (osgiServiceInterface, null) then
                        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Service For Reference")));
                    end if;
                    vector.add (OSGIServiceInterface_Package.Java_Object_Access_From_OSGIServiceInterface (osgiServiceInterface));
                end if;
            end loop;
        end if;
        return vector;
   end getServicesObjectVector;

   procedure getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access) is
      Java_Result : constant BasicArrayList_Access := OSGIServiceUtil'Class (This).getServicesObjectVector (bundleContext_Param => bundleContext_Param, serviceReferences => serviceReferences);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getServicesObjectVector;

begin
   null;
   instance := OSGIServiceUtil_Package.Create;

end org.allbinary.osgi.service.OSGIServiceUtil_Package;


