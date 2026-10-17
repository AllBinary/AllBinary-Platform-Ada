-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.game.layer.SteeringVisitor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SteeringVisitor is tagged;
   type SteeringVisitor_Access is access all SteeringVisitor'Class;
   type SteeringVisitor_Access_Array is array (Natural range <>) of SteeringVisitor_Access;
   type SteeringVisitor_Access_Array_Access is access all SteeringVisitor_Access_Array;

   type SteeringVisitor is new Visitor with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SteeringVisitor'Class);
   function Create return SteeringVisitor_Access;
   function getList (This : in out SteeringVisitor) return BasicArrayList_Access;
   procedure getList (This : in out SteeringVisitor);

end org.allbinary.game.layer.SteeringVisitor_Package;


