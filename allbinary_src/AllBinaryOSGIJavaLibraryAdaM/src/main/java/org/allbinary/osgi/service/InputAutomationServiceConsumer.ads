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
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.osgi.service.InputAutomationServiceConsumer_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   package OSGIServiceVisitorInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationServiceConsumer is tagged;
   type InputAutomationServiceConsumer_Access is access all InputAutomationServiceConsumer'Class;
   type InputAutomationServiceConsumer_Access_Array is array (Natural range <>) of InputAutomationServiceConsumer_Access;
   type InputAutomationServiceConsumer_Access_Array_Access is access all InputAutomationServiceConsumer_Access_Array;

   type InputAutomationServiceConsumer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      osgiServiceUtil : OSGIServiceUtil_Access;
      registryName : Unbounded_String;
      bundleContext : BundleContext_Access;
      osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access;
   end record;

   procedure Initialize (This : in out InputAutomationServiceConsumer'Class; registryName : Unbounded_String; bundleContext : BundleContext_Access; osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access);
   function Create (registryName : Unbounded_String; bundleContext : BundleContext_Access; osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access) return InputAutomationServiceConsumer_Access;
   procedure process (This : in out InputAutomationServiceConsumer);
   function getServiceReferences (This : in out InputAutomationServiceConsumer) return ServiceReference_Access_Array_Access;
   procedure getServiceReferences (This : in out InputAutomationServiceConsumer);
   function getBundleContext (This : in out InputAutomationServiceConsumer) return BundleContext_Access;
   procedure getBundleContext (This : in out InputAutomationServiceConsumer);
   procedure setBundleContext (This : in out InputAutomationServiceConsumer; aBundleContext : BundleContext_Access);
   function getRegistryName (This : in out InputAutomationServiceConsumer) return Unbounded_String;
   procedure getRegistryName (This : in out InputAutomationServiceConsumer);
   procedure setRegistryName (This : in out InputAutomationServiceConsumer; registryName : Unbounded_String);
   function getOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer) return OSGIServiceVisitorInterface_Access;
   procedure getOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer);
   procedure setOsgiServiceVisitorInterface (This : in out InputAutomationServiceConsumer; osgiServiceVisitorInterface : OSGIServiceVisitorInterface_Access);

end org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;


