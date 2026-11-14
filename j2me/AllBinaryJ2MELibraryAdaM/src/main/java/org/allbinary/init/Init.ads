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
limited with org.allbinary.init.Init_Package;
package org.allbinary.init.Init_Package_References is
   type Init_Access is access all org.allbinary.init.Init_Package.Init'Class;
   type Init_Access_Array is array (Natural range <>) of Init_Access;
   type Init_Access_Array_Access is access all Init_Access_Array;
   type Init_Access_Array_Access_Array is array (Natural range <>) of Init_Access_Array_Access;
   type Init_Access_Array_Access_Array_Access is access all Init_Access_Array_Access_Array;
   type Init_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Init_Access_Array_Access;
   end record;
   function Java_Box (Value : Init_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Init_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Init_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Init_Access_Array_Access is (if Value /= null and then Value.all in Init_Access_Array_Object'Class then Init_Access_Array_Object'Class (Value.all).Value else null);
   type Init_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Init_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Init_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Init_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Init_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Init_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Init_Access_Array_Access_Array_Object'Class then Init_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.init.Init_Package_References;

with org.allbinary.init.Init_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.init.InitInterface_Package; use org.allbinary.init.InitInterface_Package;

package org.allbinary.init.Init_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Init_Access is org.allbinary.init.Init_Package_References.Init_Access;
   function "=" (Left, Right : Init_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array;
   function "=" (Left, Right : Init_Access_Array) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access;
   function "=" (Left, Right : Init_Access_Array_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
   function Java_Box (Value : Init_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.Init_Package_References.Java_Box;
   function Java_Unbox_Init_Access_Array (Value : access Java_Object'Class) return Init_Access_Array_Access renames org.allbinary.init.Init_Package_References.Java_Unbox_Init_Access_Array;
   subtype Init_Access_Array_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array;
   function "=" (Left, Right : Init_Access_Array_Access_Array) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Init_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
   function Java_Box (Value : Init_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.Init_Package_References.Java_Box;
   function Java_Unbox_Init_Access_Array_Access_Array (Value : access Java_Object'Class) return Init_Access_Array_Access_Array_Access renames org.allbinary.init.Init_Package_References.Java_Unbox_Init_Access_Array_Access_Array;

   type Init is new Java_Object and InitInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out Init'Class);
   function Create return Init_Access;
   procedure init_Method (This : in out Init);

end org.allbinary.init.Init_Package;


