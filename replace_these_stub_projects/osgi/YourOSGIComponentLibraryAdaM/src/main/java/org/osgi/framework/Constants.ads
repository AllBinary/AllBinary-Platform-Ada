--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.osgi.framework.Constants_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type Constants is interface;
   type Constants_Access is access all Constants'Class;
   type Constants_Access_Array is array (Natural range <>) of Constants_Access;
   type Constants_Access_Array_Access is access all Constants_Access_Array;
   BUNDLE_SYMBOLICNAME : Unbounded_String := StringUtil_Package.getInstance.EMPTY_STRING;

end org.osgi.framework.Constants_Package;


