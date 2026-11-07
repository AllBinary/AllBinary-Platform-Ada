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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with org.osgi.framework.NullServiceReferenceFactory_Package; use org.osgi.framework.NullServiceReferenceFactory_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceRegistration_Package; use org.osgi.framework.ServiceRegistration_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;

package body org.allbinary.osgi.OSGIActivatorUtil_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package NullServiceReferenceFactory_Package renames Standard.org.osgi.framework.NullServiceReferenceFactory_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
   procedure Initialize_Fields (This : in out OSGIActivatorUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OSGIActivatorUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OSGIActivatorUtil_Access is
      This : constant OSGIActivatorUtil_Access := new OSGIActivatorUtil;
   begin
      OSGIActivatorUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure registerAsService (bundleContext_Param : access BundleContext_Package.BundleContext'Class; anyType_Param : access Java_Object'Class; serviceName : Unbounded_String) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        OSGIActivatorUtil_Package.registerAsService (bundleContext, anyType, serviceName, StdUtil_Package.getInstance.createHashtable);
   end registerAsService;

   --  throws Exception
   procedure registerAsService (bundleContext_Param : access BundleContext_Package.BundleContext'Class; anyType_Param : access Java_Object'Class; serviceName : Unbounded_String; properties_Param : access ABHashtable_Package.ABHashtable'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      properties : constant ABHashtable_Access := ABHashtable_Access (properties_Param);
      serviceRegistration : ServiceRegistration_Access;
      serviceReference : ServiceReference_Access;
   begin
        serviceRegistration := bundleContext.registerService (serviceName, anyType, properties);
        serviceReference := serviceRegistration.getReference;
        serviceReference := bundleContext.getServiceReference (serviceName);
        if (Java_Object_Access (serviceReference)) = (Java_Object_Access (NullServiceReferenceFactory_Package.getInstance.NULL_SERVICE_REFERENCE)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Service Reference")));
        end if;
   end registerAsService;

end org.allbinary.osgi.OSGIActivatorUtil_Package;


