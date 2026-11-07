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

limited with org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;
package org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References is
   type LimitCommandsVisitor_Access is access all org.allbinary.graphics.form.item.LimitCommandsVisitor_Package.LimitCommandsVisitor'Class;
   type LimitCommandsVisitor_Access_Array is array (Natural range <>) of LimitCommandsVisitor_Access;
   type LimitCommandsVisitor_Access_Array_Access is access all LimitCommandsVisitor_Access_Array;
   type LimitCommandsVisitor_Access_Array_Access_Array is array (Natural range <>) of LimitCommandsVisitor_Access_Array_Access;
   type LimitCommandsVisitor_Access_Array_Access_Array_Access is access all LimitCommandsVisitor_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References;

with org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.graphics.form.item.LimitCommandsVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LimitCommandsVisitor_Access is org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References.LimitCommandsVisitor_Access;
   function "=" (Left, Right : LimitCommandsVisitor_Access) return Boolean renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References."=";
   subtype LimitCommandsVisitor_Access_Array is org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References.LimitCommandsVisitor_Access_Array;
   function "=" (Left, Right : LimitCommandsVisitor_Access_Array) return Boolean renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References."=";
   subtype LimitCommandsVisitor_Access_Array_Access is org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References.LimitCommandsVisitor_Access_Array_Access;
   function "=" (Left, Right : LimitCommandsVisitor_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References."=";
   subtype LimitCommandsVisitor_Access_Array_Access_Array is org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References.LimitCommandsVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : LimitCommandsVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References."=";
   subtype LimitCommandsVisitor_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References.LimitCommandsVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LimitCommandsVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package_References."=";

   type LimitCommandsVisitor is new Visitor_Package.Visitor with record
      isNotSmallDisplay : Boolean;
   end record;

   procedure Initialize (This : in out LimitCommandsVisitor'Class);
   function Create return LimitCommandsVisitor_Access;
   function visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out LimitCommandsVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out LimitCommandsVisitor; Value : Unbounded_String);

end org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;


