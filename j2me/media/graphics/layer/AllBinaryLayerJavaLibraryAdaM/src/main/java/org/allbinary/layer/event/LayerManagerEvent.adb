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


package body org.allbinary.layer.event.LayerManagerEvent_Package is

   procedure Initialize_Fields (This : in out LayerManagerEvent'Class) is
   begin
      null;
      This.layerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerManagerEvent'Class; layerManager : LayerManager_Access; crud : Unbounded_String) is
   begin
        AllBinaryEventObject_Package.Initialize (This, layerManager);
        Initialize_Fields (This);
        This.crud := crud;
   end Initialize;

   function Create (layerManager : LayerManager_Access; crud : Unbounded_String) return LayerManagerEvent_Access is
      This : constant LayerManagerEvent_Access := new LayerManagerEvent;
   begin
      LayerManagerEvent_Package.Initialize (This.all, layerManager, crud);
      return This;
   end Create;

   function getLayerInterface (This : in out LayerManagerEvent) return AllBinaryLayer_Access is
   begin
        return This.layerInterface;
   end getLayerInterface;

   procedure setLayerInterface (This : in out LayerManagerEvent; layerInterface : AllBinaryLayer_Access) is
   begin
        This.layerInterface := layerInterface;
   end setLayerInterface;

   function toString (This : in out LayerManagerEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("LayerManagerEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("LayerInterface: "));
        stringBuffer.append (This.getLayerInterface.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "CRUD: "));
        stringBuffer.append (This.crud);
        return stringBuffer.toString;
   end toString;

end org.allbinary.layer.event.LayerManagerEvent_Package;


