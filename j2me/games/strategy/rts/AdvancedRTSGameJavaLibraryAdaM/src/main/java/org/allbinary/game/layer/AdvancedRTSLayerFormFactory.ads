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

limited with org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;
package org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References is
   type AdvancedRTSLayerFormFactory_Access is access all org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package.AdvancedRTSLayerFormFactory'Class;
   type AdvancedRTSLayerFormFactory_Access_Array is array (Natural range <>) of AdvancedRTSLayerFormFactory_Access;
   type AdvancedRTSLayerFormFactory_Access_Array_Access is access all AdvancedRTSLayerFormFactory_Access_Array;
   type AdvancedRTSLayerFormFactory_Access_Array_Access_Array is array (Natural range <>) of AdvancedRTSLayerFormFactory_Access_Array_Access;
   type AdvancedRTSLayerFormFactory_Access_Array_Access_Array_Access is access all AdvancedRTSLayerFormFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References;

with org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.RTSLayerFormFactory_Package; use org.allbinary.game.input.RTSLayerFormFactory_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package is

   package RTSLayerFormFactory_Package renames Standard.org.allbinary.game.input.RTSLayerFormFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package ItemArraySingletonFactoryInterface_Package renames Standard.org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
   subtype ItemArraySingletonFactoryInterface_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access;
   use type ItemArraySingletonFactoryInterface_Access;
   subtype ItemArraySingletonFactoryInterface_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array;
   use type ItemArraySingletonFactoryInterface_Access_Array;
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access;
   use type ItemArraySingletonFactoryInterface_Access_Array_Access;
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array;
   use type ItemArraySingletonFactoryInterface_Access_Array_Access_Array;
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access;
   use type ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access;
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvancedRTSLayerFormFactory_Access is org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References.AdvancedRTSLayerFormFactory_Access;
   function "=" (Left, Right : AdvancedRTSLayerFormFactory_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References."=";
   subtype AdvancedRTSLayerFormFactory_Access_Array is org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References.AdvancedRTSLayerFormFactory_Access_Array;
   function "=" (Left, Right : AdvancedRTSLayerFormFactory_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References."=";
   subtype AdvancedRTSLayerFormFactory_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References.AdvancedRTSLayerFormFactory_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSLayerFormFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References."=";
   subtype AdvancedRTSLayerFormFactory_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References.AdvancedRTSLayerFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSLayerFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References."=";
   subtype AdvancedRTSLayerFormFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References.AdvancedRTSLayerFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSLayerFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package_References."=";

   type AdvancedRTSLayerFormFactory is new RTSLayerFormFactory with record
      logUtil : LogUtil_Access;
      scrollSelectionForm : ScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out AdvancedRTSLayerFormFactory'Class; label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class);
   function Create (label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class) return AdvancedRTSLayerFormFactory_Access;
   function getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access;
   procedure getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);

end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;


