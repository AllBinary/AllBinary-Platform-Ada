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


package body org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package is

   procedure Initialize_Fields (This : in out SelectAdvancedRTSLayerVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SelectAdvancedRTSLayerVisitor'Class; selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.selectedRTSLayersPlayerGameInput := selectedRTSLayersPlayerGameInput;
   end Initialize;

   function Create (selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access) return SelectAdvancedRTSLayerVisitor_Access is
      This : constant SelectAdvancedRTSLayerVisitor_Access := new SelectAdvancedRTSLayerVisitor;
   begin
      Initialize (This.all, selectedRTSLayersPlayerGameInput);
      return This;
   end Create;

   function visit (This : in out SelectAdvancedRTSLayerVisitor; anyType : Java_Object_Access) return Java_Object_Access is
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

   procedure visit (This : in out SelectAdvancedRTSLayerVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := SelectAdvancedRTSLayerVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.game.input.SelectAdvancedRTSLayerVisitor_Package;


