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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.SourceCollisionHelper_Package; use org.allbinary.game.collision.SourceCollisionHelper_Package;
with org.allbinary.game.collision.CollisionHelper_Package; use org.allbinary.game.collision.CollisionHelper_Package;
with org.allbinary.game.collision.CollisionHelper_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.collision.CollidableHelperFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   subtype CollisionHelper_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access;
   function "=" (Left, Right : CollisionHelper_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array;
   function "=" (Left, Right : CollisionHelper_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableHelperFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableHelperFactory_Access is
      This : constant CollidableHelperFactory_Access := new CollidableHelperFactory;
   begin
      CollidableHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollisionHelper_Access is
   begin
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.COLLISIONS_WITH_SOURCE) then
            return CollisionHelper_Package.Create (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER);
        else
            return CollisionHelper_Access (SourceCollisionHelper_Package.Create (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER));
        end if;
   end getInstance;

end org.allbinary.game.collision.CollidableHelperFactory_Package;


