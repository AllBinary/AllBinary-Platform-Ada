-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;

package org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SelectAdvancedRTSLayerVisitor is tagged;
   type SelectAdvancedRTSLayerVisitor_Access is access all SelectAdvancedRTSLayerVisitor'Class;
   type SelectAdvancedRTSLayerVisitor_Access_Array is array (Natural range <>) of SelectAdvancedRTSLayerVisitor_Access;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access is access all SelectAdvancedRTSLayerVisitor_Access_Array;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array is array (Natural range <>) of SelectAdvancedRTSLayerVisitor_Access_Array_Access;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access is access all SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array;

   type SelectAdvancedRTSLayerVisitor is new Visitor with record
      selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);
   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectAdvancedRTSLayerVisitor_Access;
   function visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String);

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;


