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
with org.osgi.framework.BundleActivator_Package; use org.osgi.framework.BundleActivator_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceRegistration_Package; use org.osgi.framework.ServiceRegistration_Package;
with org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package; use org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package is

   package BundleActivator_Package renames org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames org.osgi.framework.BundleContext_Package;
   package ServiceReference_Package renames org.osgi.framework.ServiceReference_Package;
   package ServiceRegistration_Package renames org.osgi.framework.ServiceRegistration_Package;
   package CryptServiceFactory_Package renames org.allbinary.bundle.logic.system.loader.CryptServiceFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type AllBinaryPreloaderActivator is tagged;
   type AllBinaryPreloaderActivator_Access is access all AllBinaryPreloaderActivator'Class;
   type AllBinaryPreloaderActivator_Access_Array is array (Natural range <>) of AllBinaryPreloaderActivator_Access;
   type AllBinaryPreloaderActivator_Access_Array_Access is access all AllBinaryPreloaderActivator_Access_Array;

   type AllBinaryPreloaderActivator is new BundleActivator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   context : BundleContext_Access;
   CRYPT_REGISTRY_NAME : Unbounded_String;

   procedure Initialize (This : in out AllBinaryPreloaderActivator'Class);
   function Create return AllBinaryPreloaderActivator_Access;
   function getBundleContext return BundleContext_Access;
   procedure getBundleContext;
   procedure start (This : in out AllBinaryPreloaderActivator; context : BundleContext_Access);
   procedure registerAsService (This : in out AllBinaryPreloaderActivator);
   procedure stop (This : in out AllBinaryPreloaderActivator; context : BundleContext_Access);

end org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator_Package;


