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

package org.osgi.framework.InvalidSyntaxException_Package is


   type InvalidSyntaxException is tagged;
   type InvalidSyntaxException_Access is access all InvalidSyntaxException'Class;
   type InvalidSyntaxException_Access_Array is array (Natural range <>) of InvalidSyntaxException_Access;
   type InvalidSyntaxException_Access_Array_Access is access all InvalidSyntaxException_Access_Array;

   type InvalidSyntaxException is new Exception with null record;

   procedure Initialize (This : in out InvalidSyntaxException'Class);
   function Create return InvalidSyntaxException_Access;

end org.osgi.framework.InvalidSyntaxException_Package;


