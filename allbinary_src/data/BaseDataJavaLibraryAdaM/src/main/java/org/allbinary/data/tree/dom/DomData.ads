--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.data.tree.dom.DomData_Package;
package org.allbinary.data.tree.dom.DomData_Package_References is
   type DomData_Access is access all org.allbinary.data.tree.dom.DomData_Package.DomData'Class;
   type DomData_Access_Array is array (Natural range <>) of DomData_Access;
   type DomData_Access_Array_Access is access all DomData_Access_Array;
   type DomData_Access_Array_Access_Array is array (Natural range <>) of DomData_Access_Array_Access;
   type DomData_Access_Array_Access_Array_Access is access all DomData_Access_Array_Access_Array;
   type DomData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomData_Access_Array_Access;
   end record;
   function Java_Box (Value : DomData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomData_Access_Array_Access is (if Value /= null and then Value.all in DomData_Access_Array_Object'Class then DomData_Access_Array_Object'Class (Value.all).Value else null);
   type DomData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DomData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DomData_Access_Array_Access_Array_Object'Class then DomData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.DomData_Package_References;

with org.allbinary.data.tree.dom.DomData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tree.dom.DomData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DomData_Access is org.allbinary.data.tree.dom.DomData_Package_References.DomData_Access;
   function "=" (Left, Right : DomData_Access) return Boolean renames org.allbinary.data.tree.dom.DomData_Package_References."=";
   subtype DomData_Access_Array is org.allbinary.data.tree.dom.DomData_Package_References.DomData_Access_Array;
   function "=" (Left, Right : DomData_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomData_Package_References."=";
   subtype DomData_Access_Array_Access is org.allbinary.data.tree.dom.DomData_Package_References.DomData_Access_Array_Access;
   function "=" (Left, Right : DomData_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomData_Package_References."=";
   function Java_Box (Value : DomData_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.DomData_Package_References.Java_Box;
   function Java_Unbox_DomData_Access_Array (Value : access Java_Object'Class) return DomData_Access_Array_Access renames org.allbinary.data.tree.dom.DomData_Package_References.Java_Unbox_DomData_Access_Array;
   subtype DomData_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomData_Package_References.DomData_Access_Array_Access_Array;
   function "=" (Left, Right : DomData_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomData_Package_References."=";
   subtype DomData_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomData_Package_References.DomData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomData_Package_References."=";
   function Java_Box (Value : DomData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.DomData_Package_References.Java_Box;
   function Java_Unbox_DomData_Access_Array_Access_Array (Value : access Java_Object'Class) return DomData_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.DomData_Package_References.Java_Unbox_DomData_Access_Array_Access_Array;

   type DomData is new Java_Object with null record;
   ID : Unbounded_String;
   CHILD : Unbounded_String;
   NAME : Unbounded_String;
   VALUE : Unbounded_String;
   INDEX : Unbounded_String;

   procedure Initialize (This : in out DomData'Class);
   function Create return DomData_Access;

end org.allbinary.data.tree.dom.DomData_Package;


