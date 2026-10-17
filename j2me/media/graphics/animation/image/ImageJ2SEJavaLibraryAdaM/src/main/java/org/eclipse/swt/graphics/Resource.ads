--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.eclipse.swt.graphics.Resource_Package is


   type Resource is tagged;
   type Resource_Access is access all Resource'Class;
   type Resource_Access_Array is array (Natural range <>) of Resource_Access;
   type Resource_Access_Array_Access is access all Resource_Access_Array;

   type Resource is new Java_Object with null record;

   procedure Initialize (This : in out Resource'Class);
   function Create return Resource_Access;
   procedure dispose (This : in out Resource);
   function isDisposed (This : in out Resource) return Boolean;
   procedure isDisposed (This : in out Resource);

end org.eclipse.swt.graphics.Resource_Package;


