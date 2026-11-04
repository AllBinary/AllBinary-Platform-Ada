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

limited with org.allbinary.logic.util.visitor.VisitorInterface_Package;
package org.allbinary.logic.util.visitor.VisitorInterface_Package_References is
   type VisitorInterface_Access is access all org.allbinary.logic.util.visitor.VisitorInterface_Package.VisitorInterface'Class;
   type VisitorInterface_Access_Array is array (Natural range <>) of VisitorInterface_Access;
   type VisitorInterface_Access_Array_Access is access all VisitorInterface_Access_Array;
   type VisitorInterface_Access_Array_Access_Array is array (Natural range <>) of VisitorInterface_Access_Array_Access;
   type VisitorInterface_Access_Array_Access_Array_Access is access all VisitorInterface_Access_Array_Access_Array;
end org.allbinary.logic.util.visitor.VisitorInterface_Package_References;

with org.allbinary.logic.util.visitor.VisitorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.visitor.VisitorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type VisitorInterface is interface;
   subtype VisitorInterface_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access;
   function "=" (Left, Right : VisitorInterface_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array;
   function "=" (Left, Right : VisitorInterface_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   function Java_Object_Access_From_VisitorInterface (Value : VisitorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function visit (This : in out VisitorInterface; anyType_Param : access Java_Object'Class) return Java_Object_Access is abstract;

end org.allbinary.logic.util.visitor.VisitorInterface_Package;


