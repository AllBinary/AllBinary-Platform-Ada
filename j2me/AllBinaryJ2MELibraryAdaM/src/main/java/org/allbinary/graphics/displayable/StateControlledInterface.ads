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
limited with org.allbinary.graphics.displayable.StateControlledInterface_Package;
package org.allbinary.graphics.displayable.StateControlledInterface_Package_References is
   type StateControlledInterface_Access is access all org.allbinary.graphics.displayable.StateControlledInterface_Package.StateControlledInterface'Class;
   type StateControlledInterface_Access_Array is array (Natural range <>) of StateControlledInterface_Access;
   type StateControlledInterface_Access_Array_Access is access all StateControlledInterface_Access_Array;
   type StateControlledInterface_Access_Array_Access_Array is array (Natural range <>) of StateControlledInterface_Access_Array_Access;
   type StateControlledInterface_Access_Array_Access_Array_Access is access all StateControlledInterface_Access_Array_Access_Array;
   type StateControlledInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StateControlledInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : StateControlledInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StateControlledInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StateControlledInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StateControlledInterface_Access_Array_Access is (if Value /= null and then Value.all in StateControlledInterface_Access_Array_Object'Class then StateControlledInterface_Access_Array_Object'Class (Value.all).Value else null);
   type StateControlledInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StateControlledInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StateControlledInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StateControlledInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StateControlledInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StateControlledInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StateControlledInterface_Access_Array_Access_Array_Object'Class then StateControlledInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.StateControlledInterface_Package_References;

with org.allbinary.graphics.displayable.StateControlledInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.displayable.StateControlledInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type StateControlledInterface is interface;
   subtype StateControlledInterface_Access is org.allbinary.graphics.displayable.StateControlledInterface_Package_References.StateControlledInterface_Access;
   function "=" (Left, Right : StateControlledInterface_Access) return Boolean renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References."=";
   subtype StateControlledInterface_Access_Array is org.allbinary.graphics.displayable.StateControlledInterface_Package_References.StateControlledInterface_Access_Array;
   function "=" (Left, Right : StateControlledInterface_Access_Array) return Boolean renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References."=";
   subtype StateControlledInterface_Access_Array_Access is org.allbinary.graphics.displayable.StateControlledInterface_Package_References.StateControlledInterface_Access_Array_Access;
   function "=" (Left, Right : StateControlledInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References."=";
   function Java_Box (Value : StateControlledInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References.Java_Box;
   function Java_Unbox_StateControlledInterface_Access_Array (Value : access Java_Object'Class) return StateControlledInterface_Access_Array_Access renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References.Java_Unbox_StateControlledInterface_Access_Array;
   subtype StateControlledInterface_Access_Array_Access_Array is org.allbinary.graphics.displayable.StateControlledInterface_Package_References.StateControlledInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StateControlledInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References."=";
   subtype StateControlledInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.StateControlledInterface_Package_References.StateControlledInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StateControlledInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References."=";
   function Java_Box (Value : StateControlledInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References.Java_Box;
   function Java_Unbox_StateControlledInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return StateControlledInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.StateControlledInterface_Package_References.Java_Unbox_StateControlledInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_StateControlledInterface (Value : StateControlledInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setState (This : in out StateControlledInterface; state : Integer) is abstract;

end org.allbinary.graphics.displayable.StateControlledInterface_Package;


