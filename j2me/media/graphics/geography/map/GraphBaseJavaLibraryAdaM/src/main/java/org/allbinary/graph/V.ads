--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graph.V_Package;
package org.allbinary.graph.V_Package_References is
   type V_Access is access all org.allbinary.graph.V_Package.V'Class;
   type V_Access_Array is array (Natural range <>) of V_Access;
   type V_Access_Array_Access is access all V_Access_Array;
   type V_Access_Array_Access_Array is array (Natural range <>) of V_Access_Array_Access;
   type V_Access_Array_Access_Array_Access is access all V_Access_Array_Access_Array;
   type V_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : V_Access_Array_Access;
   end record;
   function Java_Box (Value : V_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new V_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_V_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return V_Access_Array_Access is (if Value /= null and then Value.all in V_Access_Array_Object'Class then V_Access_Array_Object'Class (Value.all).Value else null);
   type V_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : V_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : V_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new V_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_V_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return V_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in V_Access_Array_Access_Array_Object'Class then V_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graph.V_Package_References;

with org.allbinary.graph.V_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graph.V_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype V_Access is org.allbinary.graph.V_Package_References.V_Access;
   function "=" (Left, Right : V_Access) return Boolean renames org.allbinary.graph.V_Package_References."=";
   subtype V_Access_Array is org.allbinary.graph.V_Package_References.V_Access_Array;
   function "=" (Left, Right : V_Access_Array) return Boolean renames org.allbinary.graph.V_Package_References."=";
   subtype V_Access_Array_Access is org.allbinary.graph.V_Package_References.V_Access_Array_Access;
   function "=" (Left, Right : V_Access_Array_Access) return Boolean renames org.allbinary.graph.V_Package_References."=";
   function Java_Box (Value : V_Access_Array_Access) return Java_Object_Access renames org.allbinary.graph.V_Package_References.Java_Box;
   function Java_Unbox_V_Access_Array (Value : access Java_Object'Class) return V_Access_Array_Access renames org.allbinary.graph.V_Package_References.Java_Unbox_V_Access_Array;
   subtype V_Access_Array_Access_Array is org.allbinary.graph.V_Package_References.V_Access_Array_Access_Array;
   function "=" (Left, Right : V_Access_Array_Access_Array) return Boolean renames org.allbinary.graph.V_Package_References."=";
   subtype V_Access_Array_Access_Array_Access is org.allbinary.graph.V_Package_References.V_Access_Array_Access_Array_Access;
   function "=" (Left, Right : V_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graph.V_Package_References."=";
   function Java_Box (Value : V_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graph.V_Package_References.Java_Box;
   function Java_Unbox_V_Access_Array_Access_Array (Value : access Java_Object'Class) return V_Access_Array_Access_Array_Access renames org.allbinary.graph.V_Package_References.Java_Unbox_V_Access_Array_Access_Array;

   type V is new Java_Object with null record;

   procedure Initialize (This : in out V'Class);
   function Create return V_Access;
   function getId (This : in out V) return Integer;

end org.allbinary.graph.V_Package;


