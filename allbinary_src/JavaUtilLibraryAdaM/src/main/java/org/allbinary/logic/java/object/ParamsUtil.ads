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
limited with org.allbinary.logic.java.anyType.ParamsUtil_Package;
package org.allbinary.logic.java.anyType.ParamsUtil_Package_References is
   type ParamsUtil_Access is access all org.allbinary.logic.java.anyType.ParamsUtil_Package.ParamsUtil'Class;
   type ParamsUtil_Access_Array is array (Natural range <>) of ParamsUtil_Access;
   type ParamsUtil_Access_Array_Access is access all ParamsUtil_Access_Array;
   type ParamsUtil_Access_Array_Access_Array is array (Natural range <>) of ParamsUtil_Access_Array_Access;
   type ParamsUtil_Access_Array_Access_Array_Access is access all ParamsUtil_Access_Array_Access_Array;
   type ParamsUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ParamsUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ParamsUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ParamsUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ParamsUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ParamsUtil_Access_Array_Access is (if Value /= null and then Value.all in ParamsUtil_Access_Array_Object'Class then ParamsUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ParamsUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ParamsUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ParamsUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ParamsUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ParamsUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ParamsUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ParamsUtil_Access_Array_Access_Array_Object'Class then ParamsUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.anyType.ParamsUtil_Package_References;

with org.allbinary.logic.java.anyType.ParamsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.anyType.ParamsUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ParamsUtil_Access is org.allbinary.logic.java.anyType.ParamsUtil_Package_References.ParamsUtil_Access;
   function "=" (Left, Right : ParamsUtil_Access) return Boolean renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References."=";
   subtype ParamsUtil_Access_Array is org.allbinary.logic.java.anyType.ParamsUtil_Package_References.ParamsUtil_Access_Array;
   function "=" (Left, Right : ParamsUtil_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References."=";
   subtype ParamsUtil_Access_Array_Access is org.allbinary.logic.java.anyType.ParamsUtil_Package_References.ParamsUtil_Access_Array_Access;
   function "=" (Left, Right : ParamsUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References."=";
   function Java_Box (Value : ParamsUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References.Java_Box;
   function Java_Unbox_ParamsUtil_Access_Array (Value : access Java_Object'Class) return ParamsUtil_Access_Array_Access renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References.Java_Unbox_ParamsUtil_Access_Array;
   subtype ParamsUtil_Access_Array_Access_Array is org.allbinary.logic.java.anyType.ParamsUtil_Package_References.ParamsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ParamsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References."=";
   subtype ParamsUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.anyType.ParamsUtil_Package_References.ParamsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ParamsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References."=";
   function Java_Box (Value : ParamsUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References.Java_Box;
   function Java_Unbox_ParamsUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ParamsUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.anyType.ParamsUtil_Package_References.Java_Unbox_ParamsUtil_Access_Array_Access_Array;

   type ParamsUtil is new Java_Object with null record;

   procedure Initialize (This : in out ParamsUtil'Class);
   function Create return ParamsUtil_Access;
   function viewParams (params : Ada_Tags_Tag_Array_Access) return Unbounded_String;
   procedure viewParams (params : Ada_Tags_Tag_Array_Access);

end org.allbinary.logic.java.anyType.ParamsUtil_Package;


