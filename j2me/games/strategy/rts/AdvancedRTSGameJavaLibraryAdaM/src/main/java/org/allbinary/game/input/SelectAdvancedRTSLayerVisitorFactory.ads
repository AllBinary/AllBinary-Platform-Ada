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
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package; use org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;

package org.allbinary.game.input.SelectAdvancedRTSLayerVisitorFactory_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SelectAdvancedRTSLayerVisitorFactory is tagged;
   type SelectAdvancedRTSLayerVisitorFactory_Access is access all SelectAdvancedRTSLayerVisitorFactory'Class;
   type SelectAdvancedRTSLayerVisitorFactory_Access_Array is array (Natural range <>) of SelectAdvancedRTSLayerVisitorFactory_Access;
   type SelectAdvancedRTSLayerVisitorFactory_Access_Array_Access is access all SelectAdvancedRTSLayerVisitorFactory_Access_Array;

   type SelectAdvancedRTSLayerVisitorFactory is new SelectRTSLayerVisitorFactoryInterface with null record;
   instance : SelectAdvancedRTSLayerVisitorFactory_Access;

   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitorFactory'Class);
   function Create return SelectAdvancedRTSLayerVisitorFactory_Access;
   function getInstance return SelectAdvancedRTSLayerVisitorFactory_Access;
   function create (This : in out SelectAdvancedRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) return Visitor_Access;
   procedure create (This : in out SelectAdvancedRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access);

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitorFactory_Package;


