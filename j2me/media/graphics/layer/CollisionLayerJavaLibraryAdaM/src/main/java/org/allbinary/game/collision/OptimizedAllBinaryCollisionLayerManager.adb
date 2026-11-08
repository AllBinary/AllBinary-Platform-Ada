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


with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManagerNoDebug_Package; use org.allbinary.layer.LayerManagerNoDebug_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerManager_Package is

   package LayerManagerNoDebug_Package renames Standard.org.allbinary.layer.LayerManagerNoDebug_Package;
   procedure Initialize_Fields (This : in out OptimizedAllBinaryCollisionLayerManager'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OptimizedAllBinaryCollisionLayerManager'Class) is
   begin
        LayerManager_Package.Initialize (This, LayerManagerNoDebug_Package.getInstance);
   end Initialize;

   function Create return OptimizedAllBinaryCollisionLayerManager_Access is
      This : constant OptimizedAllBinaryCollisionLayerManager_Access := new OptimizedAllBinaryCollisionLayerManager;
   begin
      OptimizedAllBinaryCollisionLayerManager_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerManager_Package;


