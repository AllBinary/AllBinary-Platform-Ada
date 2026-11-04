--  Generated Code Do Not Modify

limited with org.eclipse.swt.graphics.Resource_Package;
package org.eclipse.swt.graphics.Resource_Package_References is
   type Resource_Access is access all org.eclipse.swt.graphics.Resource_Package.Resource'Class;
   type Resource_Access_Array is array (Natural range <>) of Resource_Access;
   type Resource_Access_Array_Access is access all Resource_Access_Array;
   type Resource_Access_Array_Access_Array is array (Natural range <>) of Resource_Access_Array_Access;
   type Resource_Access_Array_Access_Array_Access is access all Resource_Access_Array_Access_Array;
end org.eclipse.swt.graphics.Resource_Package_References;

with org.eclipse.swt.graphics.Resource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.eclipse.swt.graphics.Resource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Resource_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access;
   function "=" (Left, Right : Resource_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array;
   function "=" (Left, Right : Resource_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array;
   function "=" (Left, Right : Resource_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";

   type Resource is new Java_Object with null record;

   procedure Initialize (This : in out Resource'Class);
   function Create return Resource_Access;
   procedure dispose (This : in out Resource);
   function isDisposed (This : in out Resource) return Boolean;

end org.eclipse.swt.graphics.Resource_Package;


