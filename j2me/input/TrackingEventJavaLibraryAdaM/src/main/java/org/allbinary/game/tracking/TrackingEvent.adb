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


package body org.allbinary.game.tracking.TrackingEvent_Package is

   procedure Initialize_Fields (This : in out TrackingEvent'Class) is
   begin
      null;
      This.layerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out TrackingEvent'Class; allBinaryLayerInterface_Param : access Java_Object'Class) is
      allBinaryLayerInterface : constant Java_Object_Access := Java_Object_Access (allBinaryLayerInterface_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, allBinaryLayerInterface);
        Initialize_Fields (This);
        if (allBinaryLayerInterface) /= (TrackingEventHandler_Package.getInstance) then
            This.setLayerInterface (AllBinaryLayer_Access (allBinaryLayerInterface));
        end if;
   end Initialize;

   function Create (allBinaryLayerInterface_Param : access Java_Object'Class) return TrackingEvent_Access is
      This : constant TrackingEvent_Access := new TrackingEvent;
   begin
      TrackingEvent_Package.Initialize (This.all, allBinaryLayerInterface_Param);
      return This;
   end Create;

   procedure init (This : in out TrackingEvent; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.setSource (anyType);
   end init;

   function getLayerInterface (This : in out TrackingEvent) return AllBinaryLayer_Access is
   begin
        return This.layerInterface;
   end getLayerInterface;

   procedure setLayerInterface (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerInterface := layerInterface;
   end setLayerInterface;

   procedure setLayerInterfaceForCircularStaticPool (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerInterface := layerInterface;
   end setLayerInterfaceForCircularStaticPool;

   function toString (This : in out TrackingEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("TrackingEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("LayerInterface: "));
        stringBuffer.append (This.layerInterface.toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.game.tracking.TrackingEvent_Package;


