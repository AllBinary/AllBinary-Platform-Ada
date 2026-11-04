--  Generated Code Do Not Modify

limited with org.allbinary.input.automation.actions.script.JTreeInterface_Package;
package org.allbinary.input.automation.actions.script.JTreeInterface_Package_References is
   type JTreeInterface_Access is access all org.allbinary.input.automation.actions.script.JTreeInterface_Package.JTreeInterface'Class;
   type JTreeInterface_Access_Array is array (Natural range <>) of JTreeInterface_Access;
   type JTreeInterface_Access_Array_Access is access all JTreeInterface_Access_Array;
   type JTreeInterface_Access_Array_Access_Array is array (Natural range <>) of JTreeInterface_Access_Array_Access;
   type JTreeInterface_Access_Array_Access_Array_Access is access all JTreeInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.JTreeInterface_Package_References;

with org.allbinary.input.automation.actions.script.JTreeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.JTreeInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type JTreeInterface is interface;
   subtype JTreeInterface_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access;
   function "=" (Left, Right : JTreeInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array;
   function "=" (Left, Right : JTreeInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   subtype JTreeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JTreeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterface_Package_References."=";
   function Java_Object_Access_From_JTreeInterface (Value : JTreeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure updateJTree (This : in out JTreeInterface) is abstract;
   function getActionScriptJTree (This : in out JTreeInterface) return JTree_Access is abstract;

end org.allbinary.input.automation.actions.script.JTreeInterface_Package;


