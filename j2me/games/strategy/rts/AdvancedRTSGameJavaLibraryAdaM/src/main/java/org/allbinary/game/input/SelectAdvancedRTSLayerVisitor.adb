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


with org.allbinary.game.input.form.AssignWaypointsUtil_Package; use org.allbinary.game.input.form.AssignWaypointsUtil_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package is

   package AssignWaypointsUtil_Package renames Standard.org.allbinary.game.input.form.AssignWaypointsUtil_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package BuildingLayer_Package renames Standard.org.allbinary.game.layer.building.BuildingLayer_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out SelectAdvancedRTSLayerVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) is
      selectedRTSLayersPlayerGameInput : constant SelectedRTSLayersPlayerGameInput_Access := SelectedRTSLayersPlayerGameInput_Access (selectedRTSLayersPlayerGameInput_Param);
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.selectedRTSLayersPlayerGameInput := selectedRTSLayersPlayerGameInput;
   end Initialize;

   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectAdvancedRTSLayerVisitor_Access is
      This : constant SelectAdvancedRTSLayerVisitor_Access := new SelectAdvancedRTSLayerVisitor;
   begin
      SelectAdvancedRTSLayerVisitor_Package.Initialize (This.all, selectedRTSLayersPlayerGameInput_Param);
      return This;
   end Create;

   function visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      selectedLayer : CollidableDestroyableDamageableLayer_Access;
      rtsGameLayer : AdvancedRTSGameLayer_Access;
      assignWaypointsUtil : AssignWaypointsUtil_Access;
      list : BasicArrayList_Access;
      currentRTSLayer : RTSLayer_Access;
      unitLayer : UnitLayer_Access;
      index : Integer;
   begin
        selectedLayer := CollidableDestroyableDamageableLayer_Access (anyType);
        if ((selectedLayer) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance)) and then ((selectedLayer.getType) = (BuildingLayer_Package.getStaticType)) then
            rtsGameLayer := AdvancedRTSGameLayer_Access (selectedLayer);
            assignWaypointsUtil := AssignWaypointsUtil_Package.getInstance;
            list := This.selectedRTSLayersPlayerGameInput.getSelectedBasicArrayList;
            currentRTSLayer := null;
            unitLayer := null;
            for index in reverse 0 .. (list.size) - (1) loop
                currentRTSLayer := RTSLayer_Access (list.get (index));
                if (currentRTSLayer.getType) = (UnitLayer_Package.getStaticType) then
                    unitLayer := UnitLayer_Access (currentRTSLayer);
                    unitLayer.setParentLayer (rtsGameLayer);
                    assignWaypointsUtil.set (unitLayer, rtsGameLayer);
                end if;
            end loop;
        end if;
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end visit;

   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := SelectAdvancedRTSLayerVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return SelectAdvancedRTSLayerVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := SelectAdvancedRTSLayerVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;


