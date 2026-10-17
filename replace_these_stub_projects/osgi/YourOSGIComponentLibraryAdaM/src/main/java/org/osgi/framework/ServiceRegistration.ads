--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.ServiceRegistration_Package is


   type ServiceRegistration is interface;
   type ServiceRegistration_Access is access all ServiceRegistration'Class;
   type ServiceRegistration_Access_Array is array (Natural range <>) of ServiceRegistration_Access;
   type ServiceRegistration_Access_Array_Access is access all ServiceRegistration_Access_Array;
   function getReference (This : in out ServiceRegistration) return ServiceReference_Access is abstract;

end org.osgi.framework.ServiceRegistration_Package;


