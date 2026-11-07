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

limited with org.allbinary.game.layer.SteeringVisitor_Package;
package org.allbinary.game.layer.SteeringVisitor_Package_References is
   type SteeringVisitor_Access is access all org.allbinary.game.layer.SteeringVisitor_Package.SteeringVisitor'Class;
   type SteeringVisitor_Access_Array is array (Natural range <>) of SteeringVisitor_Access;
   type SteeringVisitor_Access_Array_Access is access all SteeringVisitor_Access_Array;
   type SteeringVisitor_Access_Array_Access_Array is array (Natural range <>) of SteeringVisitor_Access_Array_Access;
   type SteeringVisitor_Access_Array_Access_Array_Access is access all SteeringVisitor_Access_Array_Access_Array;
end org.allbinary.game.layer.SteeringVisitor_Package_References;

with org.allbinary.game.layer.SteeringVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.game.layer.SteeringVisitor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SteeringVisitor_Access is org.allbinary.game.layer.SteeringVisitor_Package_References.SteeringVisitor_Access;
   function "=" (Left, Right : SteeringVisitor_Access) return Boolean renames org.allbinary.game.layer.SteeringVisitor_Package_References."=";
   subtype SteeringVisitor_Access_Array is org.allbinary.game.layer.SteeringVisitor_Package_References.SteeringVisitor_Access_Array;
   function "=" (Left, Right : SteeringVisitor_Access_Array) return Boolean renames org.allbinary.game.layer.SteeringVisitor_Package_References."=";
   subtype SteeringVisitor_Access_Array_Access is org.allbinary.game.layer.SteeringVisitor_Package_References.SteeringVisitor_Access_Array_Access;
   function "=" (Left, Right : SteeringVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SteeringVisitor_Package_References."=";
   subtype SteeringVisitor_Access_Array_Access_Array is org.allbinary.game.layer.SteeringVisitor_Package_References.SteeringVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : SteeringVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SteeringVisitor_Package_References."=";
   subtype SteeringVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.SteeringVisitor_Package_References.SteeringVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SteeringVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SteeringVisitor_Package_References."=";

   type SteeringVisitor is new Visitor_Package.Visitor with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SteeringVisitor'Class);
   function Create return SteeringVisitor_Access;
   function getList (This : in out SteeringVisitor) return BasicArrayList_Access;

end org.allbinary.game.layer.SteeringVisitor_Package;


