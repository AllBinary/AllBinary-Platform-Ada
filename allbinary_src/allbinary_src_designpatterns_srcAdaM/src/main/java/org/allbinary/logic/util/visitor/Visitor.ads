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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.util.visitor.Visitor_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type Visitor is tagged;
   type Visitor_Access is access all Visitor'Class;
   type Visitor_Access_Array is array (Natural range <>) of Visitor_Access;
   type Visitor_Access_Array_Access is access all Visitor_Access_Array;

   type Visitor is new VisitorInterface with record
      nullUtil : NullUtil_Access;
   end record;
   instance : Visitor_Access;

   procedure Initialize (This : in out Visitor'Class);
   function Create return Visitor_Access;
   function visit (This : in out Visitor; anyType : Java_Object_Access) return Java_Object_Access;
   procedure visit (This : in out Visitor; anyType : Java_Object_Access);
   function getInstance return Visitor_Access;

end org.allbinary.logic.util.visitor.Visitor_Package;


