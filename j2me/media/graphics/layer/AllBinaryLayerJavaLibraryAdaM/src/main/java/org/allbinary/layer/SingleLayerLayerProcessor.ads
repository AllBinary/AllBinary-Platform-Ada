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
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.layer.SingleLayerLayerProcessor_Package is


   type SingleLayerLayerProcessor is tagged;
   type SingleLayerLayerProcessor_Access is access all SingleLayerLayerProcessor'Class;
   type SingleLayerLayerProcessor_Access_Array is array (Natural range <>) of SingleLayerLayerProcessor_Access;
   type SingleLayerLayerProcessor_Access_Array_Access is access all SingleLayerLayerProcessor_Access_Array;

   type SingleLayerLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out SingleLayerLayerProcessor'Class);
   function Create return SingleLayerLayerProcessor_Access;
   procedure process (This : in out SingleLayerLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.layer.SingleLayerLayerProcessor_Package;


