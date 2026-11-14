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
limited with org.allbinary.logic.util.visitor.Visitor_Package;
package org.allbinary.logic.util.visitor.Visitor_Package_References is
   type Visitor_Access is access all org.allbinary.logic.util.visitor.Visitor_Package.Visitor'Class;
   type Visitor_Access_Array is array (Natural range <>) of Visitor_Access;
   type Visitor_Access_Array_Access is access all Visitor_Access_Array;
   type Visitor_Access_Array_Access_Array is array (Natural range <>) of Visitor_Access_Array_Access;
   type Visitor_Access_Array_Access_Array_Access is access all Visitor_Access_Array_Access_Array;
   type Visitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Visitor_Access_Array_Access;
   end record;
   function Java_Box (Value : Visitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Visitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Visitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Visitor_Access_Array_Access is (if Value /= null and then Value.all in Visitor_Access_Array_Object'Class then Visitor_Access_Array_Object'Class (Value.all).Value else null);
   type Visitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Visitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Visitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Visitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Visitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Visitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Visitor_Access_Array_Access_Array_Object'Class then Visitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.visitor.Visitor_Package_References;

with org.allbinary.logic.util.visitor.Visitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.util.visitor.Visitor_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package Reference_Types is
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   use type NullUtil_Access;
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   use type NullUtil_Access_Array;
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   use type NullUtil_Access_Array_Access;
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   use type NullUtil_Access_Array_Access_Array;
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   use type NullUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   function "=" (Left, Right : Visitor_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   function Java_Box (Value : Visitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.visitor.Visitor_Package_References.Java_Box;
   function Java_Unbox_Visitor_Access_Array (Value : access Java_Object'Class) return Visitor_Access_Array_Access renames org.allbinary.logic.util.visitor.Visitor_Package_References.Java_Unbox_Visitor_Access_Array;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   function Java_Box (Value : Visitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.visitor.Visitor_Package_References.Java_Box;
   function Java_Unbox_Visitor_Access_Array_Access_Array (Value : access Java_Object'Class) return Visitor_Access_Array_Access_Array_Access renames org.allbinary.logic.util.visitor.Visitor_Package_References.Java_Unbox_Visitor_Access_Array_Access_Array;

   type Visitor is new Java_Object and VisitorInterface with record
      nullUtil : NullUtil_Access;
   end record;
   instance : Visitor_Access;

   procedure Initialize (This : in out Visitor'Class);
   function Create return Visitor_Access;
   function visit (This : in out Visitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out Visitor; anyType_Param : access Java_Object'Class);
   function getInstance return Visitor_Access;
   function visit (This : in out Visitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out Visitor; Value : Unbounded_String);

end org.allbinary.logic.util.visitor.Visitor_Package;


