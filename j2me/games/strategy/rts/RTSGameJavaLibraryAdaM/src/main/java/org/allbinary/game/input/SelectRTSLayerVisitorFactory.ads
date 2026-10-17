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
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitor_Package; use org.allbinary.game.input.SelectRTSLayerVisitor_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;

package org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SelectRTSLayerVisitorFactory is tagged;
   type SelectRTSLayerVisitorFactory_Access is access all SelectRTSLayerVisitorFactory'Class;
   type SelectRTSLayerVisitorFactory_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactory_Access;
   type SelectRTSLayerVisitorFactory_Access_Array_Access is access all SelectRTSLayerVisitorFactory_Access_Array;

   type SelectRTSLayerVisitorFactory is new SelectRTSLayerVisitorFactoryInterface with null record;
   instance : SelectRTSLayerVisitorFactory_Access;

   procedure Initialize (This : in out SelectRTSLayerVisitorFactory'Class);
   function Create return SelectRTSLayerVisitorFactory_Access;
   function getInstance return SelectRTSLayerVisitorFactory_Access;
   function create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return Visitor_Access;
   procedure create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);

end org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package;


