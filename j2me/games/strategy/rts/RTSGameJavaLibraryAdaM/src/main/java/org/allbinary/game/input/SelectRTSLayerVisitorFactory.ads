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

with AllBinary_Java;
limited with org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package;
package org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References is
   type SelectRTSLayerVisitorFactory_Access is access all org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package.SelectRTSLayerVisitorFactory'Class;
   type SelectRTSLayerVisitorFactory_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactory_Access;
   type SelectRTSLayerVisitorFactory_Access_Array_Access is access all SelectRTSLayerVisitorFactory_Access_Array;
   type SelectRTSLayerVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of SelectRTSLayerVisitorFactory_Access_Array_Access;
   type SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access is access all SelectRTSLayerVisitorFactory_Access_Array_Access_Array;
   type SelectRTSLayerVisitorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectRTSLayerVisitorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectRTSLayerVisitorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectRTSLayerVisitorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectRTSLayerVisitorFactory_Access_Array_Access is (if Value /= null and then Value.all in SelectRTSLayerVisitorFactory_Access_Array_Object'Class then SelectRTSLayerVisitorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Object'Class then SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References;

with org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

package org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
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


   subtype SelectRTSLayerVisitorFactory_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.SelectRTSLayerVisitorFactory_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactory_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References."=";
   subtype SelectRTSLayerVisitorFactory_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.SelectRTSLayerVisitorFactory_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactory_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References."=";
   subtype SelectRTSLayerVisitorFactory_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.SelectRTSLayerVisitorFactory_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References."=";
   function Java_Box (Value : SelectRTSLayerVisitorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.Java_Box;
   function Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array (Value : access Java_Object'Class) return SelectRTSLayerVisitorFactory_Access_Array_Access renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array;
   subtype SelectRTSLayerVisitorFactory_Access_Array_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.SelectRTSLayerVisitorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References."=";
   subtype SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References."=";
   function Java_Box (Value : SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.Java_Box;
   function Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectRTSLayerVisitorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package_References.Java_Unbox_SelectRTSLayerVisitorFactory_Access_Array_Access_Array;

   type SelectRTSLayerVisitorFactory is new Java_Object and SelectRTSLayerVisitorFactoryInterface with null record;
   instance : SelectRTSLayerVisitorFactory_Access;

   procedure Initialize (This : in out SelectRTSLayerVisitorFactory'Class);
   function Create return SelectRTSLayerVisitorFactory_Access;
   function getInstance return SelectRTSLayerVisitorFactory_Access;
   function create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return Visitor_Access;
   procedure create (This : in out SelectRTSLayerVisitorFactory; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);

end org.allbinary.game.input.SelectRTSLayerVisitorFactory_Package;


