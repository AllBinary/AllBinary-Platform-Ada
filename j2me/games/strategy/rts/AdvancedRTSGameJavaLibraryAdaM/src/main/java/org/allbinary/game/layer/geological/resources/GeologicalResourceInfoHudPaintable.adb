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


package body org.allbinary.game.layer.geological.resources_Case.GeologicalResourceInfoHudPaintable_Package is

   procedure Initialize_Fields (This : in out GeologicalResourceInfoHudPaintable'Class) is
   begin
      null;
      
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out GeologicalResourceInfoHudPaintable'Class) is
   begin
      WaypointInfoHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.keyvalueDrawString := KeyValueDrawCharArray_Package.Create (GeologicalResourceInfoHudPaintable_Package.RESOURCES, This.textX);
   end Initialize;

   function Create return GeologicalResourceInfoHudPaintable_Access is
      This : constant GeologicalResourceInfoHudPaintable_Access := new GeologicalResourceInfoHudPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out GeologicalResourceInfoHudPaintable; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        WaypointInfoHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.fontHeight := ((2) * (font.getHeight));
   end updateMeasurement;

   procedure updateSelectionInfo (This : in out GeologicalResourceInfoHudPaintable) is
      rtsLayer : RTSLayer_Access;
      list : BasicArrayList_Access;
      total : Integer;
      geographicMapCellPosition : GeologicalGeographicMapCellPosition_Access;
      index : Integer;
   begin
        WaypointInfoHudPaintable (This).updateSelectionInfo;
        rtsLayer := RTSLayer_Access (This.rtsLayerP);
        list := rtsLayer.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        total := 0;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapCellPosition := GeologicalGeographicMapCellPosition_Access (list.get (index));
            total := (total) + (geographicMapCellPosition.getGeologicalResource.getTotal);
        end loop;
        This.keyvalueDrawString.update (This.getPrimitiveLongUtil.getCharArray (total), This.getPrimitiveLongUtil.getCurrentTotalDigits);
   end updateSelectionInfo;

   procedure paint (This : in out GeologicalResourceInfoHudPaintable; graphics : Graphics_Access) is
   begin
        WaypointInfoHudPaintable (This).paint (graphics);
        This.keyvalueDrawString.paint (graphics, ((This.y) + (This.fontHeight)));
   end paint;

begin
   null;
   RESOURCES := To_Unbounded_String ("Resources: ");

end org.allbinary.game.layer.geological.resources_Case.GeologicalResourceInfoHudPaintable_Package;


