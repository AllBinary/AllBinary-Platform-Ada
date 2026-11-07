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

limited with org.allbinary.game.input.SelectRTSLayerVisitor_Package;
package org.allbinary.game.input.SelectRTSLayerVisitor_Package_References is
   type SelectRTSLayerVisitor_Access is access all org.allbinary.game.input.SelectRTSLayerVisitor_Package.SelectRTSLayerVisitor'Class;
   type SelectRTSLayerVisitor_Access_Array is array (Natural range <>) of SelectRTSLayerVisitor_Access;
   type SelectRTSLayerVisitor_Access_Array_Access is access all SelectRTSLayerVisitor_Access_Array;
   type SelectRTSLayerVisitor_Access_Array_Access_Array is array (Natural range <>) of SelectRTSLayerVisitor_Access_Array_Access;
   type SelectRTSLayerVisitor_Access_Array_Access_Array_Access is access all SelectRTSLayerVisitor_Access_Array_Access_Array;
end org.allbinary.game.input.SelectRTSLayerVisitor_Package_References;

with org.allbinary.game.input.SelectRTSLayerVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.game.input.SelectRTSLayerVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SelectRTSLayerVisitor_Access is org.allbinary.game.input.SelectRTSLayerVisitor_Package_References.SelectRTSLayerVisitor_Access;
   function "=" (Left, Right : SelectRTSLayerVisitor_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitor_Package_References."=";
   subtype SelectRTSLayerVisitor_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitor_Package_References.SelectRTSLayerVisitor_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitor_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitor_Package_References."=";
   subtype SelectRTSLayerVisitor_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitor_Package_References.SelectRTSLayerVisitor_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitor_Package_References."=";
   subtype SelectRTSLayerVisitor_Access_Array_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitor_Package_References.SelectRTSLayerVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitor_Package_References."=";
   subtype SelectRTSLayerVisitor_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitor_Package_References.SelectRTSLayerVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitor_Package_References."=";

   type SelectRTSLayerVisitor is new Visitor_Package.Visitor with null record;

   procedure Initialize (This : in out SelectRTSLayerVisitor'Class);
   function Create return SelectRTSLayerVisitor_Access;

end org.allbinary.game.input.SelectRTSLayerVisitor_Package;


