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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.layer.event.LayerManagerEvent_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type LayerManagerEvent is tagged;
   type LayerManagerEvent_Access is access all LayerManagerEvent'Class;
   type LayerManagerEvent_Access_Array is array (Natural range <>) of LayerManagerEvent_Access;
   type LayerManagerEvent_Access_Array_Access is access all LayerManagerEvent_Access_Array;

   type LayerManagerEvent is new AllBinaryEventObject with record
      layerInterface : AllBinaryLayer_Access;
      crud : Unbounded_String;
   end record;

   procedure Initialize (This : in out LayerManagerEvent'Class; layerManager : LayerManager_Access; crud : Unbounded_String);
   function Create (layerManager : LayerManager_Access; crud : Unbounded_String) return LayerManagerEvent_Access;
   function getLayerInterface (This : in out LayerManagerEvent) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out LayerManagerEvent);
   procedure setLayerInterface (This : in out LayerManagerEvent; layerInterface : AllBinaryLayer_Access);
   function toString (This : in out LayerManagerEvent) return Unbounded_String;
   procedure toString (This : in out LayerManagerEvent);

end org.allbinary.layer.event.LayerManagerEvent_Package;


