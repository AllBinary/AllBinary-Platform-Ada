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

with AllBinary_Java;
limited with org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;
package org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References is
   type SelectAdvancedRTSLayerVisitor_Access is access all org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package.SelectAdvancedRTSLayerVisitor'Class;
   type SelectAdvancedRTSLayerVisitor_Access_Array is array (Natural range <>) of SelectAdvancedRTSLayerVisitor_Access;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access is access all SelectAdvancedRTSLayerVisitor_Access_Array;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array is array (Natural range <>) of SelectAdvancedRTSLayerVisitor_Access_Array_Access;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access is access all SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array;
   type SelectAdvancedRTSLayerVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectAdvancedRTSLayerVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectAdvancedRTSLayerVisitor_Access_Array_Access is (if Value /= null and then Value.all in SelectAdvancedRTSLayerVisitor_Access_Array_Object'Class then SelectAdvancedRTSLayerVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Object'Class then SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References;

with org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

package org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
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


   subtype SelectAdvancedRTSLayerVisitor_Access is org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.SelectAdvancedRTSLayerVisitor_Access;
   function "=" (Left, Right : SelectAdvancedRTSLayerVisitor_Access) return Boolean renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References."=";
   subtype SelectAdvancedRTSLayerVisitor_Access_Array is org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.SelectAdvancedRTSLayerVisitor_Access_Array;
   function "=" (Left, Right : SelectAdvancedRTSLayerVisitor_Access_Array) return Boolean renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References."=";
   subtype SelectAdvancedRTSLayerVisitor_Access_Array_Access is org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.SelectAdvancedRTSLayerVisitor_Access_Array_Access;
   function "=" (Left, Right : SelectAdvancedRTSLayerVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References."=";
   function Java_Box (Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.Java_Box;
   function Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array (Value : access Java_Object'Class) return SelectAdvancedRTSLayerVisitor_Access_Array_Access renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array;
   subtype SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array is org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References."=";
   subtype SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References."=";
   function Java_Box (Value : SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.Java_Box;
   function Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array_Access renames org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package_References.Java_Unbox_SelectAdvancedRTSLayerVisitor_Access_Array_Access_Array;

   type SelectAdvancedRTSLayerVisitor is new Visitor_Package.Visitor with record
      selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);
   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectAdvancedRTSLayerVisitor_Access;
   function visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String);

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;


