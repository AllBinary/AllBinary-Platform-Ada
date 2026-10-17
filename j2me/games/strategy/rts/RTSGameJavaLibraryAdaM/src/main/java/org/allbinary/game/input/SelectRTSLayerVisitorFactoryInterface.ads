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

package org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SelectRTSLayerVisitorFactoryInterface is interface;
   type SelectRTSLayerVisitorFactoryInterface_Access is access all SelectRTSLayerVisitorFactoryInterface'Class;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactoryInterface_Access;
   type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access is access all SelectRTSLayerVisitorFactoryInterface_Access_Array;
   function create (This : in out SelectRTSLayerVisitorFactoryInterface; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) return Visitor_Access is abstract;

end org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;


