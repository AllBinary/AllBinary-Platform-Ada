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
with org.allbinary.game.input.RTSLayerFormFactory_Package; use org.allbinary.game.input.RTSLayerFormFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package; use org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
with org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package; use org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package is

   package RTSLayerFormFactory_Package renames Standard.org.allbinary.game.input.RTSLayerFormFactory_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package ItemArraySingletonFactoryInterface_Package renames Standard.org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;

   type AdvancedRTSLayerFormFactory is tagged;
   type AdvancedRTSLayerFormFactory_Access is access all AdvancedRTSLayerFormFactory'Class;
   type AdvancedRTSLayerFormFactory_Access_Array is array (Natural range <>) of AdvancedRTSLayerFormFactory_Access;
   type AdvancedRTSLayerFormFactory_Access_Array_Access is access all AdvancedRTSLayerFormFactory_Access_Array;

   type AdvancedRTSLayerFormFactory is new RTSLayerFormFactory with record
      logUtil : LogUtil_Access;
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out AdvancedRTSLayerFormFactory'Class; label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface'Class);
   function Create (label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface'Class) return AdvancedRTSLayerFormFactory_Access;
   function getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class) return ScrollSelectionForm_Access;
   procedure getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class);

end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;


