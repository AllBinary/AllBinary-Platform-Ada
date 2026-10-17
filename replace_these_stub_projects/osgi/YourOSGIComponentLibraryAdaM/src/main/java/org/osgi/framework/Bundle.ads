--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.Bundle_Package is


   type Bundle is interface;
   type Bundle_Access is access all Bundle'Class;
   type Bundle_Access_Array is array (Natural range <>) of Bundle_Access;
   type Bundle_Access_Array_Access is access all Bundle_Access_Array;
   function getSymbolicName (This : in out Bundle) return Unbounded_String is abstract;
   procedure start (This : in out Bundle) is abstract;
   procedure start (This : in out Bundle; options : Integer) is abstract;

end org.osgi.framework.Bundle_Package;


