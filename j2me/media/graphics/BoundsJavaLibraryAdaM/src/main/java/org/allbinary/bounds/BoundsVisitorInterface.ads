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
limited with org.allbinary.bounds.BoundsVisitorInterface_Package;
package org.allbinary.bounds.BoundsVisitorInterface_Package_References is
   type BoundsVisitorInterface_Access is access all org.allbinary.bounds.BoundsVisitorInterface_Package.BoundsVisitorInterface'Class;
   type BoundsVisitorInterface_Access_Array is array (Natural range <>) of BoundsVisitorInterface_Access;
   type BoundsVisitorInterface_Access_Array_Access is access all BoundsVisitorInterface_Access_Array;
   type BoundsVisitorInterface_Access_Array_Access_Array is array (Natural range <>) of BoundsVisitorInterface_Access_Array_Access;
   type BoundsVisitorInterface_Access_Array_Access_Array_Access is access all BoundsVisitorInterface_Access_Array_Access_Array;
   type BoundsVisitorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BoundsVisitorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BoundsVisitorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BoundsVisitorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BoundsVisitorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BoundsVisitorInterface_Access_Array_Access is (if Value /= null and then Value.all in BoundsVisitorInterface_Access_Array_Object'Class then BoundsVisitorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BoundsVisitorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BoundsVisitorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BoundsVisitorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BoundsVisitorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BoundsVisitorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BoundsVisitorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BoundsVisitorInterface_Access_Array_Access_Array_Object'Class then BoundsVisitorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.bounds.BoundsVisitorInterface_Package_References;

with org.allbinary.bounds.BoundsVisitorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.bounds.BoundsVisitorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type BoundsVisitorInterface is interface;
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   function Java_Box (Value : BoundsVisitorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.BoundsVisitorInterface_Package_References.Java_Box;
   function Java_Unbox_BoundsVisitorInterface_Access_Array (Value : access Java_Object'Class) return BoundsVisitorInterface_Access_Array_Access renames org.allbinary.bounds.BoundsVisitorInterface_Package_References.Java_Unbox_BoundsVisitorInterface_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.BoundsVisitorInterface_Package_References."=";
   function Java_Box (Value : BoundsVisitorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.BoundsVisitorInterface_Package_References.Java_Box;
   function Java_Unbox_BoundsVisitorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BoundsVisitorInterface_Access_Array_Access_Array_Access renames org.allbinary.bounds.BoundsVisitorInterface_Package_References.Java_Unbox_BoundsVisitorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BoundsVisitorInterface (Value : BoundsVisitorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getX (This : in out BoundsVisitorInterface) return Integer is abstract;
   function getY (This : in out BoundsVisitorInterface) return Integer is abstract;
   procedure maxX (This : in out BoundsVisitorInterface) is abstract;
   procedure maxY (This : in out BoundsVisitorInterface) is abstract;
   procedure minX (This : in out BoundsVisitorInterface) is abstract;
   procedure minY (This : in out BoundsVisitorInterface) is abstract;

end org.allbinary.bounds.BoundsVisitorInterface_Package;


