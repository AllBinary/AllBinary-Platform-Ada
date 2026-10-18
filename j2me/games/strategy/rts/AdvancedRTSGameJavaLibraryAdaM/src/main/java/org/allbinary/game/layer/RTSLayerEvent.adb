-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;

package body org.allbinary.game.layer.RTSLayerEvent_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out RTSLayerEvent'Class) is
   begin
      null;
      This.rtsLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerEvent'Class; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      rtsLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (rtsLayer_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, rtsLayer);
        Initialize_Fields (This);
   end Initialize;

   function Create (rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) return RTSLayerEvent_Access is
      This : constant RTSLayerEvent_Access := new RTSLayerEvent;
   begin
      RTSLayerEvent_Package.Initialize (This.all, rtsLayer_Param);
      return This;
   end Create;

   function toString (This : in out RTSLayerEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("RTSLayerEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("RTSLayer: "));
        stringBuffer.append (RTSLayerEvent'Class (This).getRtsLayer.toString);
        return stringBuffer.toString;
   end toString;

   function getRtsLayer (This : in out RTSLayerEvent) return PathFindingLayerInterface_Access is
   begin
        return This.rtsLayer;
   end getRtsLayer;

   procedure setRtsLayer (This : in out RTSLayerEvent; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      rtsLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (rtsLayer_Param);
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

end org.allbinary.game.layer.RTSLayerEvent_Package;


