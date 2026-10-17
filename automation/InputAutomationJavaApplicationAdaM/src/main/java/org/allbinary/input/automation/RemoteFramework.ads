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
--  with java.util.Map_Package; use java.util.Map_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;

package org.allbinary.input.automation.RemoteFramework_Package is

   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;

   type RemoteFramework is interface;
   type RemoteFramework_Access is access all RemoteFramework'Class;
   type RemoteFramework_Access_Array is array (Natural range <>) of RemoteFramework_Access;
   type RemoteFramework_Access_Array_Access is access all RemoteFramework_Access_Array;
   function connect (This : in out RemoteFramework; host : Unbounded_String) return BundleContext_Access is abstract;
   procedure disconnect (This : in out RemoteFramework; bc_Param : access BundleContext_Package.BundleContext'Class) is abstract;
   function getSystemProperties (This : in out RemoteFramework; bc_Param : access BundleContext_Package.BundleContext'Class) return Map_Access is abstract;

end org.allbinary.input.automation.RemoteFramework_Package;


