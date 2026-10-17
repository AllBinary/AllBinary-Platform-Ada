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
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;

package org.allbinary.layer.LayerManagerNoDebug_Package is


   type LayerManagerNoDebug is tagged;
   type LayerManagerNoDebug_Access is access all LayerManagerNoDebug'Class;
   type LayerManagerNoDebug_Access_Array is array (Natural range <>) of LayerManagerNoDebug_Access;
   type LayerManagerNoDebug_Access_Array_Access is access all LayerManagerNoDebug_Access_Array;

   type LayerManagerNoDebug is new LayerManagerLoggingBase with null record;
   instance : LayerManagerNoDebug_Access;

   procedure Initialize (This : in out LayerManagerNoDebug'Class);
   function Create return LayerManagerNoDebug_Access;
   function getInstance return LayerManagerNoDebug_Access;
   procedure getInstance;

end org.allbinary.layer.LayerManagerNoDebug_Package;


