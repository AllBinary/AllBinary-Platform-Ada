--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.osgi.framework.Exception_Package; use org.osgi.framework.Exception_Package;

package org.osgi.framework.BundleException_Package is


   type BundleException is tagged;
   type BundleException_Access is access all BundleException'Class;
   type BundleException_Access_Array is array (Natural range <>) of BundleException_Access;
   type BundleException_Access_Array_Access is access all BundleException_Access_Array;

   type BundleException is new Exception with null record;

   procedure Initialize (This : in out BundleException'Class);
   function Create return BundleException_Access;

end org.osgi.framework.BundleException_Package;


