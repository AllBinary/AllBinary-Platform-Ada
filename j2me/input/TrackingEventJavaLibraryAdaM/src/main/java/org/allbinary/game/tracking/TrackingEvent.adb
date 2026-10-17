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


   procedure Initialize (This : in out TrackingEvent'Class; allBinaryLayerInterface : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, allBinaryLayerInterface);
        Initialize_Fields (This);
        if (allBinaryLayerInterface) /= (TrackingEventHandler_Package.getInstance) then
            This.setLayerInterface (AllBinaryLayer_Access (allBinaryLayerInterface));
        end if;
   end Initialize;

   function Create (allBinaryLayerInterface : Java_Object_Access) return TrackingEvent_Access is
      This : constant TrackingEvent_Access := new TrackingEvent;
   begin
      Initialize (This.all, allBinaryLayerInterface);
      return This;
   end Create;

   procedure init (This : in out TrackingEvent; anyType : Java_Object_Access) is
   begin
        This.setSource (anyType);
   end init;

   function getLayerInterface (This : in out TrackingEvent) return AllBinaryLayer_Access is
   begin
        return This.layerInterface;
   end getLayerInterface;

   procedure setLayerInterface (This : in out TrackingEvent; layerInterface : AllBinaryLayer_Access) is
   begin
        This.layerInterface := layerInterface;
   end setLayerInterface;

   procedure setLayerInterfaceForCircularStaticPool (This : in out TrackingEvent; layerInterface : AllBinaryLayer_Access) is
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

   procedure getLayerInterface (This : in out TrackingEvent) is
      Java_Result : constant AllBinaryLayer_Access := TrackingEvent'Class (This).getLayerInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

   procedure toString (This : in out TrackingEvent) is
      Java_Result : constant Unbounded_String := TrackingEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.tracking.TrackingEvent_Package;


