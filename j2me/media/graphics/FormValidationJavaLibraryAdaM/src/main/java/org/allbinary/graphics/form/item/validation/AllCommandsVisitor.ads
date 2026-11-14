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
limited with org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;
package org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References is
   type AllCommandsVisitor_Access is access all org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package.AllCommandsVisitor'Class;
   type AllCommandsVisitor_Access_Array is array (Natural range <>) of AllCommandsVisitor_Access;
   type AllCommandsVisitor_Access_Array_Access is access all AllCommandsVisitor_Access_Array;
   type AllCommandsVisitor_Access_Array_Access_Array is array (Natural range <>) of AllCommandsVisitor_Access_Array_Access;
   type AllCommandsVisitor_Access_Array_Access_Array_Access is access all AllCommandsVisitor_Access_Array_Access_Array;
   type AllCommandsVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllCommandsVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : AllCommandsVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllCommandsVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllCommandsVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllCommandsVisitor_Access_Array_Access is (if Value /= null and then Value.all in AllCommandsVisitor_Access_Array_Object'Class then AllCommandsVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type AllCommandsVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllCommandsVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllCommandsVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllCommandsVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllCommandsVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllCommandsVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllCommandsVisitor_Access_Array_Access_Array_Object'Class then AllCommandsVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References;

with org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllCommandsVisitor_Access is org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.AllCommandsVisitor_Access;
   function "=" (Left, Right : AllCommandsVisitor_Access) return Boolean renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References."=";
   subtype AllCommandsVisitor_Access_Array is org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.AllCommandsVisitor_Access_Array;
   function "=" (Left, Right : AllCommandsVisitor_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References."=";
   subtype AllCommandsVisitor_Access_Array_Access is org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.AllCommandsVisitor_Access_Array_Access;
   function "=" (Left, Right : AllCommandsVisitor_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References."=";
   function Java_Box (Value : AllCommandsVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.Java_Box;
   function Java_Unbox_AllCommandsVisitor_Access_Array (Value : access Java_Object'Class) return AllCommandsVisitor_Access_Array_Access renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.Java_Unbox_AllCommandsVisitor_Access_Array;
   subtype AllCommandsVisitor_Access_Array_Access_Array is org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.AllCommandsVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AllCommandsVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References."=";
   subtype AllCommandsVisitor_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.AllCommandsVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllCommandsVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References."=";
   function Java_Box (Value : AllCommandsVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.Java_Box;
   function Java_Unbox_AllCommandsVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return AllCommandsVisitor_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package_References.Java_Unbox_AllCommandsVisitor_Access_Array_Access_Array;

   type AllCommandsVisitor is new Visitor_Package.Visitor with null record;

   procedure Initialize (This : in out AllCommandsVisitor'Class);
   function Create return AllCommandsVisitor_Access;
   function visit (This : in out AllCommandsVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out AllCommandsVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out AllCommandsVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out AllCommandsVisitor; Value : Unbounded_String);

end org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;


