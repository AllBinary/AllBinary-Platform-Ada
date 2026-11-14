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
limited with org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package;
package org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References is
   type PointsCompositeInterface_Access is access all org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package.PointsCompositeInterface'Class;
   type PointsCompositeInterface_Access_Array is array (Natural range <>) of PointsCompositeInterface_Access;
   type PointsCompositeInterface_Access_Array_Access is access all PointsCompositeInterface_Access_Array;
   type PointsCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of PointsCompositeInterface_Access_Array_Access;
   type PointsCompositeInterface_Access_Array_Access_Array_Access is access all PointsCompositeInterface_Access_Array_Access_Array;
   type PointsCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in PointsCompositeInterface_Access_Array_Object'Class then PointsCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PointsCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PointsCompositeInterface_Access_Array_Access_Array_Object'Class then PointsCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package is

   package Reference_Types is
   subtype PointsInterface_Access is org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References.PointsInterface_Access;
   use type PointsInterface_Access;
   subtype PointsInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References.PointsInterface_Access_Array;
   use type PointsInterface_Access_Array;
   subtype PointsInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References.PointsInterface_Access_Array_Access;
   use type PointsInterface_Access_Array_Access;
   subtype PointsInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References.PointsInterface_Access_Array_Access_Array;
   use type PointsInterface_Access_Array_Access_Array;
   subtype PointsInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package_References.PointsInterface_Access_Array_Access_Array_Access;
   use type PointsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PointsCompositeInterface is interface;
   subtype PointsCompositeInterface_Access is org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.PointsCompositeInterface_Access;
   function "=" (Left, Right : PointsCompositeInterface_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References."=";
   subtype PointsCompositeInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.PointsCompositeInterface_Access_Array;
   function "=" (Left, Right : PointsCompositeInterface_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References."=";
   subtype PointsCompositeInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.PointsCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PointsCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References."=";
   function Java_Box (Value : PointsCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_PointsCompositeInterface_Access_Array (Value : access Java_Object'Class) return PointsCompositeInterface_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.Java_Unbox_PointsCompositeInterface_Access_Array;
   subtype PointsCompositeInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.PointsCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PointsCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References."=";
   subtype PointsCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.PointsCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References."=";
   function Java_Box (Value : PointsCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_PointsCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PointsCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package_References.Java_Unbox_PointsCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PointsCompositeInterface (Value : PointsCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPointsInterface (This : in out PointsCompositeInterface) return PointsInterface_Access is abstract;

end org.allbinary.graphics.j2me.workarea.tools.PointsCompositeInterface_Package;


