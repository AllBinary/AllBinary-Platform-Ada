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


with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out NullDropCellPositionGenerator'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullDropCellPositionGenerator'Class) is
   begin
      BaseDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullDropCellPositionGenerator_Access is
      This : constant NullDropCellPositionGenerator_Access := new NullDropCellPositionGenerator;
   begin
      NullDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullDropCellPositionGenerator_Access is
   begin
        return NullDropCellPositionGenerator_Access (NullDropCellPositionGenerator_Package.instance);
   end getInstance;

begin
   null;
   instance := NullDropCellPositionGenerator_Package.Create;

end org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package;


