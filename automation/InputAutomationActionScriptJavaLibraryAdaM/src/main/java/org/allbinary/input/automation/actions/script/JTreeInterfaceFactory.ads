-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
package org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References is
   type JTreeInterfaceFactory_Access is access all org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package.JTreeInterfaceFactory'Class;
   type JTreeInterfaceFactory_Access_Array is array (Natural range <>) of JTreeInterfaceFactory_Access;
   type JTreeInterfaceFactory_Access_Array_Access is access all JTreeInterfaceFactory_Access_Array;
   type JTreeInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of JTreeInterfaceFactory_Access_Array_Access;
   type JTreeInterfaceFactory_Access_Array_Access_Array_Access is access all JTreeInterfaceFactory_Access_Array_Access_Array;
   type JTreeInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JTreeInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : JTreeInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JTreeInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JTreeInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JTreeInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in JTreeInterfaceFactory_Access_Array_Object'Class then JTreeInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type JTreeInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JTreeInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JTreeInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JTreeInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JTreeInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JTreeInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JTreeInterfaceFactory_Access_Array_Access_Array_Object'Class then JTreeInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References;

with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.JTreeInterface_Package;
with org.allbinary.input.automation.actions.script.JTreeInterface_Package_References;

package org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package is

   package Reference_Types is
   subtype JTreeInterface_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access;
   use type JTreeInterface_Access;
   subtype JTreeInterface_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array;
   use type JTreeInterface_Access_Array;
   subtype JTreeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access;
   use type JTreeInterface_Access_Array_Access;
   subtype JTreeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array;
   use type JTreeInterface_Access_Array_Access_Array;
   subtype JTreeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterface_Package_References.JTreeInterface_Access_Array_Access_Array_Access;
   use type JTreeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype JTreeInterfaceFactory_Access is org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.JTreeInterfaceFactory_Access;
   function "=" (Left, Right : JTreeInterfaceFactory_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References."=";
   subtype JTreeInterfaceFactory_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.JTreeInterfaceFactory_Access_Array;
   function "=" (Left, Right : JTreeInterfaceFactory_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References."=";
   subtype JTreeInterfaceFactory_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.JTreeInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : JTreeInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References."=";
   function Java_Box (Value : JTreeInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_JTreeInterfaceFactory_Access_Array (Value : access Java_Object'Class) return JTreeInterfaceFactory_Access_Array_Access renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.Java_Unbox_JTreeInterfaceFactory_Access_Array;
   subtype JTreeInterfaceFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.JTreeInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : JTreeInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References."=";
   subtype JTreeInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.JTreeInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JTreeInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References."=";
   function Java_Box (Value : JTreeInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_JTreeInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return JTreeInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package_References.Java_Unbox_JTreeInterfaceFactory_Access_Array_Access_Array;

   type JTreeInterfaceFactory is new Java_Object with record
      jTreeInterface : JTreeInterface_Access;
   end record;
   instance : JTreeInterfaceFactory_Access;

   procedure Initialize (This : in out JTreeInterfaceFactory'Class);
   function Create return JTreeInterfaceFactory_Access;
   function getInstance return JTreeInterfaceFactory_Access;
   procedure set (This : in out JTreeInterfaceFactory; jTreeInterface_Param : access JTreeInterface_Package.JTreeInterface'Class);
   function getJTreeInterface (This : in out JTreeInterfaceFactory) return JTreeInterface_Access;

end org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;


