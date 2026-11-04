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

limited with org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;
package org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References is
   type TextItemVisitor_Access is access all org.allbinary.graphics.form.item.validation.TextItemVisitor_Package.TextItemVisitor'Class;
   type TextItemVisitor_Access_Array is array (Natural range <>) of TextItemVisitor_Access;
   type TextItemVisitor_Access_Array_Access is access all TextItemVisitor_Access_Array;
   type TextItemVisitor_Access_Array_Access_Array is array (Natural range <>) of TextItemVisitor_Access_Array_Access;
   type TextItemVisitor_Access_Array_Access_Array_Access is access all TextItemVisitor_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References;

with org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.graphics.form.item.validation.TextItemVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TextItemVisitor_Access is org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References.TextItemVisitor_Access;
   function "=" (Left, Right : TextItemVisitor_Access) return Boolean renames org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References."=";
   subtype TextItemVisitor_Access_Array is org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References.TextItemVisitor_Access_Array;
   function "=" (Left, Right : TextItemVisitor_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References."=";
   subtype TextItemVisitor_Access_Array_Access is org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References.TextItemVisitor_Access_Array_Access;
   function "=" (Left, Right : TextItemVisitor_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References."=";
   subtype TextItemVisitor_Access_Array_Access_Array is org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References.TextItemVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : TextItemVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References."=";
   subtype TextItemVisitor_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References.TextItemVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextItemVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.TextItemVisitor_Package_References."=";

   type TextItemVisitor is new Visitor with null record;

   procedure Initialize (This : in out TextItemVisitor'Class);
   function Create return TextItemVisitor_Access;
   function visit (This : in out TextItemVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out TextItemVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out TextItemVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out TextItemVisitor; Value : Unbounded_String);

end org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;


