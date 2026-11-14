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
limited with org.allbinary.data.tree.dom.ToDomHelper_Package;
package org.allbinary.data.tree.dom.ToDomHelper_Package_References is
   type ToDomHelper_Access is access all org.allbinary.data.tree.dom.ToDomHelper_Package.ToDomHelper'Class;
   type ToDomHelper_Access_Array is array (Natural range <>) of ToDomHelper_Access;
   type ToDomHelper_Access_Array_Access is access all ToDomHelper_Access_Array;
   type ToDomHelper_Access_Array_Access_Array is array (Natural range <>) of ToDomHelper_Access_Array_Access;
   type ToDomHelper_Access_Array_Access_Array_Access is access all ToDomHelper_Access_Array_Access_Array;
   type ToDomHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToDomHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : ToDomHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToDomHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToDomHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToDomHelper_Access_Array_Access is (if Value /= null and then Value.all in ToDomHelper_Access_Array_Object'Class then ToDomHelper_Access_Array_Object'Class (Value.all).Value else null);
   type ToDomHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToDomHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ToDomHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToDomHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToDomHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToDomHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ToDomHelper_Access_Array_Access_Array_Object'Class then ToDomHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.ToDomHelper_Package_References;

with org.allbinary.data.tree.dom.ToDomHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tree.dom.ToDomHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ToDomHelper_Access is org.allbinary.data.tree.dom.ToDomHelper_Package_References.ToDomHelper_Access;
   function "=" (Left, Right : ToDomHelper_Access) return Boolean renames org.allbinary.data.tree.dom.ToDomHelper_Package_References."=";
   subtype ToDomHelper_Access_Array is org.allbinary.data.tree.dom.ToDomHelper_Package_References.ToDomHelper_Access_Array;
   function "=" (Left, Right : ToDomHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.ToDomHelper_Package_References."=";
   subtype ToDomHelper_Access_Array_Access is org.allbinary.data.tree.dom.ToDomHelper_Package_References.ToDomHelper_Access_Array_Access;
   function "=" (Left, Right : ToDomHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.ToDomHelper_Package_References."=";
   function Java_Box (Value : ToDomHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.ToDomHelper_Package_References.Java_Box;
   function Java_Unbox_ToDomHelper_Access_Array (Value : access Java_Object'Class) return ToDomHelper_Access_Array_Access renames org.allbinary.data.tree.dom.ToDomHelper_Package_References.Java_Unbox_ToDomHelper_Access_Array;
   subtype ToDomHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.ToDomHelper_Package_References.ToDomHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ToDomHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.ToDomHelper_Package_References."=";
   subtype ToDomHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.ToDomHelper_Package_References.ToDomHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ToDomHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.ToDomHelper_Package_References."=";
   function Java_Box (Value : ToDomHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.ToDomHelper_Package_References.Java_Box;
   function Java_Unbox_ToDomHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return ToDomHelper_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.ToDomHelper_Package_References.Java_Unbox_ToDomHelper_Access_Array_Access_Array;

   type ToDomHelper is new Java_Object with null record;

   procedure Initialize (This : in out ToDomHelper'Class);
   function Create return ToDomHelper_Access;
   function convertNull (value_Param : Unbounded_String) return Unbounded_String;
   procedure convertNull (value_Param : Unbounded_String);

end org.allbinary.data.tree.dom.ToDomHelper_Package;


