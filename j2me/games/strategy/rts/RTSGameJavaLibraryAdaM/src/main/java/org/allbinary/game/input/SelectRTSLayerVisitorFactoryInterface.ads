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

limited with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
package org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References is
   type SelectRTSLayerVisitorFactoryInterface_Access is access all org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactoryInterface_Access;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access is access all SelectRTSLayerVisitorFactoryInterface_Access_Array;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactoryInterface_Access_Array_Access;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access is access all SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array;
end org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References;

with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

package org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access;
   use type SelectedRTSLayersPlayerGameInput_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type SelectRTSLayerVisitorFactoryInterface is interface;
   subtype SelectRTSLayerVisitorFactoryInterface_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   function Java_Object_Access_From_SelectRTSLayerVisitorFactoryInterface (Value : SelectRTSLayerVisitorFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function create (This : in out SelectRTSLayerVisitorFactoryInterface; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return Visitor_Access is abstract;
   procedure create (This : in out SelectRTSLayerVisitorFactoryInterface; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) is abstract;

end org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;


