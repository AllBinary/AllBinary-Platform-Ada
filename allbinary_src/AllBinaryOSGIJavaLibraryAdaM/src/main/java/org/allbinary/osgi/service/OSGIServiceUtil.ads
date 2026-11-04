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

limited with org.allbinary.osgi.service.OSGIServiceUtil_Package;
package org.allbinary.osgi.service.OSGIServiceUtil_Package_References is
   type OSGIServiceUtil_Access is access all org.allbinary.osgi.service.OSGIServiceUtil_Package.OSGIServiceUtil'Class;
   type OSGIServiceUtil_Access_Array is array (Natural range <>) of OSGIServiceUtil_Access;
   type OSGIServiceUtil_Access_Array_Access is access all OSGIServiceUtil_Access_Array;
   type OSGIServiceUtil_Access_Array_Access_Array is array (Natural range <>) of OSGIServiceUtil_Access_Array_Access;
   type OSGIServiceUtil_Access_Array_Access_Array_Access is access all OSGIServiceUtil_Access_Array_Access_Array;
end org.allbinary.osgi.service.OSGIServiceUtil_Package_References;

with org.allbinary.osgi.service.OSGIServiceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
limited with org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.osgi.service.OSGIServiceUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   use type BundleContext_Access;
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   use type BundleContext_Access_Array;
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   use type BundleContext_Access_Array_Access;
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   use type BundleContext_Access_Array_Access_Array;
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   use type BundleContext_Access_Array_Access_Array_Access;
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   use type ServiceReference_Access;
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   use type ServiceReference_Access_Array;
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   use type ServiceReference_Access_Array_Access;
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   use type ServiceReference_Access_Array_Access_Array;
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   use type ServiceReference_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type OSGIServiceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : OSGIServiceUtil_Access;

   procedure Initialize (This : in out OSGIServiceUtil'Class);
   function Create return OSGIServiceUtil_Access;
   function getInstance return OSGIServiceUtil_Access;
   function getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access) return BasicArrayList_Access;
   procedure getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access);

end org.allbinary.osgi.service.OSGIServiceUtil_Package;


