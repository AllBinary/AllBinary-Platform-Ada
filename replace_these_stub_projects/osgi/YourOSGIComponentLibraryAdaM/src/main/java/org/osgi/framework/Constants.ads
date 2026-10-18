--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.Constants_Package is


   type Constants is interface;
   type Constants_Access is access all Constants'Class;
   type Constants_Access_Array is array (Natural range <>) of Constants_Access;
   type Constants_Access_Array_Access is access all Constants_Access_Array;
   type Constants_Access_Array_Access_Array is array (Natural range <>) of Constants_Access_Array_Access;
   type Constants_Access_Array_Access_Array_Access is access all Constants_Access_Array_Access_Array;
   BUNDLE_SYMBOLICNAME : Unbounded_String := StringUtil_Package.getInstance.EMPTY_STRING;

end org.osgi.framework.Constants_Package;


