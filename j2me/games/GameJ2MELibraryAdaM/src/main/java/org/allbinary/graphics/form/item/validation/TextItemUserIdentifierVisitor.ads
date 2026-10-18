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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.graphics.form.item.validation.TextItemUserIdentifierVisitor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type TextItemUserIdentifierVisitor is tagged;
   type TextItemUserIdentifierVisitor_Access is access all TextItemUserIdentifierVisitor'Class;
   type TextItemUserIdentifierVisitor_Access_Array is array (Natural range <>) of TextItemUserIdentifierVisitor_Access;
   type TextItemUserIdentifierVisitor_Access_Array_Access is access all TextItemUserIdentifierVisitor_Access_Array;
   type TextItemUserIdentifierVisitor_Access_Array_Access_Array is array (Natural range <>) of TextItemUserIdentifierVisitor_Access_Array_Access;
   type TextItemUserIdentifierVisitor_Access_Array_Access_Array_Access is access all TextItemUserIdentifierVisitor_Access_Array_Access_Array;

   type TextItemUserIdentifierVisitor is new Visitor with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TextItemUserIdentifierVisitor'Class);
   function Create return TextItemUserIdentifierVisitor_Access;
   function visit (This : in out TextItemUserIdentifierVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out TextItemUserIdentifierVisitor; anyType_Param : access Java_Object'Class);
   function isLetter (This : in out TextItemUserIdentifierVisitor; charValue : Character) return Boolean;
   procedure isLetter (This : in out TextItemUserIdentifierVisitor; charValue : Character);
   function visit (This : in out TextItemUserIdentifierVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out TextItemUserIdentifierVisitor; Value : Unbounded_String);

end org.allbinary.graphics.form.item.validation.TextItemUserIdentifierVisitor_Package;


