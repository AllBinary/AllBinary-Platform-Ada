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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;

package org.allbinary.osgi.service.OSGIServiceUtil_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package BundleContext_Package renames org.osgi.framework.BundleContext_Package;
   package ServiceReference_Package renames org.osgi.framework.ServiceReference_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames org.allbinary.osgi.OSGIServiceInterface_Package;

   type OSGIServiceUtil is tagged;
   type OSGIServiceUtil_Access is access all OSGIServiceUtil'Class;
   type OSGIServiceUtil_Access_Array is array (Natural range <>) of OSGIServiceUtil_Access;
   type OSGIServiceUtil_Access_Array_Access is access all OSGIServiceUtil_Access_Array;

   type OSGIServiceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : OSGIServiceUtil_Access;

   procedure Initialize (This : in out OSGIServiceUtil'Class);
   function Create return OSGIServiceUtil_Access;
   function getInstance return OSGIServiceUtil_Access;
   procedure getInstance;
   function getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext : BundleContext_Access; serviceReferences : ServiceReference_Access_Array_Access) return BasicArrayList_Access;
   procedure getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext : BundleContext_Access; serviceReferences : ServiceReference_Access_Array_Access);

end org.allbinary.osgi.service.OSGIServiceUtil_Package;


